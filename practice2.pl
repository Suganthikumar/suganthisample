%sem1=();
%sem2=();
%sem3=();
for($i=0;$i<3;$i++)
{
 for($j=0;$j<2;$j++)
 {
    if($i==0)
	{
	 print "Suganthi";
	 
	 print"enter subject name\t";
	 $subject=<>;
	 print"enter your mark \t";
	 $mark=<>;
	 $sem1{$subject}=$mark;
	}
	if($i==1)
	{
	 print"enter subject name\t";
	 $subject=<>;
	 print"enter your mark \t";
	 $mark=<>;
	 $sem2{$subject}=$mark;
	}
	if($i==2)
	{
	 print"enter subject name\t";
	 $subject=<>;
	 print"enter your mark \t";
	 $mark=<>;
	 $sem3{$subject}=$mark;
	}
	 
 }
}

$highmark1=0;
$highmark2=0;
$highmark3=0;
foreach $a (keys%sem1)
{ 
 if($sem1{$a}>$highmark1)
 {
    $highmark1=$sem1{$a};
	$key1=$a;
 }
}


foreach $b (keys%sem2)
{
 if($sem2{$b}>$highmark2)
 {
    $highmark2=$sem2{$b};
	$key2=$b;
 }
}


foreach $c (keys%sem3)
{
 if($sem3{$c}>$highmark3)
 {
    $highmark3=$sem3{$c};
	$key3=$c;
 }
}
%overall=();
$overall{$key1}=$highmark1;
$overall{$key2}=$highmark2;
$overall{$key3}=$highmark3;

print "1sem:$highmark1\n";
print "2sem:$highmark2\n";
print "3sem :$highmark3\n";
$overallhighmark=0;
foreach $c (keys%overall)
{
 if($overall{$c}>$overallhighmark)
 {
    $overallhighmark=$overall{$c};
	$key=$c;
 }
}
print"highest mark over the three semester subject:$key mark:$overallhighmark"; 
