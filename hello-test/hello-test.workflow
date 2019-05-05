workflow "local repo test" {
  on = "push"
  resolves = [
    "Cat hello",
  ]
}

action "Cat hello" {
  uses = "./hello-test/images"
  runs = "cat"
  args = "/hello.txt"
}

