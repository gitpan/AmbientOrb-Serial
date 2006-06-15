#!perl

use Test::More qw(no_plan);

BEGIN {
	use_ok( 'AmbientOrb::Serial' );
}

my $orb = AmbientOrb::Serial->new({ port_name => COM1 } );
ok( $orb->connect() == 1 );


#uncomment out the cut below to run an integration test on the orb
=begin cut
print "turning orb green...\n";
ok( $orb->color( ORB_GREEN ) == 1 );
sleep 3;
print "turning orb violet...\n";
ok( $orb->color( ORB_VIOLET ) == 1 );
sleep 3;
print "turning orb magenta...\n";
ok( $orb->color( ORB_MAGENTA ) == 1 );
sleep 3;
print "turning orb yellow...\n";
ok( $orb->color( ORB_YELLOW ) == 1 );
sleep 3;
print "turning orb aqua...\n";
ok( $orb->color( ORB_AQUA ) == 1 );
sleep 3;
print "turning orb white...\n";
ok( $orb->color( ORB_WHITE ) == 1 );

print "pulsing RED very fast\n" ;
print( $orb->pulse( ORB_RED, ORB_VERY_FAST ) );
sleep 10;
=end
