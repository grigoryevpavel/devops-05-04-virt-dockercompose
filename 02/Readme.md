# 1. Установка terraform

- Скачать дистрибутив terraform
- Распаковать в папку и прописать папку в переменную окружения PATH
- Проверить корректность работы командой:
  > terraform --version
- Создать файл .terraformrc с содержимым:
  > provider_installation {
  >  network_mirror {
  >    url = "https://registry.comcloud.xyz/"
  >  }
  > }
- Провести инициализацию terraform командой
  > terraform init