Requirements:
sudo apt install uwsgi-plugin-psgi
cpan Mojolicious Mojolicious::Plugin::OpenAPI@4.03 Mojolicious::Plugin::SwaggerUI IO::Socket::SSL@2.070 JSON::XS@4.03

Usage:
~/open_api_app$ uwsgi_psgi --http-socket :8080 --psgi script/mojo_open_api

![image](https://github.com/boot4root/mojolicious_openAPI/assets/85632791/e485d63b-4550-462c-a747-3914e24ad5ab)
