project     = "DHCP"
environment = "Production"

vm_instances = {
  "01" = {
    # VM
    startup = "order=16"
    networks = {
      "01" = {
        tag = 2004
      }
    }

    # Project
    state    = "MASTER"
    priority = 250
  },
  "02" = {
    # VM
    startup = "order=17"
    networks = {
      "01" = {
        tag = 2004
      }
    }

    # Project
    state    = "BACKUP"
    priority = 240
  }
}
