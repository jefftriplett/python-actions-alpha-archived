# action-python

## Usage

This example workflow would build, lint, and test a python project.

```
workflow "Build and Test" {
  on = "push"
  resolves = [
    "Test",
  ]
}

action "Build" {
  uses = "jefftriplett/python-actions@master"
  args = "pip install -r requirements.txt"
}

action "Lint" {
  uses = "jefftriplett/python-actions@master"
  args = "black --check"
  needs = ["Build"]
}

action "Test" {
  uses = "jefftriplett/python-actions@master"
  args = "pytest"
  needs = ["Lint"]
}
```
