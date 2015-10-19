use strictures 2;

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
        [ 'Git::GatherDir'  => {} ],
        [ 'PruneCruft' => {} ],
        [
            'PruneFiles' => {
                filename => 'README.md',
            }
        ],
        [ 'TravisYML'                  => {} ],
        [ 'MinimumPerl'                => {} ],
        [ 'AutoPrereqs'                => {} ],
        [ 'PreviousVersion::Changelog' => {} ],
        [
            'NextVersion::Semantic' => {
                format => '%d.%03d',
            }
        ],
        [
            'PodWeaver' => {
                config_plugin => '@ZURBORG',
            }
        ],
        [ 'OurPkgVersion' => {} ],
        [
            'NextRelease' => {
                format => '%v %{yyyy-MM-dd}d'
            }
        ],
        [
            'GithubMeta' => {
                issues => '1',
            }
        ],
        [ 'Git::Check'          => { allow_dirty => '.travis.yml' } ],
        [ 'Git::Commit'         => {} ],
        [ 'Git::Tag'            => {} ],
        [ 'Git::Contributors'   => {} ],
        [ 'ContributorsFile'    => {} ],
        [ 'ManifestSkip'        => {} ],
        [ 'MetaYAML'            => {} ],
        [ 'License'             => {} ],
        [ 'Readme'              => {} ],
        [ 'CPANFile'            => {} ],
        [ 'Test::Compile'       => {} ],
        [ 'ExtraTests'          => {} ],
        [ 'Test::NoTabs'        => {} ],
        [ 'Test::Fixme'         => {} ],
        [ 'Test::Inline'        => {} ],
        [ 'PodSyntaxTests'      => {} ],
        [ 'PodCoverageTests'    => {} ],
        [ 'Test::CPAN::Changes' => {} ],
        [ 'Test::Perl::Critic'  => {} ],
        [
            'Test::Kwalitee::Extra' => {
                arg => '!prereq_matches_use',
            }
        ],
        [ 'ExecDir'        => {} ],
        [ 'ShareDir'       => {} ],
        [ 'Signature'      => {} ],
        [ 'MakeMaker'      => {} ],
        [ 'Manifest'       => {} ],
        [ 'TestRelease'    => {} ],
        [ 'ConfirmRelease' => {} ],
        [ 'UploadToCPAN'   => {} ],
        [ 'PerlTidy'       => {} ],
    );

    return;
}

1;
