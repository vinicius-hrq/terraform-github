resource "github_repository" "template" {
  name        = "terraform-project-${var.repository_name}"
  description = "A public-visible repository created by Terraform"
  visibility  = "public"
  auto_init = true
}

resource "github_repository_file" "gitignore" {
  repository          = github_repository.template.name
  branch              = "main"
  file                = ".gitignore"
  content             = ".terraform\n.env\ntfplan\nterraform.tfstate*\n.terraform.lock*"
  commit_message      = "Managed by Terraform"
  overwrite_on_create = true
}