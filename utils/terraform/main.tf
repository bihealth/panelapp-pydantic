# Mangement of the GitHub project.

resource "github_repository" "panelapp-pydantic" {
  name        = "panelapp-pydantic"
  description = "Pydanic models for GenomicsEngland PanelApp API"

  has_issues = true
  visibility = "public"

  allow_auto_merge       = true
  allow_rebase_merge     = false
  allow_merge_commit     = false
  has_downloads          = true
  has_discussions        = true
  delete_branch_on_merge = true

  squash_merge_commit_message = "BLANK"
  squash_merge_commit_title   = "PR_TITLE"
}
