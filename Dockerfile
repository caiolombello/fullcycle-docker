# Primeiro estágio: imagem de compilação
FROM golang:1.17 AS builder

# Definir a pasta de trabalho
WORKDIR /app

# Copiar o código fonte para a imagem
COPY main.go .

# Copiar Módulo Go
COPY go.mod .

# Compilar o aplicativo
RUN CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o main .

# Segundo estágio: imagem mínima
FROM scratch

# Copiar o binário compilado do primeiro estágio
COPY --from=builder /app/main /

# Definir o binário como ponto de entrada
ENTRYPOINT ["/main"]
