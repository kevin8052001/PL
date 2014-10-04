#!c:\perl\bin\perl.exe

use strict ;
use LWP::UserAgent;
use CGI qw(header -no_debug);
use Encode ;
use Encode::Guess ;

my %Input = read_query() ;
my $query = $Input{"name"} ;
my %ans ;
######################################google##########################################################
my @google_control ;
my @googl_h3 ;
my @google_www;
my @google_scrip ;
my @google_title ;
my $ua = LWP::UserAgent->new;
$ua -> agent("MyApp/0.1 ");
my $req = HTTP::Request->new(GET => 'http://www.google.com.tw/search?q=' . $query . '&ie=utf-8&oe=utf-8');
# Pass request to the user agent and get a response back
my $res = $ua->request($req);

@googl_h3 = $res->content =~ /<h3.{0,100}>.{0,15000}<\/ol>/gm ;
my $googlestring = join ('', @googl_h3 ) ;
$googlestring =~ s/<div class\=\"osl\">.{0,1000}<\/div>/123/gm ;
$googlestring =~ s/<h3 class\=\"r\"><a href\=\"/<h3 class\=\"r\"><a href\=\"https\:\/\/www\.google\.com\.tw/gm ;
#$googlestring =~ s/<table class\=\"ts\">.*?<\/table>/123/gm ;

#$googlestring =~ s/<span class\=\"flc\">.{0,600}<\/span>/123/gm ; #還要再補上 google還有下標籤tbox跟一些管告 新聞 地圖
#$googlestring =~ s/<table class\=\"nrgt\".{0,4500}<\/tbody>/123/gm ; #下標題
#$googlestring =~ s/<li class\=\"g\" id\=\"newsbox\">.{0,2500}<\/li>/123/gm #新聞
#$googlestring =~ s/<li class\=\"g\" id\=\"imagebox\_bigimages\">.{0,3500}<\/li>/123/gm #圖片
#$googlestring =~ s/<li class\=\"g\" style\=\"margin\-bottom\:14px\">.{0,1500}<\/li>/123/gm #地圖



@google_www = $googlestring =~ /<h3 class\=\"r\">.{0,500}<\/h3>/gm ;
@google_scrip = $googlestring =~ /<span class\=\"st\">.{0,300}<\/span>/gm ;
$googlestring =~ s/<div class\=\"kv\".{0,50}>.{0,1000}<\/div>/123/gm ;
$googlestring =~ s/<b>//gm ;
$googlestring =~ s/<\/b>//gm ;
$googlestring =~ s/<wbr>//gm ;
$googlestring =~ s/<\/wbr>//gm ;
@google_title = $googlestring  =~ /<a.{0,200}>(.{0,100})<\/a>/g ;

for( my $i = 0 ; $i <= $#google_title ; $i++ ){
  if ( !exists $ans{$google_title[$i]} ){
    $ans{$google_title[$i]}[0] = 1 ;
	$ans{$google_title[$i]}[1] = $google_scrip[$i] ;
	$ans{$google_title[$i]}[2] = $google_www[$i] ;
  }
  
  else {
    $ans{$google_title[$i]}[0] = $ans{$google_title[$i]}[0] + 1 ;
  }
}

#######################################################################################################

######################################yahoo############################################################
my @yahoo_h3 ;
my @yahoo_www ;
my @yahoo_abstr ;
my @yahoo_title;
my @yahoo_scrip ;
my @yahoo_control ;
my $tempyahoo ;

my $ub = LWP::UserAgent->new;
$ub -> agent("MyApp/0.1 ");
my $req_yahoo = HTTP::Request->new(GET => 'http://tw.search.yahoo.com/search?p=' . $query . '&fr=yfp&ei=utf-8&v=0');
my $res_yahoo = $ub->request($req_yahoo);



@yahoo_h3 = $res_yahoo->content =~ /<h3.{0,100}>.{0,15000}<\/ol>/gm ;
my $yahoostring = join ('', @yahoo_h3 ) ;
$yahoostring =~ s/<div class\=\"res sc-mprod\".{0,150}>.{0,5000}<\/ul>/123/gm ;
$yahoostring =~ s/<div class\=\"res sc sc-news\".{0,150}>.{0,3000}<\/ul>/123/gm ;
$yahoostring =~ s/<div class\=\"res sc sc-blog\".{0,150}>.{0,3000}<\/ul>/123/gm ;

@yahoo_www = $yahoostring =~ /<h3>.{0,500}<\/h3>/g ;
@yahoo_abstr = $yahoostring =~ /<div class\=\"abstr\".{0,400}<\/div>|<div class\=\"sm-abs".{0,700}<\/div>/gm ;
$yahoostring =~ s/<b>//gm ;
$yahoostring =~ s/<\/b>//gm ;
$yahoostring =~ s/<wbr>//gm ;
$yahoostring =~ s/<\/wbr>//gm ;
$yahoostring =~ s/<div class\=\"sm-links\".{0,150}>.{0,1000}<\/ul>/123/gm ;
$yahoostring =~ s/更多此站結果<\/a>/123/gm ;
$yahoostring =~ s/庫存頁面<\/a>/123/gm ;
@yahoo_title = $yahoostring  =~ /<a.{0,700}>(.{0,100})<\/a>/g ;


for( my $i = 0 ; $i <= $#yahoo_title ; $i++ ){
  if ( !exists $ans{$yahoo_title[$i]} ){
    $ans{$yahoo_title[$i]}[0] = 1 ;
	$ans{$yahoo_title[$i]}[1] = $yahoo_abstr[$i] ;
	$ans{$google_title[$i]}[2] = $yahoo_www[$i] ;
  }
  
  else {
    $ans{$yahoo_title[$i]}[0] = $ans{$yahoo_title[$i]}[0] + 1 ;
  }
}
#######################################################################################################





