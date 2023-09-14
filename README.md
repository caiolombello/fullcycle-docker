# Projeto Full Cycle com Docker

Este projeto contém uma aplicação simples escrita em Go, que é empacotada dentro de uma imagem Docker ultra-leve (menos de 2MB). Quando o container Docker é executado, ele exibe a mensagem "Full Cycle Rocks!!" no console.

## Como Usar

Aqui estão as instruções passo a passo para configurar e executar o projeto usando Docker:

### 1. Clonar o Repositório

Clone este repositório para seu sistema local usando o seguinte comando:

```sh
git clone https://github.com/caiolombello/fullcycle-docker.git
```

### 2. Construir a Imagem Docker

Navegue até o diretório do projeto e construa a imagem Docker usando o seguinte comando:

```sh
docker build -t <seu-user>/fullcycle .
```

Este comando utiliza um Dockerfile com multi-stage build para compilar o aplicativo Go e empacotá-lo em uma imagem Docker leve.

### 3. Executar o Container Docker

Depois de construir a imagem, você pode executar o container Docker com o seguinte comando:

```sh
docker run <seu-user>/fullcycle
```

Você deverá ver a mensagem "Full Cycle Rocks!!" no console.

### 4. Publicar a Imagem no Docker Hub

Se desejar, você pode publicar a imagem Docker no Docker Hub com o seguinte comando:

```sh
docker push <seu-user>/fullcycle
```

Minha imagem está como `caiolombello/fullcycle`, caso desejar realizar algum teste.
