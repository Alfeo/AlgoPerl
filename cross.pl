system("clear");

printf("Dimension ? : ");
my $dimension = <>;
chomp($dimension);

my $i = 0;
my $side = 0;
my $cross = 0;

if ($dimension >= 3 && $dimension%2 == 1)
{
	printf("o"." "x($dimension-2) ."o\n");
	while($i < $dimension-2)
	{
		if ($side == 0)
		{
			$cross++;
		
			if ($cross > (($dimension-2) / 2))
			{
				printf(" " x $cross . "o\n");
				$side = 1;
			}
			
			if ($side == 0)
			{
				printf(" " x $cross . "\\");
				printf(" " x ($dimension - (($cross * 2) + 2)) . "/\n");
			}
			$i++;
		}
		else
		{
			$cross--;
		
			printf(" " x $cross . "/");
			printf(" " x ($dimension - (($cross * 2) + 2)) . "\\\n");
			$i++;
		}
	}
	printf("o"." "x($dimension-2) ."o\n");
}
else
{
	printf("Test Failed");
}
