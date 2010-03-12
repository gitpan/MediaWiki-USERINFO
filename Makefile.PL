
use strict;
use warnings;

 BEGIN { require 5.10.0; } 

use ExtUtils::MakeMaker 6.11;



my %WriteMakefileArgs = (
                       'test' => {
                                   'TESTS' => 't/*.t'
                                 },
                       'NAME' => 'MediaWiki::USERINFO',
                       'DISTNAME' => 'MediaWiki-USERINFO',
                       'CONFIGURE_REQUIRES' => {
                                                 'ExtUtils::MakeMaker' => '6.11'
                                               },
                       'AUTHOR' => 'Ævar Arnfjörð Bjarmason <avar@cpan.org>',
                       'BUILD_REQUIRES' => {},
                       'ABSTRACT' => 'Parse the F<USERINFO/> files in MediaWiki\'s Subversion repository',
                       'EXE_FILES' => [
                                        'bin/mediawiki-userinfo'
                                      ],
                       'VERSION' => '0.04',
                       'PREREQ_PM' => {
                                        'MooseX::Types::Moose' => '0',
                                        'Email::Valid' => '0',
                                        'Encode' => '0',
                                        'MooseX::StrictConstructor' => '0',
                                        'autodie' => '0',
                                        'File::Spec::Functions' => '0',
                                        'List::MoreUtils' => '0',
                                        'Moose' => '0',
                                        'File::Slurp' => '0',
                                        'Test::utf8' => '0',
                                        'MooseX::Getopt::Dashes' => '0',
                                        'YAML::Syck' => '0',
                                        'IPC::System::Simple' => '0',
                                        'Test::More' => '0',
                                        'namespace::clean' => '0',
                                        'File::Temp' => '0'
                                      },
                       'LICENSE' => 'perl'
                     );


delete $WriteMakefileArgs{LICENSE}
  unless eval { ExtUtils::MakeMaker->VERSION(6.31) };

WriteMakefile(%WriteMakefileArgs);



