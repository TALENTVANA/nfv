mvn clean install
mvn package docker:build
version=`cat VERSION`
git add VERSION 
git commit -m "version $version"
sudo docker tag demovana/nfv:latest demovana/nfv:$version
sudo docker push demovana/nfv:latest
sudo docker push demovana/nfv:$version
