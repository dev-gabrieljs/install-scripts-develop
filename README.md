# Scripts de Instalação

Este repositório contém um script de instalação automatizada que configura um ambiente de desenvolvimento completo em sistemas Linux. O script instala e configura Java, PostgreSQL, IntelliJ IDEA, Visual Studio Code, DBeaver, Git, Maven e outras ferramentas essenciais para o desenvolvimento.

## Requisitos

- Sistema operacional Linux (Ubuntu recomendado)
- Acesso à internet
- Permissões de superusuário (root)

## Ferramentas Instaladas

O script irá instalar as seguintes ferramentas:

- **Java (OpenJDK 17):** Ambiente de desenvolvimento para Java.
- **PostgreSQL:** Banco de dados relacional poderoso e versátil.
- **IntelliJ IDEA Community Edition:** IDE para desenvolvimento em Java.
- **Visual Studio Code:** Editor de código leve e altamente configurável.
- **DBeaver Community Edition:** Ferramenta de gerenciamento de banco de dados.
- **Git:** Sistema de controle de versões distribuído.
- **Maven:** Ferramenta de gerenciamento e automação de projetos Java.


Siga os passos abaixo para executar o script de instalação:

### 1. Clone o Repositório

#### Caso estiver com git instalado.

Primeiro, clone o repositório para o seu computador usando o comando abaixo.
```bash
git clone https://github.com/dev-gabrieljs/install-scripts.git

```
#### Caso não esteja com git instalado

Você pode baixar o repositório como um arquivo ZIP clicando no botão **"Code"** no e selecionando **"Download ZIP"**. Após o download, descompacte o arquivo ZIP no diretório desejado.
Para extrair um arquivo ZIP no Linux, você pode usar o comando `unzip`. Aqui está o comando geral para extrair um arquivo ZIP:

```bash
unzip nome-do-arquivo.zip
```
Se o comando `unzip` não estiver instalado no seu sistema, você pode instalá-lo com o seguinte comando:

```bash
sudo apt-get install unzip
````

## Como Executar o Script

### 2. Navegue até o Diretório do Repositório

Use o comando `cd` para acessar o diretório do repositório clonado:

```bash
cd install-scripts

```

### 3. Torne o Script Executável

Antes de executar o script, é necessário garantir que ele tenha permissão de execução:

```bash
chmod +x install.sh
```

### 4. Execute o Script de Instalação

Execute o script com permissões de superusuário para instalar e configurar todas as ferramentas:

```bash
sudo ./install.sh
```

## O que o Script Faz

- **Atualiza o Sistema:** Atualiza a lista de pacotes e instala as atualizações disponíveis.
- **Instala o Java (OpenJDK 17):** Instala o OpenJDK 17 e configura as variáveis de ambiente necessárias.
- **Instala o PostgreSQL:** Instala o PostgreSQL, inicia o serviço e configura um usuário e um banco de dados.
- **Instala o Visual Studio Code:** Instala o Visual Studio Code utilizando Snap.
- **Instala o DBeaver:** Instala o DBeaver Community Edition também utilizando Snap.
- **Instala o IntelliJ IDEA:** Faz o download, descompacta o IntelliJ IDEA Community Edition, cria um link simbólico para facilitar o acesso e cria um atalho na área de trabalho.
- **Instala o Git:** Instala o Git, ferramenta essencial para controle de versões.
- **Instala o Maven:** Instala o Apache Maven, ferramenta de automação de projetos Java.

## Observações

- **Permissões de Superusuário:** Certifique-se de executar o script com permissões de superusuário (root), pois ele precisa instalar pacotes e criar diretórios no sistema.
- **Compatibilidade do Sistema:** O script foi projetado para distribuições Linux baseadas em Debian/Ubuntu. Para outras distribuições, ajustes podem ser necessários.

## Contribuições

Contribuições são bem-vindas! Se você deseja contribuir para este repositório, sinta-se à vontade para fazer um fork, criar uma branch para suas alterações e enviar pull requests com melhorias ou correções.

## Licença

Este projeto é licenciado sob a MIT License.

## Adicionando o README.md ao Repositório

Para adicionar este `README.md` ao seu repositório, siga os passos abaixo:

### Crie o Arquivo README.md

No diretório do seu repositório clonado, crie um arquivo chamado `README.md` e cole o conteúdo deste documento nele.

### Adicione, Commit e Faça o Push das Alterações

Execute os seguintes comandos:

```bash
git add README.md
git commit -m "Adiciona README com instruções de execução"
git push origin main
```

