# 1. Включаем ubuntu

1. В поиске набираем "Включение или отключение компонентов Windows". Нажимаем.
2. В диалоге ищем и включаем "Подсистема Windows для Linux"(WSL)
3. Качаем Ubuntu в Microsoft Store.

# 2. Устанавливаем ansible

 В окне ОС Ubuntu вводим следующие команды:
   > $ sudo apt-get update
   > $ sudo apt-get install software-properties-common
   > $ sudo apt-add-repository ppa:ansible/ansible
   > $ sudo apt-get update
   > $ sudo apt-get install ansible -y

# 3. Подключение к Yandex VM 51.250.120.168

    1. Командой ssh:
       > ssh -i id_rsa centos@51.250.120.168 //ip-адрес ВМ yandex
       Файл закрытого ключа id_rsa должен находится в текущей директории или следует указать относительный путь
    2. Через пути:
   - Сгенерировать файл личного ключа на основе id_rsa, использовав утилиту PuttyGen:
      1. Выбрать в меню Converttions команду Import Keys
      2.  Выбрать файл id_rsa(файл закрытого ключа)
      3.  После конвертации в puttygen нажать кнопку "Save private key". 
      4.  Указать имя файла первичного ключа без расширения. В результате будет сгенерирован файл с расширением .ppk
   - Запустить утилиту putty и подключится к ВМ yandex:
      1. Запустить утилиту putty
      2. Указать ip-адрес:  51.250.120.168
      3. На вкладке Connection>SSH>Auth>Credentials в поле первичного ключа (private key) выбрать в созданный файл с расширением .ppk
      4. Перейти на вкладку основных параметров и не забыть сохранить сделанные настройки, нажав кнопку Save
# 4. Разворачиваем playbook ansible

В файле inventory должен быть указан  ansible_host равным публичному ip-адресу ВМ yandex(например 51.250.120.168)

В ВМ ubuntu под root выполняем команду:
> ansible-playbook --private-key id_rsa provision.yml


