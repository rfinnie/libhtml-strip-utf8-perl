use strict;
use warnings;

use Test::More tests => 2;
BEGIN { use_ok('HTML::Strip::UTF8') };

my $hs = HTML::Strip::UTF8->new();
ok($hs->parse("<strong>\N{U+2603}</strong>") eq "\N{U+2603}", 'Unicode snowman');
$hs->eof;
