system("clear");

printf("Dimension ? : ");
my $dimension = <>;
chomp($dimension);

my $i = 2;
my $space = 1;
my $cross = ($dimension - 1)/2;

if ($dimension%2 == 1 && $dimension >= 5)
{
	printf(" " x $cross . "o\n");
	printf(" " x ($cross - 1) . "/" . "|" . "\\\n");		
	
	while ($i < $cross)
	{	
		printf(" " x ($cross - $i) . "/" . " " x $space . "|");		
		printf(" " x $space . "\\" ."\n");		
		$space++;
		$i++;
	}
	
	printf("o" . "-" x $space . "o" ."-" x $space . "o\n");		
	my $i = 1;

	while ($i < $cross)
	{	
		printf(" " x ($i) . "\\" . " " x ($space - 1) . "|");		
		printf(" " x ($space - 1) . "/" ."\n");		
		$space--;
		$i++;
	}
	printf(" " x $cross . "o\n");
}

else
{
	printf("Test Failed !\n");
}
