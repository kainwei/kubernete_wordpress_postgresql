docker build --no-cache --force-rm  -t wpn4p01:php_latest_v03 .
docker tag wpn4p01:php_latest_v03 kainvey/wpn4p01:php_latest_v03
docker push kainvey/wpn4p01:php_latest_v03
