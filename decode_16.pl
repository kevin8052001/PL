#!c:\perl\bin\perl.exe

use strict ;
use LWP::UserAgent;
use CGI qw(header -no_debug);
use Encode ;
use Encode::Guess ;


print "Content-type: text/html\n\n";
print "<pre>*** Please define header of file *.pl or *.cgi with<b>
&nbsp;&nbsp;&nbsp; #!c:\\perl\\bin\\perl.exe</b>\n\n\n";
print "<html><body>\n" ;

my %Input = read_query() ;
my $query = $Input{"vehicle"} ;

print $query ;

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
  print $buffer ;
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
