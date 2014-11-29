use strict;
use warnings;
package Dist::Zilla::PluginBundle::ZURBORG;
# ABSTRACT: dzil plugin bundle of ZURBORG

use Moose;

# VERSION

with 'Dist::Zilla::Role::PluginBundle::Easy';

=method configure

Configuration of Dist::Zilla::PluginBundle::Easy

=cut

sub configure {
	my $self = shift;

	$self->add_plugins(
		['GatherDir' => {
		}],
		['PruneCruft' => {
		}],
		['PruneFiles' => {
			filename => 'README.md',
		}],
		['TravisYML' => {
		}],
		['MinimumPerl' => {
		}],
		['AutoPrereqs' => {
		}],
		['PreviousVersion::Changelog' => {
		}],
		['NextVersion::Semantic' => {
			format => '%d.%03d',
		}],
		['PodWeaver' => {
			config_plugin => '@ZURBORG',
		}],
		['OurPkgVersion' => {
		}],
		['NextRelease' => {
			format => '%v %{yyyy-MM-dd}d'
		}],
		['GithubMeta' => {
			issues => '1',
		}],
		['Git::Check' => {
		}],
		['Git::Commit' => {
		}],
		['Git::Tag' => {
		}],
		['Git::Push' => {
		}],
		['Git::Contributors' => {
		}],
		['ContributorsFile' => {
		}],
		['ManifestSkip' => {
		}],
		['MetaYAML' => {
		}],
		['License' => {
		}],
		['Readme' => {
		}],
		['ExtraTests' => {
		}],
		['PodSyntaxTests' => {
		}],
		['PodCoverageTests' => {
		}],
		['Test::CPAN::Changes' => {
		}],
		['Test::Perl::Critic' => {
		}],
		['Test::Kwalitee::Extra' => {
		}],
		['ExecDir' => {
		}],
		['ShareDir' => {
		}],
		['Signature' => {
		}],
		['MakeMaker' => {
		}],
		['Manifest' => {
		}],
		['TestRelease' => {
		}],
		['ConfirmRelease' => {
		}],
		['UploadToCPAN' => {
		}],
    );

    return;
}

1;
