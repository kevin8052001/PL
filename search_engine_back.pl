#!c:\perl\bin\perl.exe

print "Content-type: text/html\n\n";
print "<pre>*** Please define header of file *.pl or *.cgi with<b>
&nbsp;&nbsp;&nbsp; #!c:\\perl\\bin\\perl.exe</b>\n\n\n";
print "<html><body>\n" ;

use LWP::UserAgent;
use Encode ;
use Encode::Guess ;
use DBI;

my %Input = read_query() ;
my $query = $Input{"name"} ;
my @querydata ;
@querydata=split(/\+/,$query) ;

my @name ;
my @TFIDF ;
my %ans ;
my @freq ;
$username = 'root';
$password = 'a0936989788';
$database = 'db';
$hostname = 'localhost';
$port= '3306';
$dbh = DBI->connect( "dbi:mysql:database=$database;"."host=$hostname;port=$port",$username, $password )|| die print"Could not connect to database: $DBI::errstr";

my $weight = $#querydata + 2 ;
for( my $i = 0 ; $i <= $#querydata ; $i++ ) {
  my $SQL= "select * from `table2` where vc = '$querydata[$i]'" ;
  my $Select = $dbh->prepare($SQL);
  $Select->execute()|| die print"Could not execute SQL statement ... maybe invalid? \n\n $SQL \n";
  while ( my @row=$Select->fetchrow_array){ 
    if ( !exists $ans{$row[1]} ) {
	  
	  $ans{$row[1]}[0] = $row[4] * $weight ;
	  $ans{$row[1]}[1] = 1 ; 
	}
	
	else {
	  $ans{$row[1]}[0] = $ans{$row[1]}[0] + ( $row[4] * $weight ) ;
      $ans{$row[1]}[1] = $ans{$row[1]}[1] + 1 ;	  
	}
  }
  $weight = $weight - 1 ;
}

my $count = 0 ;
foreach $t1 ( keys %ans ){
  $name[$count] = $t1 ;
  $TFIDF[$count] = $ans{$t1}[0] ;
  $freq[$count] = $ans{$t1}[1] ;
  $count++ ;
}

for( my $i = 0 ; $i < $count; $i++) {
  for( my $j = $i ; $j < $count; $j++) {
    if( $TFIDF[$j] > $TFIDF[$i] ) {
      my $temp = $name[$j];
	  my $temp2 = $TFIDF[$j];
	  my $temp3 = $freq[$j];
	  $TFIDF[$j] = $TFIDF[$i];
	  $name[$j] = $name[$i];
	  $freq[$j] = $freq[$i];
	  $freq[$i] = $temp3 ;
	  $TFIDF[$i] = $temp2 ;
	  $name[$i] = $temp ;
    }
  }
}

for( my $i = 0 ; $i < $count; $i++) {
  for( my $j = $i ; $j < $count; $j++) {
    if( $freq[$j] > $freq[$i] ) {
      my $temp = $name[$j];
	  my $temp2 = $TFIDF[$j];
	  my $temp3 = $freq[$j];
	  $TFIDF[$j] = $TFIDF[$i];
	  $name[$j] = $name[$i];
	  $freq[$j] = $freq[$i];
	  $freq[$i] = $temp3 ;
	  $TFIDF[$i] = $temp2 ;
	  $name[$i] = $temp ;
    }
  }
}

########################################################################


for ( my $i = 0 ; $i <= $count ; $i = $i + 1 ) {
  my $temp = "http://localhost/SEdata/data-("."$name[$i]".").html" ;
  print "<a href="."$temp".">"."$name[$i]"."</a>" ;
  print "\n\n" ;   
}


print "</body>\n";
print "</html>\n";
########################################################################
sub read_query(){
  
  my %Input=();
  my $buffer ;
  my $key ;
  my $value ;
  my @pairs ;
  my $chunk ;
  if ($ENV{'REQUEST_METHOD'} eq "POST"){
    read(STDIN,$buffer,$ENV{'CONTENT_LENGTH'});
  }
  
  elsif ($ENV{'REQUEST_METHOD'} eq "GET"){
    $buffer= $ENV{'QUERY_STRING'};
  }#end elsif

  
  @pairs=split(/&/,$buffer);
  
  foreach $chunk(@pairs){
    $chunk=~ tr/+//;
    ($key,$value)=split(/=/,$chunk);
    #$value =~ s/%([a-fA-F0-9][a-fA-F0-9])/pack("C",hex($1))/eg;
	$key =~ s/%([a-fA-F0-9][a-fA-F0-9])/pack("C",hex($1))/eg;
    $Input{$key}=$value;
  }#end foreach
  
  return (%Input) ;
}#end read_query()
