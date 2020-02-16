# Install Dependencies
FROM composer:latest AS composer

COPY ./composer.json ./composer.lock /app/
RUN composer install \
        --optimize-autoloader \
        --no-interaction \
        --no-plugins \
        --no-scripts \
        --no-suggest \
        --no-dev \
        --prefer-dist

# Build image
FROM php:cli

COPY ./src/ /app/src/
COPY --from=composer /app/vendor/ /app/vendor/
WORKDIR /app

RUN ls -lah /app

ENTRYPOINT [ "php", "./src/download.php" ]
