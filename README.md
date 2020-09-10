1. Build image based on the dockerfile
docker build -t rvsiqueira/php-laravel .

2. Run container
docker run -d --name laravel -v $(pwd):/var/www -p 8000:8000 rvsiqueira/php-laravel

3. Access bash and run php artisan serve
docker exec -ti laravel bash
cd /var/www/
php artisan serve --host=0.0.0.0