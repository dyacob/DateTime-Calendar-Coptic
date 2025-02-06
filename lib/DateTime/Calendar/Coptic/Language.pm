package DateTime::Calendar::Coptic::Language;
use base ( "DateTime::Language" );

BEGIN
{
use strict;
use warnings;
use vars qw ( $VERSION );

	$VERSION = "0.04";


	foreach my $set ( [ 'ar', 'ara'                 => 'Arabic' ],
                  [ 'cop'                       => 'Coptic' ]
             )
	{
	    my $module = pop @$set;
	    @DateTime::Language::ISOMap{ @$set } = ($module) x @$set;
	}

	# print "Module: $DateTime::Language::ISOMap{cop}\n";
	# print DateTime::Language->iso_codes, "\n";

}


sub class_base
{
	"DateTime::Calendar::Coptic::Language";
}

1;
__END__
