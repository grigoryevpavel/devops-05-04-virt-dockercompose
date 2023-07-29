# Заменить на ID своего облака
# https://console.cloud.yandex.ru/cloud?section=overview
variable "yandex_cloud_id" {
  sensitive = true
}

# Заменить на Folder своего облака
# https://console.cloud.yandex.ru/cloud?section=overview
variable "yandex_folder_id" {
  sensitive = true
}
# Заменить на subnet в своем облаке
# https://console.cloud.yandex.ru/cloud?section=overview
variable "yandex_subnet_id" {
  sensitive = true
}
# Заменить на ID своего образа
# ID можно узнать с помощью команды yc compute image list
variable "centos-7-base" {
  default = "fd89igpo261qm6hdv2d4"
}
