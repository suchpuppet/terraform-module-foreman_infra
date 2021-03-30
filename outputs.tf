output "os_map" {
  value = {
    centos_7     = module.centos_7
    ubuntu_focal = module.ubuntu_focal
  }
}
