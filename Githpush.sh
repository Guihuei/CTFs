#!/bin/bash

# Variáveis de configuração
REPO_DIR="/home/kali/Desktop/CTFs"
COMMIT_MSG="Atualizando repositório"
GITHUB_TOKEN="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"
GITHUB_USER="Guihuei"
REMOTE_REPO="https://github.com/$GITHUB_USER/CTFs.git"

# Entrar no diretório do repositório
cd $REPO_DIR

# Verificar se há arquivos não rastreados
git status | grep "Untracked files" &> /dev/null
if [ $? -eq 0 ]; then
    echo "Arquivos não rastreados encontrados, adicionando ao commit..."
    git add .
else
    echo "Nenhum arquivo novo para adicionar."
fi

# Commitar as alterações
git commit -m "$COMMIT_MSG"

# Realizar o push utilizando o token no lugar da senha
git push https://$GITHUB_USER:$GITHUB_TOKEN@github.com/$GITHUB_USER/CTFs.git

# Verificar se o push foi bem-sucedido
if [ $? -eq 0 ]; then
    echo "Push realizado com sucesso."
else
    echo "Falha ao realizar o push."
fi
