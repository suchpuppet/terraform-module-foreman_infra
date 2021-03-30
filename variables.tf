variable "root_password" {
  type    = string
  default = "letmein123"
}

variable "foreman_host" {
  type    = string
  default = "foreman.maas"
}

variable "proxy_name" {
  type    = string
  default = "foreman.maas"
}
variable "proxy_url" {
  type    = string
  default = "https://foreman.maas:8443"
}

variable "ubuntu_mirror_path" {
  type    = string
  default = "http://archive.ubuntu.com/ubuntu"
}

variable "centos_mirror_path" {
  type    = string
  default = "http://mirror.centos.org/centos/$major/os/$arch"
}
