Сделайте один раз до следующей лекции:

1. Откройте ссылку → нажмите Fork → Create fork
   (создаст вашу личную копию)

2. Клонируйте к себе:
   git clone git@github.com:ВАШ_USERNAME/devops-bootcamp.git
   cd devops-bootcamp

3. Подключите моё репо для обновлений:
   git remote add upstream git@github.com:psyhod-github/devops-bootcamp.git

Перед каждой лекцией:
   git pull upstream main



aws ec2 import-key-pair \
  --key-name "terraform-hw-kk-key" \
  --public-key-material fileb://~/.ssh/terraform-hw-kk-key.pub \
  --region us-west-2 \
  --profile pasv-hw


  ssh -i ~/.ssh/terraform-hw-kk-key ec2-user@44.245.24.45


  docker inspect --format='{{json .Config.ExposedPorts}}' redis:7-alpine