# 🧪 Teste Técnico - Backend Sysprem

Este repositório contém um ambiente base para execução de testes técnicos de desenvolvimento de backend.
O objetivo principal do teste é avaliar se o desenvolvedor possui habilidade para desenvolver APIs REST utilizando NodeJS, Typescript, NestJS, Swagger, PostgreSQL, TypeORM e autenticação via Keycloak.

---

## ✅ Requisitos iniciais

- Tenha uma máquina com Ubuntu 22.04 ou 24.04 instalado

---

## ⚙️ Instalação do ambiente

### 1. Atualize o sistema

```bash
sudo apt update && sudo apt upgrade -y
```

### 2. Instale Docker

```bash
sudo apt install -y docker.io
sudo systemctl enable docker
sudo systemctl start docker
```

### 3. Instale Docker Compose v2 manualmente

```bash
mkdir -p ~/.docker/cli-plugins
curl -SL https://github.com/docker/compose/releases/latest/download/docker-compose-linux-x86_64 -o ~/.docker/cli-plugins/docker-compose
chmod +x ~/.docker/cli-plugins/docker-compose
```

---

## 🚀 Como rodar o projeto

1. Clone o repositório:

```bash
git clone https://github.com/Sysprem/teste-backend.git
cd teste-backend
```

2. Suba os containers:

```bash
docker compose up -d --build
```

---

## 🌐 Endereços dos serviços

- API NestJS: http://localhost:3000
- Swagger: http://localhost:3000/docs
- Keycloak CLI: http://localhost:8080   (user: admin, pass: admin)
- PostgreSQL (Keycloak): `localhost:5433`   (user: keycloak, pass: keycloak)
- PostgreSQL (Sysprem): `localhost:5432`   (user: sysprem, pass: sysprem)

> Obs: A API vai retornar 404 na rota `/` até que ela seja implementada.

---

## 🧹 Como parar e limpar

Para parar os containers:

```bash
docker compose down
```

Para parar e remover volumes (banco de dados será apagado):

```bash
docker compose down -v
```

---

## 📤 Submissão do código

Gere uma chave SSH e envie para o administrador do repositório adicionar como deploy key em seu repositório privado no Sysprem

```bash
ssh-keygen -t ed25519 -C "candidato@email.com"
cat ~/.ssh/id_ed25519.pub
```


Limpe o git atual e inicie

```bash
rm -rf .git
git init
git branch -M main
git remote add origin git@github.com:Sysprem/teste-[CANDIDATO].git
```

Inclua os arquivos

```bash
git add .
```

Comite as alterações com a mensagem adequada

```bash
git commit -m "message commit"
```

Efetue o push

```bash
git push -u origin main
```

---

## ❗ Suporte

Se encontrar qualquer problema com o ambiente, entre em contato com o responsável pelo processo seletivo.

Boa sorte no teste!