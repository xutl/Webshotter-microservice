FROM xutongle/php:7.1-nginx

COPY . /app/

WORKDIR /app

RUN composer install --prefer-dist --no-dev --optimize-autoloader --no-progress \
	&& cp .env.example .env \
	&& rm -rf /usr/local/html \
	&& ln -s /app/public /usr/local/html

EXPOSE 80

