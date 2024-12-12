# Deploy de uma Aplicação Spring Boot no Railway com Docker

Este tutorial ensina como fazer o deploy de uma aplicação Spring Boot baseada no repositório do professor Gabriel Gadelha utilizando o Railway como plataforma de hospedagem.

---

## Passo 1: Faça um Fork do Repositório Base

1. Acesse o repositório base do professor Gabriel Gadelha: [pw2024.3TodoAPI](https://github.com/GabrielGadelha/pw2024.3TodoAPI).
2. Clique no botão **Fork** no canto superior direito para criar uma cópia do repositório no seu perfil.

---

## Passo 2: Configure o Dockerfile para a Aplicação

1. No diretório raiz do repositório, crie um arquivo chamado `Dockerfile`.
2. Utilize o arquivo já configurado no repositório: [Dockerfile](./Dockerfile).

---

## Passo 3: Configure o Railway Build File

1. Crie o arquivo `railway.toml` no diretório raiz do repositório.
2. Utilize o arquivo já configurado no repositório: [railway.toml](./railway.toml).

---

## Passo 4: Faça Login no Railway via GitHub

1. Acesse o site do Railway: [railway.app](https://railway.app/).
2. Faça login utilizando sua conta do GitHub.
3. Autorize o Railway a acessar seus repositórios.

---

## Passo 5: Configure Autorização para o Repositório

1. Caso tenha criado uma organização no GitHub, como eu, dê as permissões necessárias para que o Railway acesse o repositório.
2. Verifique se o repositório aparece na lista ao conectar sua conta do GitHub.

---

## Passo 6: Selecione o Repositório no Railway

1. Clique em **New Project** no Railway.
2. Escolha a opção **Deploy from GitHub Repo**.
3. Selecione o repositório do projeto na lista.
4. **Se quiser que o Railway configure automaticamente**, pule o arquivo `Dockerfile` e `railway.toml`. 
   - Caso contrário, eles serão utilizados automaticamente para configurar o ambiente de build.

---

## Passo 7: Variáveis de Ambiente e Configuração do Serviço

1. Após o deploy, configure as variáveis de ambiente necessárias (por exemplo, `SPRING_PROFILES_ACTIVE`, `DATABASE_URL`).
2. Verifique os endereços de acesso ao serviço na aba de informações do projeto.

---

## Em Minutos: Projeto Online

O Railway fará o build e o deploy do projeto em minutos. Após isso, você poderá acessar sua aplicação diretamente pelo link gerado pelo Railway.

--- 

**Observação:** Caso queira personalizar ou usar as configurações automáticas do Railway, você pode excluir ou editar os arquivos `Dockerfile` e `railway.toml` conforme necessário.