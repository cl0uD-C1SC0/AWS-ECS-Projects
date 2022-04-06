# Projeto do BlueGreen Deployment com AWS CodePipeline + AWS CodeDeploy

-----------
<div>
<h1 align="center"> Serviços utilizados neste Projeto: </h1>
  <div align=center>
    <img src="./img/Arch_Amazon-Elastic-Container-Service_64@5x.png" width="75">
    <img src="./img/Arch_AWS-Fargate_64@5x.png" width="75">
    <img src="./img/Arch_Amazon-Elastic-Container-Registry_64.png" width="75">
    <img src="./img/Arch_Elastic-Load-Balancing_64@5x.png" width="75">
    <img src="./img/Arch_Amazon-Virtual-Private-Cloud_64.png" width="75">
    <img src="./img/Arch_AWS-CodeDeploy_64.png" width="75">
    <img src="./img/Arch_AWS-CodePipeline_64.png" width="75">
    <img src="./img/Arch_AWS-CodeCommit_64.png" width="75">
  </div>
  <h1 align="center"> Outras tecnologias utilizadas: </h1>
  <div align=center>
    <img src="./img/docker-logo.png" width="75">
  </div>
</div>

-----------
# Comandos na CLI utilizados:

Puxando imagem docker:
```cli
  docker pull nginx
```
Criando ECR
```cli
  aws ecr create-repository --repository-name nginx
```
Criando o TaskDefinition
```cli
  aws ecs register-task-definition --cli-input-json file://1-task=definition.json
```
Colocando os arquivos no CodeCommit
```cli
  git add -A
```
```cli
  git commit -m "Added files for CodeDeploy and CodePipeline"
```
```
  git push
```
Criando o Service para o Cluster
```cli
  aws ecs create-service --service-name service-blue-green-pipe --cli-input-json file://3-service-for-cluster.json
```
-----------
<p align=center>Projeto baseado no DOCS da AWS sobre ECS e CodeDeploy: https://docs.aws.amazon.com/pt_br/AmazonECS/latest/userguide</p>
