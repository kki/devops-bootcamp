docker build -t devops-lecture9-hw .

docker run -d -p 8080:3000 --name lecture9-hw devops-lecture9-hw

docker stop lecture9-hw