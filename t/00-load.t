#!perl

use Test::More tests => 1;

BEGIN {
	use_ok( 'AmbientOrb::Serial' );
}

diag( "Testing AmbientOrb::Serial $AmbientOrb::Serial::VERSION, Perl $], $^X" );
