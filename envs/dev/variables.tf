variable "db_password" {
  description = "Master password for the RDS PostgreSQL database"
  type        = string
  sensitive   = true
}

variable "jwt_secret" {
  description = "JWT signing secret for the application"
  type        = string
  sensitive   = true
}

variable "github_org" {
  description = "GitHub username or organization that owns frontend and backend"
  type        = string
  default     = "rachanhr"
}

variable "github_org_id" {
  description = "Numeric GitHub organization/owner ID. Fetch via: curl https://api.github.com/orgs/<github_org>"
  type        = string
  default     = "165400484"
}

variable "github_repo_ids" {
  description = "Map of GitHub repo name to its numeric GitHub repository ID. Fetch via: curl https://api.github.com/repos/<github_org>/<repo>"
  type        = map(string)
  default = {
    "zen-pharma-frontend"     = "1326133568"
    "zen-pharma-backend"      = "1326132890"
    "zen-pharma-backend-lab1" = "1356592819"
  }
}