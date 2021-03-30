# Make sure foreman architectures are setup so we can associate them with the OSes we're making
resource "foreman_architecture" "x86_64" {
  name = "x86_64"

  lifecycle {
    ignore_changes = [operatingsystem_ids]
  }
}

resource "foreman_architecture" "amd64" {
  name = "amd64"

  lifecycle {
    ignore_changes = [operatingsystem_ids]
  }
}
