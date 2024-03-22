locals {
  project = {
    "fem-eci-project" = {
      description = "Example description of project"
    }
  }

  workspace = {
    "fem-eci-tfe" = {
      description         = "Example description of project"
      execution_mode      = "remote"
      project_id          = module.project["fem-eci-project"].id
      vcs_repo_identifier = "${var.github_organization_name}/fem-eci-terraform-tfe"
    }

    "fem-eci-github" = {
      description         = "Example automation workspace for GitHub resources"
      execution_mode      = "remote"
      project_id          = module.project["fem-eci-project"].id
      vcs_repo_identifier = "${var.github_organization_name}/fem-eci-terraform-github"
    }

    # "fem-eci-aws-network" = {
    #   description         = "Automation for AWS network resources."
    #   execution_mode      = "remote"
    #   project_id          = module.project["fem-eci-project"].id
    #   vcs_repo_identifier = "${var.github_organization_name}/fem-eci-terraform-aws-network"

    #   variables = [
    #     {
    #       category = "terraform"
    #       hcl      = true
    #       key      = "azs"
    #       value    = jsonencode(["eu-west-1a", "eu-west-1b"])
    #     },
    #     {
    #       category = "terraform"
    #       key      = "cidr"
    #       value    = "10.0.0.0/16"
    #     },
    #     {
    #       category = "terraform"
    #       key      = "name"
    #       value    = "fem-eci"
    #     },
    #   ]
    # }

    # "fem-eci-aws-cluster-prod" = {
    #   description         = "Automation for AWS cluster resources."
    #   execution_mode      = "remote"
    #   project_id          = module.project["fem-eci-project"].id
    #   vcs_repo_identifier = "${var.github_organization_name}/fem-eci-terraform-aws-cluster"

    #   variables = [
    #     {
    #       category = "terraform"
    #       key      = "domain"
    #       value    = "unltd.link"
    #     },
    #     {
    #       category = "terraform"
    #       key      = "environment"
    #       value    = "prod"
    #     },
    #     {
    #       category = "terraform"
    #       key      = "name"
    #       value    = "fem-eci-nik-s"
    #     },
    #     {
    #       category = "terraform"
    #       key      = "vpc_name"
    #       value    = "fem-eci"
    #     },
    #   ]
    # }
  }
}
