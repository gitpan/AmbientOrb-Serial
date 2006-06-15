#!perl

use Test::More qw(no_plan);

BEGIN {
	use_ok( 'AmbientOrb::Serial' );
}

my $orb = AmbientOrb::Serial->new({ port_name => "COM1" } );

#red
cmp_ok( $orb->color_to_ascii( ORB_RED ), "eq", "~A  " );

#blue
cmp_ok( $orb->color_to_ascii(ORB_BLUE) , "eq", "~A 8" );

#slow pulsing red
cmp_ok( $orb->color_to_ascii(ORB_RED, ORB_SLOW), "eq", "~A j");

#green
cmp_ok( $orb->color_to_ascii(ORB_GREEN ), "eq", "~A ,");

#yellow
cmp_ok( $orb->color_to_ascii(ORB_YELLOW ), "eq", "~A &");

#pulsing slow yellow
cmp_ok( $orb->color_to_ascii(ORB_YELLOW, ORB_SLOW ), "eq", "~A p");

#very fast yellow
cmp_ok( $orb->color_to_ascii(ORB_YELLOW, ORB_VERY_FAST ), "eq", qq^~A\"m^);

#pulse fast red
cmp_ok( $orb->color_to_ascii( ORB_RED, ORB_FAST ), "eq", "~A\"B" );
