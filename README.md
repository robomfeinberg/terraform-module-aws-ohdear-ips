Terraform whitelist ip module for OhDear.app 
==================

This module is very Alpha right now and does not conform to Terraform module standards at this time and is not registered.

https://www.terraform.io/docs/registry/modules/publish.html


Maintainers
-----------

This module is maintained by the DevOps team at [RMG Media](https://rmgmedia.com/).

# Requirements


-	[Terraform](https://www.terraform.io/downloads.html) >=0.12.x

## Usage

The module is a data data source module which provides IPv4 and IPv6 in 2 outputs. Use your favorite security group module and use the output variable. 

        module "ohdear" {
            source = "../modules/ohdear"

        }

        module "security_group" {
            source = "./modules/sgmodule"

            subnet_ids = module.ohdear.ohdear_ipv4
        }

## Examples

- [Minimal](https://github.com/tmknom/terraform-aws-ohdear-ips/tree/master/examples/minimal)

## Outputs


## License

Apache 2 Licensed. See LICENSE for full details.