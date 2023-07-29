# Задание 1

Создайте собственный образ любой операционной системы (например, debian-11) с помощью Packer версии 1.5.0 (инструкция).

Чтобы получить зачёт, вам нужно предоставить скриншот страницы с созданным образом из личного кабинета YandexCloud.

# Решение

<img src='./01/01-1.png'/>

# Задание 2

2.1. Создайте вашу первую виртуальную машину в YandexCloud с помощью web-интерфейса YandexCloud.

2.2.* (Необязательное задание)
Создайте вашу первую виртуальную машину в YandexCloud с помощью Terraform (вместо использования веб-интерфейса YandexCloud). Используйте Terraform-код в директории (src/terraform).

Чтобы получить зачёт, вам нужно предоставить вывод команды terraform apply и страницы свойств, созданной ВМ из личного кабинета YandexCloud.

# Решение 

1. Листинг команды terraform apply:
> Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
>  \+ create
> 
> Terraform will perform the following actions:
> 
>  \# yandex_compute_instance.node1 will be created
>  \+ resource "yandex_compute_instance" "node1" {
>      + allow_stopping_for_update = true
>      + created_at                = (known after apply)
>      + description               = "node1"
>      + folder_id                 = (sensitive value)
>      + fqdn                      = (known after apply)
>      + gpu_cluster_id            = (known after apply)
>      + hostname                  = "node1"
>      + id                        = (known after apply)
>      + name                      = "node1"
>      + network_acceleration_type = "standard"
>      + platform_id               = "standard-v2"
>      + service_account_id        = (known after apply)
>      + status                    = (known after apply)
>      + zone                      = "ru-central1-a"
>
>      + boot_disk {
>          + auto_delete = true
>          + device_name = (known after apply)
>          + disk_id     = (known after apply)
>          + mode        = (known after apply)
>
>          + initialize_params {
>              + block_size  = (known after apply)
>              + description = (known after apply)
>              + image_id    = "fd8oeg8148mnn7rovner"
>              + name        = (known after apply)
>              + size        = 30
>              + snapshot_id = (known after apply)
>              + type        = "network-ssd"
>            }
>        }
>
>      + network_interface {
>          + index              = (known after apply)
>          + ip_address         = (known after apply)
>          + ipv4               = true
>          + ipv6               = (known after apply)
>          + ipv6_address       = (known after apply)
>           + mac_address        = (known after apply)
>           + nat                = true
>           + nat_ip_address     = (known after apply)
>           + nat_ip_version     = (known after apply)
>           + security_group_ids = (known after apply)
>           + subnet_id          = "e9bucm5vp5h466j5uf4d"
>         }
> 
>       + resources {
>           + core_fraction = 100
>           + cores         = 2
>           + memory        = 4
>         }
>     }
> 
> Plan: 1 to add, 0 to change, 0 to destroy.
> 
> Do you want to perform these actions?
>   Terraform will perform the actions described above.
>   Only 'yes' will be accepted to approve.
> 
>   Enter a value: yes
> 
> yandex_compute_instance.node1: Creating...
> yandex_compute_instance.node1: Still creating... [10s elapsed]
> yandex_compute_instance.node1: Still creating... [20s elapsed]
> yandex_compute_instance.node1: Still creating... [30s elapsed]
> yandex_compute_instance.node1: Still creating... [40s elapsed]
> yandex_compute_instance.node1: Still creating... [50s elapsed]
> yandex_compute_instance.node1: Still creating... [1m0s elapsed]
> yandex_compute_instance.node1: Creation complete after 1m7s [id=fhm6ccqp87o8t6gubvvb]
> 
> Apply complete! Resources: 1 added, 0 changed, 0 destroyed.

2. Скриншот созданной машины в YandexCloud:
   <img src='/02/02-1.png'/> 


# Задача 3

С помощью Ansible и Docker Compose разверните на виртуальной машине из предыдущего задания систему мониторинга на основе Prometheus/Grafana. Используйте Ansible-код в директории (src/ansible).

Чтобы получить зачёт, вам нужно предоставить вывод команды "docker ps" , все контейнеры, описанные в docker-compose, должны быть в статусе "Up".

# Решение

Вывод команды docker ps:
<img src="./03/Yandex VM docker containers.png" > 

# Задание 4

- Откройте веб-браузер, зайдите на страницу http://<внешний_ip_адрес_вашей_ВМ>:3000.
- Используйте для авторизации логин и пароль из .env-file.
- Изучите доступный интерфейс, найдите в интерфейсе автоматически созданные docker-compose-панели с графиками(dashboards).
- Подождите 5-10 минут, чтобы система мониторинга успела накопить данные.

Чтобы получить зачёт, предоставьте:

- скриншот работающего веб-интерфейса Grafana с текущими метриками, как на примере ниже.

# Решение 

<img src="./04/Yandex cloud Test VM grafana.png" > 
