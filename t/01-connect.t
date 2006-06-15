#!perl

use Test::More qw(no_plan);

BEGIN {
	use_ok( 'AmbientOrb::Serial' );
}

my $orb = AmbientOrb::Serial->new( { port_name => COM1 } );
ok( "COM1" eq $orb->port_name );
ok( $orb->connect() == 1 );

#now try to connect to an invalid port and verify excep thrown
eval {
    print "trying to connect to non-existent port...\n";
    $orb = AmbientOrb::Serial->new( { port_name => BAD_PORT } );
    $orb->connect();
};

ok( $@ =~ "unable to connect to serial port BAD_PORT:" );
