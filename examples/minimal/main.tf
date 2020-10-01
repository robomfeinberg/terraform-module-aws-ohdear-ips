
        module "ohdear" {
            source = "../modules/ohdear"

        }
        # Use your security group module here
        module "security_group" {
            source = "./modules/sgmodule"

            subnet_ids = module.ohdear.ohdear_ipv4
        }