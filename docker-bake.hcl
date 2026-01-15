group "default" {
  targets = ["pandoccer", "nginxer"]
}

target "pandoccer" {
  context = "./tools/pandoccer"
  tags    = ["pandoccer:latest"]
  load    = true
}

target "nginxer" {
  context = "./tools/nginxer"
  tags    = ["nginxer:latest"]
  load    = true
}
