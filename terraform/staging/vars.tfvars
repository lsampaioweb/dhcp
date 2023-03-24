project     = "DHCP"
environment = "Staging"

vm_instances = {
  "01" = {
    # VM
    startup = "order=2010"
    networks = {
      "01" = {
        tag = 4
      }
    }
    clone     = "ubuntu-22-04-server-raw"
    os_type   = "cloud-init"
    ipconfig0 = "ip=dhcp"

    # Project
    state    = "MASTER"
    priority = 250
  },
  "02" = {
    # VM
    startup = "order=2011"
    networks = {
      "01" = {
        tag = 4
      }
    }
    clone     = "ubuntu-22-04-server-raw"
    os_type   = "cloud-init"
    ipconfig0 = "ip=10.0.4.5/27,gw=10.0.4.1"

    # Project
    state    = "BACKUP"
    priority = 240
  }
}
