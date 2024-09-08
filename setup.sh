#!/bin/bash


#!/bin/bash

# Logotipo "Gabriel Java" no terminal
echo "  ____              _        _           _   "
echo " / ___|_ __   __ _| |_ __ _| | __ _ ___| |_ "
echo "| |  _| '_ \ / _\` | __/ _\` | |/ _\` / __| __|"
echo "| |_| | | | | (_| | || (_| | | (_| \__ \ |_ "
echo " \____|_| |_|\__,_|\__\__,_|_|\__,_|___/\__|"
echo ""
echo "      _            _        _       _     "
echo "     | | ___  __ _| |_ __ _| |_ ___ | |_   "
echo "  _  | |/ _ \/ _\` | __/ _\` | __/ _ \| __|  "
echo " | |_| |  __/ (_| | || (_| | || (_) | |_   "
echo "  \___/ \___|\__,_|\__\__,_|\__\___/ \__|  "

# Pausar por 3 segundos para o usuário ver o logotipo
sleep 5

# Continuar com o restante do script...


# Atualizar o sistema
sudo apt update && sudo apt upgrade -y
echo "Sistema atualizado com sucesso."

sleep 3

# Instalar o Java (OpenJDK 17)
if ! java -version &> /dev/null; then
    echo "Java não encontrado. Instalando o OpenJDK 17..."
    sudo apt install openjdk-17-jdk -y
    # Configurar variáveis de ambiente
    echo "export JAVA_HOME=/usr/lib/jvm/java-17-openjdk-amd64" >> ~/.bashrc
    echo "export PATH=\$JAVA_HOME/bin:\$PATH" >> ~/.bashrc
    source ~/.bashrc
    echo "Java instalado e configurado com sucesso."
else
    echo "Java já está instalado."
fi

# Verificar a instalação do Java
java -version

sleep 3

# Instalar o Snap se não estiver instalado
if ! command -v snap &> /dev/null; then
    echo "Snap não encontrado. Instalando o Snap..."
    sudo apt install snapd -y
    # Habilitar e iniciar o serviço Snap
    sudo systemctl enable snapd
    sudo systemctl start snapd
    echo "Snap instalado e habilitado com sucesso."
else
    echo "Snap já está instalado."
fi

sleep 3

# Instalar o Git
sudo apt install git -y
echo "Git instalado com sucesso."

# Verificar a instalação do Git
git --version


sleep 3


# Instalar o Maven
sudo apt install maven -y
echo "Maven instalado com sucesso."

# Verificar a instalação do Maven
mvn -version

sleep 3

# Instalar o PostgreSQL
sudo apt install postgresql postgresql-contrib -y
# Iniciar o serviço do PostgreSQL e habilitá-lo para iniciar com o sistema
sudo systemctl start postgresql
sudo systemctl enable postgresql
echo "PostgreSQL instalado e configurado com sucesso."

sleep 3

# Instalar Visual Studio Code usando Snap
sudo snap install code --classic
echo "Visual Studio Code instalado com sucesso."

sleep 3

# Instalar DBeaver Community usando Snap
sudo snap install dbeaver-ce
echo "DBeaver Community instalado com sucesso."

sleep 3

# Baixar IntelliJ IDEA Community Edition
IDEA_VERSION="2024.1.6"
IDEA_TAR="ideaIC-${IDEA_VERSION}.tar.gz"
IDEA_URL="https://download.jetbrains.com/idea/$IDEA_TAR"
IDEA_INSTALL_DIR="/opt/idea-IC"

# Diretório temporário para download
TEMP_DIR="/tmp"

# Fazer download do IntelliJ IDEA
wget -O $TEMP_DIR/$IDEA_TAR $IDEA_URL
echo "Download do IntelliJ IDEA concluído."


# Criar diretório de instalação
sudo mkdir -p $IDEA_INSTALL_DIR

# Descompactar o IntelliJ IDEA
sudo tar -xzf $TEMP_DIR/$IDEA_TAR -C $IDEA_INSTALL_DIR --strip-components=1
echo "IntelliJ IDEA descompactado com sucesso."

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

sleep 3

# Permissão para executar o IntelliJ IDEA
sudo chmod +x /usr/local/bin/idea

# Instalação concluída
echo "IntelliJ IDEA instalado e configurado com sucesso."

# Mensagem final de conclusão
echo "Todas as instalações e configurações foram concluídas com sucesso!"
