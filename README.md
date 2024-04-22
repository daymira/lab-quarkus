## Desenvolvendo um Sistema para Eleição Com Java Usando Quarkus Framework

O projeto contra com três módulos:

- Gerenciamento da eleição [ElectionManagement]()
- App de Votação []()
- App de resultado []()

### 🛠️ As ferramentas utilizadas são:

- Docker
- Traefik
- MariaDB
- Redis
- Graylog
- OpenSearch
- MongoDb
- JaegerTracing
- Quarkus
- Java 17
- JUnit
- Hibernate
- Flyway

### 👩🏻‍💻 Inicializando a Aplicação

É necessário inicializar algumas aplicações utilizando o docker-compose para rodar o programa.

`docker compose up -d reverse-proxy`

`docker compose up -d jaeger`

`docker compose up -d mongodb opensearch`

`docker compose up -d graylog`

### Build

É preciso fazer um build para cada módulo da aplicação para criar uma imagem do docker utilizando o script cicd-build.sh.

`./cicd-build.sh election-management`

`./cicd-build.sh voting-app`

`./cicd-build.sh result-app`

Para subir essas imagens é só usar o comando `docker-compose up -d "nome do módulo"`

Também é possível subir as imagens através do script:

`./cicd-blue-green-deployment "nome do módulo e versão"`
