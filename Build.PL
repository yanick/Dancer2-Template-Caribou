
use strict;
use warnings;

use Module::Build 0.3601;


my %module_build_args = (
  "build_requires" => {
    "Dancer2" => 0,
    "Dancer2::Test" => 0,
    "File::Find" => 0,
    "File::Temp" => 0,
    "Module::Build" => "0.3601",
    "Moose" => 0,
    "Template::Caribou" => 0,
    "Test::More" => "0.88"
  },
  "configure_requires" => {
    "Module::Build" => "0.3601"
  },
  "dist_abstract" => "Template::Caribou wrapper for Dancer2",
  "dist_author" => [
    "Yanick Champoux <yanick\@babyl.dyndns.org>"
  ],
  "dist_name" => "Dancer2-Template-Caribou",
  "dist_version" => "0.1.1",
  "license" => "perl",
  "module_name" => "Dancer2::Template::Caribou",
  "recommends" => {},
  "recursive_test_files" => 1,
  "requires" => {
    "Dancer2::Core::Role::Template" => 0,
    "Moo" => 0,
    "Moose::Util" => 0,
    "Path::Iterator::Rule" => 0,
    "Path::Tiny" => 0,
    "Template::Caribou" => "v0.2.2",
    "strict" => 0,
    "warnings" => 0
  },
  "script_files" => []
);


my $build = Module::Build->new(%module_build_args);

$build->create_build_script;
