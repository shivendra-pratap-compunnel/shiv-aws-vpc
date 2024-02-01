locals {
  tags = {
    managed_by          = "compunnel" # validate can(regex())?
    cost_center         = ""          # TODO set not null
    project             = "project"
    project_owner       = ""    # TODO set not null
    project_owner_email = ""    # TODO verify email and domain
    ENV                 = "dev" # TODO set limited options dev|stage|prod?
    customer            = ""    # TODO set not null
    # tags for automation, access control
    # TODO tag standardization
  }
}

module "base_infra" {
  source = "git::https://github.com/CD-TeraformModules/aws-vpc.git"
  name = "${local.tags.managed_by}-${local.tags.project}"
}
