workflow "local repo test" {
  on = "push"
  resolves = [
    "Cat hello",
    "Echo hello",
  ]
}

action "Cat hello" {
  uses = "cab105/aktion-test/hello-repo/images@hello-repo"
  runs = "cat"
  args = "/hello.txt"
}

action "Echo hello" {
  uses = "cab105/aktion-test/hello-repo/images@hello-repo"
  runs = "echo"
  args = "Hello from Aktion"
}

