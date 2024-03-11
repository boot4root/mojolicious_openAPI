package MojoOpenApi::Model::Data;
use strict;
use warnings;
use experimental qw(signatures);
use Mojo::JSON qw(decode_json);

sub new ($class) {
    my $self = {};
    bless $self, $class;
    return $self;
}

sub _open_json_file ($self, $json_file) {
    open(my $in, '<', $json_file) or $self->app->log->error("Cannot open json $json_file : $!");
    my $json_text = do { local $/ = undef; <$in>; };
    close($in) or $self->app->log->error("Cannot close json : $!");

    my $config_data = decode_json($json_text);
    return $config_data;
}

sub get_column_json ($self) {
    my $data_in_json = $self->_open_json_file("etc/column_data.json");

    return $data_in_json;
}

sub get_line_json ($self) {
    my $data_in_json = $self->_open_json_file("etc/line_data.json");

    return $data_in_json;
}

1;
