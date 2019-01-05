workflow "New workflow" {
  on = "push"
  resolves = ["Python Action Black"]
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
