#!/bin/bash

# Atualizar o sistema
sudo apt update && sudo apt upgrade -y

# Instalar o Java (OpenJDK 17)
sudo apt install openjdk-17-jdk -y

# Configurar variáveis de ambiente do Java
echo "export JAVA_HOME=/usr/lib/jvm/java-17-openjdk-amd64" >> ~/.bashrc
echo "export PATH=\$JAVA_HOME/bin:\$PATH" >> ~/.bashrc
source ~/.bashrc

# Verificar a instalação do Java
java -version

# Instalar o PostgreSQL
sudo apt install postgresql postgresql-contrib -y

# Iniciar o serviço do PostgreSQL e habilitá-lo para iniciar com o sistema
sudo systemctl start postgresql
sudo systemctl enable postgresql

# Criar um usuário e banco de dados PostgreSQL (substitua 'seu_usuario' e 'sua_senha' conforme necessário)
sudo -u postgres psql -c "CREATE USER seu_usuario WITH PASSWORD 'sua_senha';"
sudo -u postgres psql -c "CREATE DATABASE seu_banco;"
sudo -u postgres psql -c "GRANT ALL PRIVILEGES ON DATABASE seu_banco TO seu_usuario;"

# Instalar Visual Studio Code usando Snap
sudo snap install code --classic

# Instalar DBeaver Community usando Snap
sudo snap install dbeaver-ce

# Baixar IntelliJ IDEA Community Edition
IDEA_VERSION="2024.1.6"
IDEA_TAR="ideaIC-${IDEA_VERSION}.tar.gz"
IDEA_URL="https://download.jetbrains.com/idea/$IDEA_TAR"
IDEA_INSTALL_DIR="/opt/idea-IC"

# Diretório temporário para download
TEMP_DIR="/tmp"

# Fazer download do IntelliJ IDEA
wget -O $TEMP_DIR/$IDEA_TAR $IDEA_URL

# Criar diretório de instalação
sudo mkdir -p $IDEA_INSTALL_DIR

# Descompactar o IntelliJ IDEA
sudo tar -xzf $TEMP_DIR/$IDEA_TAR -C $IDEA_INSTALL_DIR --strip-components=1

# Remover o arquivo compactado
rm $TEMP_DIR/$IDEA_TAR

# Criar um link simbólico para facilitar o uso
sudo ln -s $IDEA_INSTALL_DIR/bin/idea.sh /usr/local/bin/idea

# Criar um atalho na área de trabalho (Desktop Entry)
cat << EOF | sudo tee /usr/share/applications/idea.desktop
[Desktop Entry]
Version=1.0
Type=Application
Name=IntelliJ IDEA Community Edition
Icon=$IDEA_INSTALL_DIR/bin/idea.png
Exec="$IDEA_INSTALL_DIR/bin/idea.sh" %f
Comment=Desenvolvimento em Java com IntelliJ IDEA
Categories=Development;IDE;
Terminal=false
EOF

# Instalação concluída
echo "Instalação e configuração concluídas com sucesso!"
