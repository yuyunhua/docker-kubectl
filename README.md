# docker-kubectl

## Supported tags and respective Dockerfile links

+ `latest`, [(latest/Dockerfile)](https://github.com/yuyunhua/docker-kubectl/blob/master/Dockerfile)
+ `v1.9.2`, [(v1.9.2/Dockerfile)](https://github.com/yuyunhua/docker-kubectl/blob/v1.9.2/Dockerfile) 

## Run
```sh
# step 1: put your kubectl configuration file to someplace
# step 2: run docker with mounting your configuration directory 
docker run -v `pwd`:/root/.kube -it --rm --name my-kubectl yuyunhua/kubectl kubectl get all -a

docker run -v `pwd`:/root/.kube -it --name my-kubectl yuyunhua/kubectl
```
 