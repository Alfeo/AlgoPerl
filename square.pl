system("clear");

printf("Hauteur : ");
my $hauteur = <>;
chomp($hauteur);

printf("Largeur : ");
my $largeur = <>;
chomp($largeur);

my $i =0;

if($largeur >= 3)
{
	printf("o"."-"x($largeur-2) ."o\n");
	while($i < $hauteur-2 )
	{
		printf("|"." "x($largeur-2)."|\n");
		$i++;
	}
	printf("o"."-"x($largeur-2) ."o\n");
}

else
{
	printf('Test failed');
}
