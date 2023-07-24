# 1. Создание платного эккаунта

Заходим в (консоль yandex.cloud)[https://console.cloud.yandex.ru/]

# 2. Установка программы yandex-cloud

В windows вводим команду, которая скачивает установочный скрипт:

>  **iex (New-Object System.Net.WebClient).DownloadString('https://storage.yandexcloud.net/yandexcloud-yc/install.ps1')**

# 3. Создание сети

- Удаляем сеть по умолчанию и создаем свою командой:

> **yc vpc network create --name defaultnet --labels aim=leaning,cource=devops --description "Leaning devops net"**

- Создаем подсеть 10.1.2.0/24:

> **yc vpc subnet create --name defaultsubnet --network-name defaultnet --zone "ru-central1-a" --range 10.1.2.0/24 --description "Leaning devops subnet"**

# 4. Установка packer

- Качаем дистрбутив packer, например, (**отсюда**)[https://hashicorp-releases.yandexcloud.net/packer/]
- Распаковываем zip файл и прописываем каталог в который распаковали в переменную окружения PATH
- Проверяем, что работает, командой:
  > packer --version
- Добавляем плагин yandex.cloude в конфигурацию packer:
   1. Создаем файл config.pkr.hcl в директории проекта следующего содержания(**отступы важны!**):
   > packer {
   >  required_plugins {
   >   yandex = {
   >    version = ">= 1.1.2"
   >    source  = "github.com/hashicorp/yandex"
   >   }
   >  }
   >}
   2. В директории, в которой находится файл config.pkr.hcl, запускаем инсталляцию необходимого плагина yandex.cloud командой:
   > packer init  config.pkr.hcl

# 5. Установка terraform

- Скачать дистрибутив terraform
- Распаковать в папку и прописать папку в переменную окружения PATH
- Проверить корректность работы командой:
  > terraform --version
- Провести инициализацию terraform командой
  > terraform init
