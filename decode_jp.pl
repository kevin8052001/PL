#!c:\perl\bin\perl.exe

print "Content-type: text/html\n\n";
print "<pre>*** Please define header of file *.pl or *.cgi with<b>
&nbsp;&nbsp;&nbsp; #!c:\\perl\\bin\\perl.exe</b>\n\n\n";
print "<html><body>\n" ;

use LWP::UserAgent;
use Encode ;
use Encode::Guess ;
use DBI;
use Encode ;
use Encode::Guess ;


$username = 'xxxxx';
$password = 'xxxxxxxxxxxxxxx';
$database = 'Xxxxxxxxxxxxxxx';
$hostname = 'xxxxxx';
$port= 'xxxx';
$dbh = DBI->connect( "dbi:mysql:database=$database;"."host=$hostname;port=$port",$username, $password )|| die print"Could not connect to database: $DBI::errstr";
$dbh->{'mysql_enable_utf8'} = 1;
$dbh->do('SET NAMES utf8');

$dbh->do('SET NAMES utf8');
open(FHD, "C:\\AppServ\\www\\cgi-bin\\temp.txt" ) || die "$!\n" ;

my @all ;
@all = <FHD> ;
close (FHD);

my $temp = join ('', @all ) ;
@data=split(/&&/,$temp) ;

#for( my $i = 1 ; $i <= $#data+1 ; $i = $i + 24 ) {
  #my $SQL= "insert into `article`(`id`,`author`,`article_id`, `year`, `month`, `day`, `title`, `content_j`, `content_jr`, `context_jt`, `context_jrt`, `content_c`, `school`, `major`, `student_year`, `learning_period`, `test`, `sentence`, `all_count`, `key_count`, `MLS`, `error_all`, `error_distinct`, `filename`) values ('$data[$i]', '$data[$i+1]', '$data[$i+2]', '$data[$i+3]', '$data[$i+4]', '$data[$i+5]', '$data[$i+6]', '$data[$i+7]', '$data[$i+8]', '$data[$i+9]', '$data[$i+10]', '$data[$i+11]', '$data[$i+12]', '$data[$i+13]', '$data[$i+14]', '$data[$i+15]', '$data[$i+16]', '$data[$i+17]', '$data[$i+18]', '$data[$i+19]', '$data[$i+20]', '$data[$i+21]', '$data[$i+22]', '$data[$i+23]')";
  #$dbh->do($SQL);
#}

for( my $i = 1 ; $i <= $#data ; $i = $i + 2 ) {
  my $SQL= "insert into `index_r`(`word`,`index`) values ('$data[$i]', '$data[$i+1]')";
  $dbh->do($SQL);
}
