import subprocess
import os

# Defina o repositório e o token de autenticação
repo_path = "/home/kali/Desktop/CTFs/"  # Caminho local do seu repositório
github_token = "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"
repo_url = f"https://{github_token}@github.com/usuario/repo.git"  # Substitua 'usuario/repo' pelo seu repositório

# Defina o diretório do repositório
os.chdir(repo_path)

# Adiciona todas as mudanças no repositório
subprocess.run(["git", "add", "."])

# Commitando as alterações
commit_message = "Automated commit message"
subprocess.run(["git", "commit", "-m", commit_message])

# Enviando as alterações para o repositório remoto
subprocess.run(["git", "push", repo_url, "master"])
