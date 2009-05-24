package DynamicAppDemo;
use Moose;
use Catalyst::Runtime '5.80002';

use Catalyst qw/
    +CatalystX::ModelsFromConfig
    +CatalystX::ModelToControllerReflector
/;

extends 'Catalyst';

our $VERSION = '0.01';

__PACKAGE__->config(
    name => 'DynamicAppDemo',
    'Controller::One' => {
        superclasses => [qw/DynamicAppDemo::ControllerBase/],
        roles      => [qw/DynamicAppDemo::ControllerRole/],
    },
    'Model::One' => {
        class => 'SomeModelClass',
    },
);

__PACKAGE__->setup();

__PACKAGE__->meta->make_immutable;

