variable "github_token" {
    type = string
    description = "A GitHub OAuth / Personal Access Token."
}

variable "github_owner" {
    type = string
    description = "This is the target GitHub organization or individual user account to manage."
}

variable "repository_name" {
  type = string
  description = "The name of the repository"
  default = "ec2-instance"
}