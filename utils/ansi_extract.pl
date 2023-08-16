use strict ; use warnings ; use Encode ;

my ($color, $text_length) = (0, 0) ;

for my $chunk ( split /(\e(?:\[(?:[0-9;]*)m))/, $ARGV[0])
	{
	if($chunk =~ /\e(\[([0-9;]*)m)/)
		{
		$color = $2 ;
		}
	else
		{
		$text_length += length(decode('utf8', $chunk)) ;
		# print "<$chunk>\n" ;
		
		if($text_length > ($ARGV[1] // 0))
			{
			print "$color\n" ;
			exit
			}
		}
	}

print "$color\n"
