use 5.012000;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME              => 'HTML::Strip::UTF8',
    VERSION_FROM      => 'lib/HTML/Strip/UTF8.pm', # finds $VERSION
    PREREQ_PM         => {
        'HTML::Strip' => 0,
    },
    ABSTRACT_FROM     => 'lib/HTML/Strip/UTF8.pm', # retrieve abstract from module
    AUTHOR            => 'Ryan Finnie <ryan@finnie.org>',
);
