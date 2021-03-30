# Setup Foreman Operating System
# Dependency alert: The architecture needs to be setup already so it can be associated with this OS
# Do that in architectures.tf in the root of this repo
module "centos_7" {
  source = "git@gitlab.scottslab.net:terraform/tf-module-foreman_operatingsystem"
  os = {
    name        = "CentOS"
    family      = "Redhat"
    mirror_path = var.centos_mirror_path
    major       = 7
  }

  architecture = "x86_64"
  depends_on   = [foreman_architecture.x86_64]
}

module "ubuntu_focal" {
  source = "git@gitlab.scottslab.net:terraform/tf-module-foreman_operatingsystem"
  os = {
    name         = "Ubuntu"
    family       = "Debian"
    mirror_path  = var.ubuntu_mirror_path
    release_name = "focal"
    major        = 20
  }
  minor_release = 04

  architecture = "amd64"

  depends_on = [foreman_architecture.amd64]
}