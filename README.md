# terraform-module-aws-ohdear-ips
# OhDear.app whitelist terraform module

This module is very Alpha right now and does not conform to Terraform module standards at this time

https://www.terraform.io/docs/registry/modules/publish.html

### Example Usage

        module "ohdear" {
            source = "../modules/ohdear"

        }

        module "security_group" {
            source = "./modules/sgmodule"

            subnet_ids = module.ohdear.ohdear_ipv4
        }