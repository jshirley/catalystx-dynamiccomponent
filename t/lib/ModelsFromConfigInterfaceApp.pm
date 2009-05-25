package ModelsFromConfigInterfaceApp;
use Moose;
use namespace::autoclean;

use Catalyst qw/
    +CatalystX::ModelsFromConfig::InterfaceRoles
/;

extends 'Catalyst';

__PACKAGE__->config(
    name => __PACKAGE__,
    'Model::One' => {
        class => 'SomeModelClass',
        interface_roles => [qw/ SomeModelClassInterface /],
    },
);

__PACKAGE__->setup;

1;

