docker build -t my-golang-app .
docker run -it --rm -p 8080:1337 --name my-running-app my-golang-app
