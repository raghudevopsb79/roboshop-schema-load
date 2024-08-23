default:
	aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 739561048503.dkr.ecr.us-east-1.amazonaws.com
	docker build -t 739561048503.dkr.ecr.us-east-1.amazonaws.com/roboshop-schema-load .
	docker push 739561048503.dkr.ecr.us-east-1.amazonaws.com/roboshop-schema-load
