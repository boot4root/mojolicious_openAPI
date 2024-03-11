package MojoOpenApi::Controller::Column;
use Mojo::Base 'Mojolicious::Controller', -signatures;
use Mojo::JSON qw(encode_json);

sub get_stacked_column_chart ($self) {

    # if invalid input err 400
    my $app = $self->openapi->valid_input or return;

    my $data_in_json = $app->model->get_column_data();

    # Open API check before render
    my $output = {chart_data => $data_in_json};
    $app->render(openapi => $output);
}

1;
