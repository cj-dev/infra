resource "unifi_wlan" "denhac" {
  name       = "denhac"
  passphrase = var.denhac_password
  security   = "wpapsk"
  wlan_band  = "both"
  no2ghz_oui = true
  network_id    = unifi_network.denhac_LAN.id
  ap_group_ids  = [data.unifi_ap_group.default.id]
  user_group_id = data.unifi_user_group.default.id
}

# This is not active
# resource "unifi_wlan" "denhac-ad-free" {
  # name       = "denhac-ad-free"
  # passphrase = var.denhac_ad_free_password
  # security   = "wpapsk"
  # wlan_band  = "both"
  # no2ghz_oui = true

  # # Not sure what this is but it's not in the provider yet
  # # bbs_transition = true

  # network_id    = unifi_network.denhac-ad-free-net.id
  # ap_group_ids  = [data.unifi_ap_group.default.id]
  # user_group_id = data.unifi_user_group.default.id
# }

resource "unifi_wlan" "iot" {
  name       = "iot"
  passphrase = var.iot_password
  security   = "wpapsk"
  wlan_band  = "both"
  no2ghz_oui = true
  network_id    = unifi_network.denhac-iot-net.id
  ap_group_ids  = [data.unifi_ap_group.default.id]
  user_group_id = data.unifi_user_group.default.id
}

resource "unifi_wlan" "SecureSet-Academy" {
  name       = "SecureSet-Academy"
  passphrase = var.secure_set_academy_password
  security   = "wpapsk"
  wlan_band  = "both"
  no2ghz_oui = true
  network_id    = unifi_network.SecureSet-Net-Clone.id
  ap_group_ids  = [data.unifi_ap_group.default.id]
  user_group_id = data.unifi_user_group.default.id
}