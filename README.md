Requirements:
sudo apt install uwsgi-plugin-psgi
cpan Mojolicious Mojolicious::Plugin::OpenAPI@4.03 Mojolicious::Plugin::SwaggerUI IO::Socket::SSL@2.070 JSON::XS@4.03

Usage:
uwsgi_psgi --http-socket :8080 --psgi script/mojo_open_api
