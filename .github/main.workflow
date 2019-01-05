workflow "New workflow" {
  on = "push"
  resolves = ["Filters for GitHub Actions"]
}

action "Python Action Pytest" {
  uses = "./python-action-pytest"
  args = "."
}

action "Python Action Black" {
  uses = "./python-action-black"
  needs = ["Python Action Pytest"]
  args = "."
}

action "Filters for GitHub Actions" {
  uses = "actions/bin/filter@b2bea07"
  needs = ["Python Action Black"]
  args = "branch master"
}
