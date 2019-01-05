workflow "New workflow" {
  on = "push"
  resolves = ["Python Action Black", "Python Action Pytest"]
}

action "Python Action Black" {
  uses = "./action-black"
  args = "."
}

action "Python Action Pytest" {
  uses = "./action-pytest"
  args = "."
}
