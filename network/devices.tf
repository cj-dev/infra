resource "unifi_device" "Server_Room_Switch_1" {
  name = "Server Room Switch #1"

  # Some video camera
  port_override {
    number = 4
    port_profile_id = data.unifi_port_profile.VideoCameras.id
  }

  # maybe an ap?
  port_override {
    number = 5
    port_profile_id = data.unifi_port_profile.denhac_LAN.id
  }

  # maybe an ap?
  port_override {
    number = 6
    port_profile_id = data.unifi_port_profile.denhac_LAN.id
  }

  port_override {
    number = 7
    port_profile_id = data.unifi_port_profile.denhac_LAN.id
  }

  port_override {
    number = 8
    port_profile_id = data.unifi_port_profile.denhac_LAN.id
  }

  port_override {
    number = 9
    port_profile_id = data.unifi_port_profile.denhac_LAN.id
  }

  port_override {
    number = 10
    port_profile_id = data.unifi_port_profile.VideoCameras.id
  }

  port_override {
    number = 12
    port_profile_id = data.unifi_port_profile.denhac_LAN.id
  }

  port_override {
    number = 13
    port_profile_id = data.unifi_port_profile.denhac_LAN.id
  }

  port_override {
    number = 17
    port_profile_id = data.unifi_port_profile.denhac_LAN.id
  }

  port_override {
    number = 18
    port_profile_id = data.unifi_port_profile.VideoCameras.id
  }

  port_override {
    number = 19
    port_profile_id = data.unifi_port_profile.denhac_LAN.id
  }

  port_override {
    number = 24
    port_profile_id = unifi_port_profile.Sockwell_Port_Profile.id
  }
}

resource "unifi_device" "Back_Area_Switch" {
  name = "Back Area Switch"

  port_override {
    number = 4
    port_profile_id = data.unifi_port_profile.denhac_LAN.id
  }

  port_override {
    number = 5
    port_profile_id = data.unifi_port_profile.denhac_LAN.id
  }
}

resource "unifi_device" "Member_Space_Rack_Switch_1" {
  name = "Member Space Rack Switch #1"

  port_override {
    number = 1
    port_profile_id = data.unifi_port_profile.Storage_Wars.id
  }

  port_override {
    number = 2
    port_profile_id = data.unifi_port_profile.Storage_Wars.id
  }

  port_override {
    number = 3
    port_profile_id = data.unifi_port_profile.Storage_Wars.id
  }

  port_override {
    number = 4
    port_profile_id = data.unifi_port_profile.Storage_Wars.id
  }

  port_override {
    number = 7
    port_profile_id = data.unifi_port_profile.Storage_Wars.id
  }

  port_override {
    number = 9
    port_profile_id = data.unifi_port_profile.Storage_Wars.id
  }

  port_override {
    name = "Radioshack Idracs"
    number = 17
    port_profile_id = data.unifi_port_profile.denhac_proxmox.id
  }

  port_override {
    name = "Radioshack Idrac #2"
    number = 19
    port_profile_id = data.unifi_port_profile.denhac_proxmox.id
  }

  port_override {
    name = "denhac proxmox 01"
    number = 21
    port_profile_id = data.unifi_port_profile.denhac_proxmox.id
  }

  port_override {
    name = "denhac proxmox 02"
    number = 23
    port_profile_id = data.unifi_port_profile.denhac_proxmox.id
  }

  port_override {
    name = "Uplink"
    number = 24
  }
}

resource "unifi_device" "Main_Table_Switch" {
  name = "Main Table Switch"
}

resource "unifi_device" "denhac_Front_AP" {
  name = "denhac Front AP"
}
