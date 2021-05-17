docker stop lasertimeDocs
docker rm lasertimeDocs

docker run \
    -dit \
    --mount type=bind,source="`pwd`/public-html",target=/usr/local/apache2/htdocs \
    --name lasertimeDocs \
    -p 8082:80 \
    httpd:2.4
