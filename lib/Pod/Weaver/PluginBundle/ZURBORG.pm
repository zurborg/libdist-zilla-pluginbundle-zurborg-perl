use strict;
use warnings;
package Pod::Weaver::PluginBundle::ZURBORG;
# ABSTRACT: a bundle that add Bugs section to the Default bundle

# VERSION

use namespace::autoclean;

use Pod::Weaver::Config::Assembler;

=method mvp_bundle_config

Config method for Pod::Weaver

=cut

sub mvp_bundle_config {
	return map {
		$_->[1] = Pod::Weaver::Config::Assembler->expand_package($_->[1]);
		$_;
	} (
		['@Default/CorePrep', '@CorePrep', {
		}],
		['@Default/Name', 'Name', {
		}],
		['@Default/Version', 'Version', {
		}],
		['@Default/prelude', 'Region', {
			region_name => 'prelude'
		}],
		['SYNOPSIS', 'Generic', {
		}],
		['DESCRIPTION', 'Generic', {
		}],
		['OVERVIEW', 'Generic', {
		}],
		['ATTRIBUTES', 'Collect', {
			command => 'attr'
		}],
		['METHODS', 'Collect', {
			command => 'method'
		}],
		['FUNCTIONS', 'Collect', {
			command => 'func'
		}],
		['@Default/Leftovers', 'Leftovers', {
		}],
		['@Default/postlude', 'Region', {
			region_name => 'postlude'
		}],
		['@Default/Bugs', 'Bugs', {
		}],
		['@Default/Authors', 'Authors', {
		}],
		['@Default/Legal', 'Legal', {
		}],
	)
}

1;

