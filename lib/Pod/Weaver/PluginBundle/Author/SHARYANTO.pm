package Pod::Weaver::PluginBundle::Author::SHARYANTO;

use 5.010001;

use Pod::Weaver::Config::Assembler;

our $VERSION = '0.07'; # VERSION

sub _exp { Pod::Weaver::Config::Assembler->expand_package($_[0]) }

sub mvp_bundle_config {
    return (
        [ '@Author::SHARYANTO/CorePrep', _exp('@CorePrep'), {} ],
        [ '@Author::SHARYANTO/Name', _exp('Name'), {} ],
        [ '@Author::SHARYANTO/Version', _exp('Version'), {} ],
        [ '@Author::SHARYANTO/prelude', _exp('Region'), { region_name => 'prelude' } ],

        [ 'SYNOPSIS', _exp('Generic'), {} ],
        [ 'DESCRIPTION', _exp('Generic'), {} ],
        [ 'OVERVIEW', _exp('Generic'), {} ],

        [ 'ATTRIBUTES', _exp('Collect'), { command => 'attr' } ],
        [ 'METHODS', _exp('Collect'), { command => 'method' } ],
        [ 'FUNCTIONS', _exp('Collect'), { command => 'func' } ],
        #[ 'TYPES', _exp('Collect'), { command => ' } ],

        [ '@Author::SHARYANTO/Perinci', _exp('-Perinci'), {} ],

        [ '@Author::SHARYANTO/Leftovers', _exp('Leftovers'), {} ],
        [ '@Author::SHARYANTO/postlude',  _exp('Region'), { region_name => 'postlude' } ],

        [ '@Author::SHARYANTO/Homepage::DefaultCPAN', _exp('Homepage::DefaultCPAN'), {} ],
        [ '@Author::SHARYANTO/Source::DefaultGitHub', _exp('Source::DefaultGitHub'), {} ],
        [ '@Author::SHARYANTO/Bugs::DefaultRT', _exp('Bugs::DefaultRT'), {} ],
        [ '@Author::SHARYANTO/Authors', _exp('Authors'), {} ],
        [ '@Author::SHARYANTO/Legal', _exp('Legal'), {} ],

        [ '@Author::SHARYANTO/EnsureUniqueSections', _exp('-EnsureUniqueSections'), {} ],
        #[ '@Author::SHARYANTO/List', _exp('-Transformer'), { transformer => 'List' } ],
        [ '@Author::SHARYANTO/Encoding', _exp('-Encoding'), {} ],
    );
}

1;
# ABSTRACT: SHARYANTO's default Pod::Weaver config

__END__

=pod

=encoding utf-8

=head1 NAME

Pod::Weaver::PluginBundle::Author::SHARYANTO - SHARYANTO's default Pod::Weaver config

=head1 VERSION

version 0.07

=head1 SYNOPSIS

In C<weaver.ini>:

 [@Author::SHARYANTO]

or in C<dist.ini>:

 [PodWeaver]
 config_plugin = @Author::SHARYANTO

=head1 DESCRIPTION

Equivalent to (see source code).

=head1 FUNCTIONS


None are exported by default, but they are exportable.

=for Pod::Coverage .*

=head1 SEE ALSO

L<Pod::Weaver>

L<Dist::Zilla::PluginBundle::Author::SHARYANTO>

=head1 HOMEPAGE

Please visit the project's homepage at L<https://metacpan.org/release/Pod-Weaver-PluginBundle-Author-SHARYANTO>.

=head1 SOURCE

Source repository is at L<https://github.com/sharyanto/perl-Pod-Weaver-PluginBundle-Author-SHARYANTO>.

=head1 BUGS

Please report any bugs or feature requests on the bugtracker website
L<https://rt.cpan.org/Public/Dist/Display.html?Name=Pod-Weaver-PluginBundle
-Author-SHARYANTO>

When submitting a bug or request, please include a test-file or a
patch to an existing test-file that illustrates the bug or desired
feature.

=head1 AUTHOR

Steven Haryanto <stevenharyanto@gmail.com>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2013 by Steven Haryanto.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut
