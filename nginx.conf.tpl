user www-data;
worker_processes 1;
pid /run/nginx.pid;

events {
	worker_connections 768;
}

http {

	include /etc/nginx/mime.types;

	server {
		listen 8080;

		location / {
		proxy_pass http://htmlbook.ru;
		}

		location ~* style.css {
		alias {{ PATH_TO_CSS }};
		}

	}

	server {
		listen 9000;

		location ~* custom.css {
		alias {{ PATH_TO_CSS }};
		}

		location / {
		proxy_pass http://selenium-python.readthedocs.io/;
		}
	}
}