#! /bin/bash

echo "Deploying Flask App ..."

docker pull shintazachariah/my-python-app:latest

docker stop flaskapp || true
docker rm flaskapp || true

docker run -d --name flaskapp -p 5000:5000 shintazachariah/my-python-app:latest

echo "Deployment completed!"