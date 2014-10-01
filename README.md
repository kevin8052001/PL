PL
==

Program L
#!/Perl64/bin/perl
#重新計算P&C的比率

use Encode;

%total = () ;
%re_data = () ;
open (FF,"total2.txt");

while ($temp=<FF>) {
  $temp =~/(.*?)-------(.*)/ ;
  if ( exists $total{$1} ) {
    #print "zzzzzzzzzzzzzz" ;
  }
  else {
    $total{$1} = $2 ;
  }
}
close FF;

while(glob "TC/*.txt"){
			
  open (FP,$_);
  $_=~/TC\/(.*?)\.txt/g;

  open (REFP,">>RE_$1.txt") ;
  
  while($temp=<FP>){
    my $Re_wight ; 
    chomp $temp ;
	$temp =~/=======>(.*?)=========(.*)/ ;
	#print $1,"        ",$2,"\n" ;	
	if( exists $total{$1} ) {
	  $Re_wight = $2 / $total{$1} ;
	  #print REFP "=======>".$1."=========".$Re_wight."\n" ; 
	  $re_data{$1} = $Re_wight ;
	}
  }
  
  foreach $keys ( sort {$re_data{$b} <=> $re_data{$a} }  keys %re_data ) {
    print REFP "=======>".$keys."=========".$re_data{$keys}."\n" ;
	 
  }   
  
  close REFP ;	
  close FP;		
} 


