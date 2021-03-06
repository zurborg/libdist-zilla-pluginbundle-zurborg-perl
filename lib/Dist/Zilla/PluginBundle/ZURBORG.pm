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

    my @plugins = (
        'Git::GatherDir' => {},
        'PruneCruft' => {},
        'PruneFiles' => {
            filename => 'dist.ini',
        },
        'MinimumPerl' => {},
        'AutoPrereqs' => {},
        'PreviousVersion::Changelog' => {},
        'NextVersion::Semantic' => {
            format => '%d.%03d',
        },
        'PodWeaver' => {
            config_plugin => '@ZURBORG',
        },
        'OurPkgVersion' => {},
        'NextRelease' => {
            format => '%v %{yyyy-MM-dd}d',
        },
        'GithubMeta' => {
            issues => '1',
        },
        'Git::Check' => {
            allow_dirty => '.travis.yml',
        },
        'Git::Commit' => {},
        'Git::Tag' => {
            tag_message => 'Released version %v',
            signed => 1,
        },
        'Git::Contributors' => {},
        'ContributorsFile' => {},
        'ManifestSkip' => {},
        'MetaYAML' => {},
        'License' => {},
        'Readme' => {},
        'CPANFile' => {},
        'ExtraTests' => {},
        'PodSyntaxTests' => {},
        'PodCoverageTests' => {},
        'Test::CPAN::Changes' => {},
        'Test::Perl::Critic' => {},
        'Test::Kwalitee::Extra' => {
            arg => '!prereq_matches_use',
        },
        'ExecDir' => {},
        'ShareDir' => {},
        'Signature' => {},
        'ModuleBuild' => {},
        'Manifest' => {},
        'TestRelease' => {},
        'ConfirmRelease' => {},
        'UploadToCPAN' => {},
        'Git::Push' => {},
        'GitHub::UploadRelease' => {},
    );

    for (0 .. $#plugins/2) {
        push @plugins => [ splice @plugins, 0, 2 ];
    }
    $self->add_plugins(@plugins);
    return;
}

1;
