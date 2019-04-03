$(aws ecr get-login --no-include-email --region ap-northeast-1)
docker build -t squid-proxy .
docker tag squid-proxy:latest 042520414822.dkr.ecr.ap-northeast-1.amazonaws.com/squid-proxy:latest
docker push 042520414822.dkr.ecr.ap-northeast-1.amazonaws.com/squid-proxy:latest

aws ecs register-task-definition --cli-input-json file://aws/squid_proxy_aws_task.json
