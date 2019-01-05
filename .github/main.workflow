workflow "New workflow" {
  on = "push"
  resolves = ["Python Docker Action Black"]
}

action "Hello World" {
  uses = "./action-hello-world"
  args = "Python"
}

action "Python Docker Action Black" {
  uses = "./action-black"
  needs = ["Hello World"]
  args = "."
}
