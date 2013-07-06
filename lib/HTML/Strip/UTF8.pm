package HTML::Strip::UTF8;

use 5.012000;
use strict;
use warnings;
use parent 'HTML::Strip';
use utf8;
use Encode qw/encode_utf8 decode_utf8/;

our $VERSION = '0.01';

sub parse {
  my $self = shift;
  my $in = shift || '';

  my $octets = encode_utf8($in);
  utf8::downgrade($octets);
  my $out = $self->SUPER::parse($octets);
  return decode_utf8($out);
}

1;
__END__

=head1 NAME

HTML::Strip::UTF8 - UTF-8 safe HTML::Strip

=head1 SYNOPSIS

  use HTML::Strip::UTF8;

  my $hs = HTML::Strip::UTF8->new();

  my $clean_text = $hs->parse( $raw_html );
  $hs->eof;

=head1 DESCRIPTION

This module wraps HTML::Strip to make it safely handle native Perl
multibyte characters.  It does this by converting to UTF8, running
through HTML::Strip, then converting back to native format before being
returned.

=head1 SEE ALSO

HTML::Strip

=head1 AUTHOR

Ryan Finnie, E<lt>ryan@finnie.orgE<gt>

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2013 by Ryan Finnie

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself, either Perl version 5.12.0 or,
at your option, any later version of Perl 5 you may have available.


=cut
