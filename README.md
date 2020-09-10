
# Docker Hub Laravel Image
https://hub.docker.com/repository/docker/rvsiqueira/php-laravel/ 


1. Build image based on the dockerfile
docker build -t rvsiqueira/php-laravel .

2. Run container
docker run -d --name laravel -v $(pwd):/var/www -p 8000:8000 rvsiqueira/php-laravel

3. Access bash and run php artisan serve
docker exec -ti laravel bash
cd /var/www/
php artisan serve --host=0.0.0.0

4. Configure Laravel
composer install
cp .env.example .env
php artisan key:generate
php artisan config:cache