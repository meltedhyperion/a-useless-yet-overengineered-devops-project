# Cloud Native Monitoring App on Kubernetes

<img width="502" alt="image" src="https://github.com/meltedhyperion/a-useless-yet-overengineered-devops-project/assets/90302042/f4ce8fa4-e96e-42fd-9ab3-00ab8ef95c5f">



## How to RUN:

step 1:
```
docker build -t <image name> <docekrfile path>
```
step 2:
```
python ecr.py
(this will create a repository in AWS ECR)
```
step 3:
```
Visit ECR dashboard for commmands to push the image to the repository.
```
step 4:
```
docker build -t <image name> <docekrfile path>
```
step 5:
```
create kubernetes cluster through AWS EKS:
```
step 6:
```
Select vpc and subnets
```
step 7:
```
Create security group which allow port 5001 for your application
```
step 8:
```
Cluster → compute → node group → add node group
```
step 9:
```
aws eks --region ap-south-1 update-kubeconfig --name <cluster name>
configure our kubectl/config file so that we have eks conf in it.
```
step 10:
```
kubectl apply -f deployment.yaml
(Apply deployment.yaml)
```
step 11:
```
kubectl apply -f service.yaml
(Apply service.yaml)
```
step 12:
```
kubectl get pods
```
step 13:
```
kubectl get deployment
```
step 14:
```
kubectl get svc
```
step 15:
```
kubectl port-forward svc/<service name> 5001:5001
(Now forward the port to our local host so that we access the app on local host that is hosted on kubernetes cluster)
```
