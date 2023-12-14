resource "aws_codecommit_repository" "humangov-application" {
  repository_name = "humangov-application"
  description     = "Git repo for storing HumanGov application source code"

  lifecycle {
    prevent_destroy = true
  }
}

resource "aws_codecommit_repository" "humangov-infrastructure" {
  repository_name = "humangov-infrastruture"
  description     = "Git repo for storing HumanGov infrastructure code"

  lifecycle {
    prevent_destroy = true
  }
}