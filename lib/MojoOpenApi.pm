package MojoOpenApi;
use Mojo::Base 'Mojolicious', -signatures;
use MojoOpenApi::Model::Data;

sub startup ($self) {

    my $config = $self->plugin('NotYAMLConfig');

    $self->secrets($config->{secrets});

    $self->plugin(
        "OpenAPI" => {
            url => $self->home->rel_file("public/api.json")
        }
    );

    $self->plugin(
        SwaggerUI => {
            route => $self->routes()->any('api'),
            url => "/api/v1",
            title => "MojoOpenApi App"
        }
    );

    # lazy initialize
    $self->helper(
        model => sub ($c) {
            state $data = MojoReactApp::Model::Data->new();
            return $data;
        }
    );

    my $r = $self->routes;

    $r->get('/')->to(template => 'home/base');
}

1;

