
use strict;
use warnings;

use 5.010001;

use ExtUtils::MakeMaker 6.30;



my %WriteMakefileArgs = (
  "ABSTRACT" => "SHARYANTO's default Pod::Weaver config",
  "AUTHOR" => "Steven Haryanto <stevenharyanto\@gmail.com>",
  "BUILD_REQUIRES" => {},
  "CONFIGURE_REQUIRES" => {
    "ExtUtils::MakeMaker" => "6.30"
  },
  "DISTNAME" => "Pod-Weaver-PluginBundle-Author-SHARYANTO",
  "EXE_FILES" => [],
  "LICENSE" => "perl",
  "NAME" => "Pod::Weaver::PluginBundle::Author::SHARYANTO",
  "PREREQ_PM" => {
    "Pod::Weaver::Config::Assembler" => 0,
    "Pod::Weaver::Plugin::Encoding" => 0,
    "Pod::Weaver::Plugin::EnsureUniqueSections" => 0,
    "Pod::Weaver::Plugin::Perinci" => 0,
    "Pod::Weaver::Section::Bugs::DefaultRT" => 0,
    "Pod::Weaver::Section::Homepage::DefaultCPAN" => 0,
    "Pod::Weaver::Section::Source::DefaultGitHub" => 0
  },
  "TEST_REQUIRES" => {
    "File::Spec" => 0,
    "IO::Handle" => 0,
    "IPC::Open3" => 0,
    "Test::More" => 0
  },
  "VERSION" => "0.06",
  "test" => {
    "TESTS" => "t/*.t"
  }
);


my %FallbackPrereqs = (
  "File::Spec" => 0,
  "IO::Handle" => 0,
  "IPC::Open3" => 0,
  "Pod::Weaver::Config::Assembler" => 0,
  "Pod::Weaver::Plugin::Encoding" => 0,
  "Pod::Weaver::Plugin::EnsureUniqueSections" => 0,
  "Pod::Weaver::Plugin::Perinci" => 0,
  "Pod::Weaver::Section::Bugs::DefaultRT" => 0,
  "Pod::Weaver::Section::Homepage::DefaultCPAN" => 0,
  "Pod::Weaver::Section::Source::DefaultGitHub" => 0,
  "Test::More" => 0
);


unless ( eval { ExtUtils::MakeMaker->VERSION(6.63_03) } ) {
  delete $WriteMakefileArgs{TEST_REQUIRES};
  delete $WriteMakefileArgs{BUILD_REQUIRES};
  $WriteMakefileArgs{PREREQ_PM} = \%FallbackPrereqs;
}

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);



