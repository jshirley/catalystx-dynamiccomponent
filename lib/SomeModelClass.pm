package SomeModelClass;
use Moose;
use CatalystX::ControllerGeneratingModel;
use namespace::autoclean;

# Note trivial calling convention.
# Apply MX::Method::Signatures and MX::Types::Structured to be less lame.

# Introspection should only reflect methods which satisfy the calling convention
# This is left as an exercise to the reader. :)

command say_hello => sub {
    my ($self, $name) = @_;
    return("Hello $name");
};

__PACKAGE__->meta->make_immutable;

