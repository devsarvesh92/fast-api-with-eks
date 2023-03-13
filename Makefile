create-cluster:
	@eksctl create cluster --name eksctl-test --nodegroup-name ng-default --node-type t3.micro --nodes 2 --managed --profile personal

login:
	@aws ecr-public get-login-password --region us-east-1  --profile personal | docker login --username AWS --password-stdin public.ecr.aws/i5s6f6g9

build:
	@docker build -t fastapi-app .
	@docker tag fastapi-app:latest public.ecr.aws/i5s6f6g9/fastapi-app:latest
	@docker push public.ecr.aws/i5s6f6g9/fastapi-app:latest

