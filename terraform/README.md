Primeiro é preciso executar o terraform apply para criar os arquivos remotos (diretório preparing-for-teamwork), quais sejam:
- bucket S3 para armazenar o terraform.tfstate
- tabela do dynamodb para armazenar o .terraform.lock.info ???
- repositórios remotos para armazenar arquivos de infraestrutura e arquivos da aplicação- 

O arquivo backend.tf do diretório atual também será utilizado na preparação para o trabalho em equipe (teamwork)