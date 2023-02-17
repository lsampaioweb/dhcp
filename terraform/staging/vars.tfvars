project     = "DHCP"
environment = "Staging"

vm_instance = {
  "01" = {
    # VM
    startup = "order=2016"
    networks = {
      "01" = {
        tag = 4
      }
    }

    # Project
    state    = "MASTER"
    priority = 250
  },
  "02" = {
    # VM
    startup = "order=2017"
    networks = {
      "01" = {
        tag = 4
      }
    }

    # Project
    state    = "BACKUP"
    priority = 240
  }
}
