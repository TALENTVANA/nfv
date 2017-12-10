mvn clean install
mvn package docker:build
version=`cat VERSION`
git add VERSION 
git commit -m "version $version"
sudo docker tag demovana/nfv-demo:latest demovana/nfv:$version
sudo docker push demovana/nfv-demo:latest
sudo docker push demovana/nfv-demo:$version
