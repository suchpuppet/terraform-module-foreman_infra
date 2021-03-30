resource "foreman_smartproxy" "foreman" {
  name = var.proxy_name
  url  = var.proxy_url
}