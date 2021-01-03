terraform {
  required_providers {
    ha = {
      version = "~> 0.2"
      source  = "Mikescops/homeassistant"
    }

  }
}
provider "vault" {
  address         = "https://192.168.1.77:8200"
  skip_tls_verify = true
}

data "vault_generic_secret" "HA_API_token" {
  path = "kv/ha_api_key"
}

data "vault_generic_secret" "HA_URL" {
  path = "kv/ha_url"
}

provider "ha" {
  host_url     = data.vault_generic_secret.HA_URL.data["url"]
  bearer_token = data.vault_generic_secret.HA_API_token.data["key"]
}

module "holiday_mood" {
  source               = "./holiday_mood"
  enable_lamps         = false
  lamps_name           = ["light.Lampe_TV", "light.Lampe_Cuisine", "light.Lampe_Salon"]
  enable_google_home   = true
  google_home_name     = "media_player.esclave_gentil"
  enable_tv            = true
  tv_name              = "media_player.android_tv"
  desired_holiday_mood = "easter"
  volume_level         = 0.5

}

