if [ -z "$1" ]
  then
    echo "Digite a mensagem de commit:"
    read commit_message
  else
    commit_message="$1"
fi

# Adicionar e fazer o commit das alterações
git add .
git commit -m "$commit_message"

# Obter o nome da branch atual
branch=$(git rev-parse --abbrev-ref HEAD)

# Enviar as alterações para a branch atual
git push -u origin $branch