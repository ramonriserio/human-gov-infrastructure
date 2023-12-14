Primeiro é preciso executar o terraform apply para criar os arquivos remotos (remote-files), quais sejam:
- bucket S3 para armazenar o terraform.tfstate
- tabela do dynamodb para armazenar o .terraform.lock.info ???