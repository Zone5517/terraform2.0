# 🚀 Infraestrutura com Terraform — Nginx + Redis (Docker)

Este projeto demonstra o uso do **Terraform** para gerenciar uma infraestrutura local com **contêineres Docker**, provisionando automaticamente:

- Um servidor **Nginx** (porta 8080)
- Um banco de dados em memória **Redis** (porta 6379)

O objetivo é aplicar os conceitos de *Infraestrutura como Código (IaC)* utilizando o provedor `kreuzwerker/docker`.

---

## 📁 Estrutura do Projeto

├── main.tf # Declaração dos recursos Docker (Nginx e Redis)
├── variables.tf # Variáveis de configuração (nomes, portas)
├── outputs.tf # Saídas geradas após o apply (IDs, portas)
└── README.md # Documentação do projeto

yaml
Copiar código

---

## 🧩 Requisitos

Antes de executar o projeto, verifique se você possui os seguintes itens instalados:

| Ferramenta | Descrição |
|-------------|------------|
| [Terraform](https://developer.hashicorp.com/terraform/downloads) | Infraestrutura como Código |
| [Docker Desktop](https://www.docker.com/products/docker-desktop/) | Ambiente de contêineres local |
| [Git](https://git-scm.com/downloads) | Controle de versão (opcional) |

> 💡 No Windows, **abra o Docker Desktop** antes de rodar qualquer comando Terraform, pois o Terraform depende do daemon Docker em execução.

---

## ⚙️ Configuração do Projeto

### 1️⃣ Inicializar o Terraform
Executa a configuração inicial e baixa o provedor Docker:

```bash
terraform init
2️⃣ Visualizar o plano de execução
Mostra as ações que o Terraform vai realizar (criação dos contêineres):

bash
Copiar código
terraform plan
Saída esperada:

vbnet
Copiar código
Plan: 2 to add, 0 to change, 0 to destroy.
3️⃣ Aplicar as mudanças
Cria os contêineres Docker com base nos arquivos .tf:

bash
Copiar código
terraform apply
Confirme digitando yes quando solicitado.
```


### 🧱 Recursos Criados
```🌐 Contêiner Nginx
Imagem: nginx:latest

Porta interna: 80

Porta externa: 8080

Acesso: http://localhost:8080

🔴 Contêiner Redis
Imagem: redis:alpine

Porta interna: 6379

Porta externa: 6379

Nome do contêiner: aula-terraform-redis
```
### 📤 Outputs
```Após o terraform apply, você pode ver as saídas geradas:

bash
Copiar código
terraform output
Exemplo:

ini
Copiar código
redis_container_id = "d3a4f87e9b1a"
redis_port = 6379
```
### 🧹 Destruir a infraestrutura
```Para remover todos os contêineres criados via Terraform:

bash
Copiar código
terraform destroy
Confirme com yes quando solicitado.
```
### 🐳 Verificação manual (opcional)
```Verifique se os contêineres estão em execução:

bash
Copiar código
docker ps
Saída esperada:

nginx
Copiar código
CONTAINER ID   IMAGE          PORTS                    NAMES
abc123         redis:alpine   0.0.0.0:6379->6379/tcp   aula-terraform-redis
def456         nginx:latest   0.0.0.0:8080->80/tcp     aula-terraform-nginx
```
### 📚 Referências
```Terraform Documentation

Kreuzwerker Docker Provider

Docker Hub - Redis

Docker Hub - Nginx
```