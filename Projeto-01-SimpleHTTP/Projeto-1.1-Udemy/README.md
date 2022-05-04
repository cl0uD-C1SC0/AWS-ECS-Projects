# Projeto 1.1 -  Udemy

----

## Itens:

* aplicacao.go: Aplicação feita em Golang para o Container
* Dockerfile: Arquivo onde é criada a imagem para o meu Container
* EC2-Userdata: O Projeto foi feito todo em uma EC2, colocando e utilizando as credenciais do Lab e do CodeCommit
* buildspec.yml: Arquivo que vai ser utilizado para a automação da criação de imagens docker para colocar no ECR via CodeBuild - Customizado por mim.
* img: Pasta onde contém imagens das etapas acima para visualização apenas do que foi realizado.

## Projeto:

STEP 1:
    - Criar uma EC2 para construir e buildar nossa imagem Docker
    - EC2 com softwares instalados: git, docker e outros...

STEP 2:
    - Construção do Dockerfile
    - Build do arquivo de Dockerfile e container teste

STEP 3:
    - Preparação do Ambiente na AWS
        - Criação de IAM Profile + CodeCommit credentials
        - Criação de um repositório do AWS CodeCommit
        - Criação de um repositório de imagens no AWS ECR
        - Criação de um Cluster no AWS ECS
STEP 4:
    - Upload da imagem buildada do Dockerfile no AWS ECR
    - Criação de um Task Definition no AWS ECS
STEP 5:
    - Criação de 2 Security Groups para o ALB e o ECS
    - Criação de 1 Application Load Balancer + 1 Target Group
    - Criação de um Service utilizando o SG do ECS que está apontado para o SG do ALB e linkando o ALB que irá utilizar
STEP 6:
    - Teste inicial do Service via acesso a internet.
STEP 7:
    - Criação de um arquivo chamado buildspec.yml que será utilizado pelo AWS CodeBuild
    - Upload da aplicação em go, do Dockerfile e do buildspec.yaml para o AWS CodeCommit
STEP 8:
    - Criação de um AWS CodeBuild
    - Automatizando tudo com AWS CodePipeline
    - Teste de commit inicial para triggar o AWS CodePipeline e acionar a pipeline


-----

## Serviços Utilizados nesse Projeto:

<div align="center">
    <img src="https://www.fintail.me/icons/Amazon-Elastic-Container-Service.png" width="100" text-align="bottom">
    <img src="https://www.fintail.me/icons/Amazon-EC2.png" width="100">
    <img src="https://avatars.githubusercontent.com/u/78044749?v=4" width="100">
    <img src="https://www.fintail.me/icons/Elastic-Load-Balancing-ELB.png" width="100">
    <img src="https://www.fintail.me/icons/Amazon-VPC.png" width="100">
    <img src="https://www.fintail.me/icons/AWS-CodeCommit.png" width="100">
    <img src="https://www.fintail.me/icons/AWS-CodeBuild.png" width="100">
    <img src="https://www.fintail.me/icons/AWS-CodePipeline.png" width="100">
</div>

-----------
<p align=center>Projeto baseado em um projeto real de um curso da Udemy sobre ECS</p>