######################################sogou############################################################

my @sogou_control ;
my @sogou ;
my @sogou_www;
my @sogou_scrip ;
my @sogou_title ;
my $uc = LWP::UserAgent->new;
$uc -> agent("MyApp/0.1 ");
my $req_sogou = HTTP::Request->new(GET => 'http://www.soso.com/q?pid=s.idx&cid=s.idx.se&w=' . $query );
my $res_sogou = $uc->request($req_sogou);


@sogou = $res_sogou->content =~ /<h3.{0,100}>.{0,15000}<\/ol>/gm ;

my $sogoustring = join ('', @sogou ) ;
Encode::from_to($sogoustring,'GBK','UTF-8');

$sogoustring =~ s/<div class\=\"links\">.{0,800}<\/ul>/123/gm ;
$sogoustring =~ s/<div class="rsrA box_newsBox".{0,3000}<\/li>/123/gm ; ##3000可能會太少
$sogoustring =~ s/<div class="result_summary">.{0,1000}<\/div>/123/gm ; ##

@sogou_www = $sogoustring =~ /<h3>.{0,500}<\/h3>/g ;
@sogou_scrip = $sogoustring =~ /<p class\=\"intro\".{0,400}<\/p>|<p class\=\"ds".{0,400}<\/p>/g ;

$sogoustring =~ s/<em>//gm ;
$sogoustring =~ s/<\/em>//gm ;
@sogou_title = $sogoustring  =~ /<a.{0,400}>(.{0,100})<\/a>/g ;

for( my $i = 0 ; $i <= $#sogou_title ; $i++ ){
  if ( !exists $ans{$sogou_title[$i]} ){
    $ans{$sogou_title[$i]}[0] = 1 ;
	$ans{$sogou_title[$i]}[1] = $sogou_scrip[$i] ;
	$ans{$sogou_title[$i]}[2] = $sogou_www[$i] ;	
  }
  
  else {
    $ans{$sogou_title[$i]}[0] = $ans{$sogou_title[$i]}[0] + 1 ;
  }
}
#######################################################################################################

print "Content-type: text/html\n\n";
print "<pre>*** Please define header of file *.pl or *.cgi with<b>
&nbsp;&nbsp;&nbsp; #!c:\\perl\\bin\\perl.exe</b>\n\n\n";
#print "<html><body background="."Tulips.gif".">" ;
print "<html><head><title>Result!</title></head><body background=\"http://localhost/Tulips.gif\">\n" ;
print "<p align = \"center\"><font size=\"7\">Result!</font></p>" ;
#print $googlestring ;
=head

for ( my $i = 0 ; $i <= $#google_title ; $i++ ) {
  for ( my $j = 0 ; $j <= $#yahoo_title ; $j++ ) {
  
    if( $google_title[$i] eq $yahoo_title[$j] ) {
      $yahoo_control[$j] = 1 
	}
  } 
} 


for ( my $i = 0 ; $i <= $#sogou_title ; $i++ ) {

  for ( my $j = 0 ; $j <= $#yahoo_title ; $j++ ) {
  
    if( $sogou_title[$i] eq $yahoo_title[$j] ) {
      $sogou_control[$i] = 1 ;
	}
  } 
} 



for ( my $i = 0 ; $i <= $#sogou_title ; $i++ ) {

  for ( my $j = 0 ; $j <= $#google_title ; $j++ ) {
  
    if( $sogou_title[$i] eq $google_title[$j] ) {
      $sogou_control[$i] = 1 ;
	}
  } 
} 







for ( my $i = 0 ; $i <= $#sogou_title ; $i++ ) {
  if ( $sogou_control[$i] != 1 ) {
    print $sogou_title[$i] ;
    print $sogou_www[$i] ;
    print $sogou_scrip[$i] ;
    print "\n\n" ;
  } 
} 
print "\n\n" ;


for ( my $i = 0 ; $i <= $#google_title ; $i++ ) {
  if ( $google_control[$i] != 1 ) {
    print $google_title[$i] ;
    print $google_www[$i] ;
    print $google_scrip[$i] ;
    print "\n\n" ;
  } 
} 

print "\n\n" ;

for ( my $i = 0 ; $i <= $#yahoo_title ; $i++ ) {
  if ( $yahoo_control[$i] != 1 ) {
    print $yahoo_title[$i] ;
    print $yahoo_www[$i] ;
    print $yahoo_abstr[$i] ;
    print "\n\n" ;
  } 
} 
=cut

my @url ;
my @abs ;
my @freq ;

my $count = 0 ; 
foreach my $t1 ( keys %ans ) {
  $url[$count] = $ans{$t1}[2] ;
  $abs[$count] = $ans{$t1}[1] ;
  $freq[$count] = $ans{$t1}[0] ;
  $count++ ;
}



for( my $i = 0 ; $i < $count; $i++) {
  for( my $j = $i ; $j < $count; $j++) {
    if( $freq[$j] > $freq[$i] ) {
      my $temp = $url[$j];
	  my $temp2 = $abs[$j];
	  my $temp3 = $freq[$j];
	  
	  $abs[$j] = $abs[$i];
	  $url[$j] = $url[$i];
	  $freq[$j] = $freq[$i];
	  
	  $freq[$i] = $temp3 ;
	  $abs[$i] = $temp2 ;
	  $url[$i] = $temp ;
    }
  }
}

for( my $i = 0 ; $i < $count; $i++ ) {
    print $url[$i] ;
    print $abs[$i] ;
    print "\n\n" ;
}



print "</body>\n";
print "</html>\n";
####################################################################
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

  print "Input string: $buffer<br>\n";
  
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

######################################################################################
