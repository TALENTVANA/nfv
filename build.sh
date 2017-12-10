mvn clean install
mvn package docker:build
version=`cat VERSION`
git add VERSION 
git commit -m "version $version"
git tag -a "$version" -m "version $version"
git push origin master
git push --tags
sudo docker tag demovana/nfv:latest demovana/nfv:$version
sudo docker push demovana/nfv:latest
sudo docker push demovana/nfv:$version
