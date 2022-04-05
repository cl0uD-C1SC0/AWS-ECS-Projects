# Projeto do BlueGreen Deployment utilizando CLI

-----------
<div>
<h1 align="center"> Serviços utilizados neste Projeto: </h1>
  <div align=center>
    <img src="./img/Arch_Amazon-Elastic-Container-Service_64@5x.png" width="75">
    <img src="./img/Arch_AWS-Fargate_64@5x.png" width="75">
    <img src="./img/Arch_Elastic-Load-Balancing_64@5x.png" width="75">
    <img src="./img/Arch_Amazon-Virtual-Private-Cloud_64.png" width="75">
    <img src="./img/Arch_AWS-CodeDeploy_64.png" width="75">
  </div>
</div>

-----------
# Comandos na CLI utilizados:

Application Load Balancer
```cli
  aws elbv2 create-load-balancer \
    --name projeto-bluegreen
    --subnets subnets-id
    --security-groups sg-ids
    --region us-east-1
```
Target Group
```cli
  aws elbv2 create-target-group \
    --name target-group-01 \
    --protocol HTTP \
    --port 80 \
    --target-type ip \
    --vpc-id vpc-id \
    --region us-east-1
```
Listener para o ALB
```cli
  --load-balancer-arn alb-arn \
  --protocol HTTP \
  --port 80 \
  --default-actions Type=forward,TargetGroupArn=tg-arn
  --region us-east-1
```
ECS Cluster
```cli
  aws ecs create-cluster \
    --cluster-name bluegreen-project-cluster \
    --region us-east-1
```
Task Definition
```cli
  aws ecs register-task-definition \
    --cli-input-json file://1-fargate-task.json \
    --region us-east-1
```
ECS Service
```cli
  aws ecs create-service \
    --cli-input-json file://2-bluegreen-service.json \
    --region us-east-1
```
Aplicativo CodeDeploy
```cli
  aws deploy create-application \
    --application-name bluegreen-projeto-app
    --compute-platform ECS \
    --region us-east-1
```
Target Group para o APP do CodeDeploy
```cli
  aws elbv2 create-target-group \
    --name target-group-02 \ 
    --protocol HTTP \
    --port 80 \
    --target-type ip \
    --vpc-id "vpc-id" \
    --region us-east-1
```
Deployment Group para o CodeDeploy
```cli
  aws deploy create-deployment-group \
    --cli-input-json file://3-deployment.json \
    --region us-east-1
```
Criando um Bucket S3 e dando upload do appspec.yaml no bucket criado
```cli
  aws s3 mb s3://bluegreen-bucket-jose
  aws s3 cp ./appspec.yaml s3://bluegren-bucket-jose
```
Implantação para o CodeDeploy
```cli
aws deploy create-deployment \
  --cli-input-json file://5-CodeDeploy-deployment.json \
  --region us-east-1
```
Obtendo informações sobre o Deployment
```cli
  aws deploy get-deployment-target \
    --deployment-id "deployment-id" \
    --target-id cluster-name:service-name \
    --region us-east-1
```
-----------
<p align=center>Projeto baseado no DOCS da AWS sobre ECS e CodeDeploy: https://docs.aws.amazon.com/pt_br/AmazonECS/latest/userguide</p>
