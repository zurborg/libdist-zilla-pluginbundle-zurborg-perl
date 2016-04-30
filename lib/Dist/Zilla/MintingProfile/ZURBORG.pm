use strictures 2;

package Dist::Zilla::MintingProfile::ZURBORG;

# VERSION

use Moose;

with 'Dist::Zilla::Role::MintingProfile' => { -version => '5.047' };

use File::ShareDir;
use Path::Tiny;
use Carp;
use namespace::autoclean;

sub profile_dir
{
    my ($self, $profile_name) = @_;

    my $dist_name = 'Dist-Zilla-PluginBundle-ZURBORG'; # '{{ $dist->name }}';

    my $profile_dir = path(File::ShareDir::dist_dir($dist_name))->child('profiles', $profile_name);

    return $profile_dir if -d $profile_dir;

    confess "Can't find profile $profile_name via $self: it should be in $profile_dir";
}

__PACKAGE__->meta->make_immutable;
