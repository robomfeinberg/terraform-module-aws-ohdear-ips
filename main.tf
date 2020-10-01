provider "http" {
}

data "http" "ohdear" {
  url = "https://ohdear.app/used-ips.json"

  request_headers = {
    "Accept" = "application/json"
  }
}

locals {

  ohdear_ips = jsondecode(data.http.ohdear.body)[*]

}


