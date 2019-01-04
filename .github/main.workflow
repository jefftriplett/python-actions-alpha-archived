action "action a" {
  uses = "./action-a/"
}

workflow "New workflow" {
  on = "push"
  resolves = ["Hello World"]
}

action "Hello World" {
  uses = "./action-a"
  args = "Python"
}
