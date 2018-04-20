
travis_badge = function(gh_username) {
  desc <- desc::description$new()
  out <- as.list(desc$get(desc$fields()))
  repo = paste0(gh_username, "/", out$Package)

  paste0(
    "[![Travis build status](https://travis-ci.org/",
    repo,
    ".svg?branch=master)](https://travis-ci.org/", repo, ")")
}

appveyor_badge = function(gh_username) {
  desc <- desc::description$new()
  out <- as.list(desc$get(desc$fields()))
  pack =  out$Package
  pack = gsub("[.]", "-", pack)
  repo = paste0(gh_username, "/", pack)
  paste0(
    "[![AppVeyor Build Status](",
    "https://ci.appveyor.com/api/projects/status/github/",
    repo, "?branch=master&svg=true)](",
    "https://ci.appveyor.com/project/", repo, ")")
}

coverage_badge = function(...,
                          coverage_type = "coveralls") {

  coverage_type = match.arg(
    coverage_type,
    choices =  c("codecov", "coveralls"))
  args = list(...)
  func = switch(
    coverage_type,
    codecov = codecov_badge,
    coveralls = coveralls_badge)
  res = do.call(func, args = args)
  return(res)
}

coveralls_badge = function(gh_username) {
  desc <- desc::description$new()
  out <- as.list(desc$get(desc$fields()))
  repo = paste0(gh_username, "/", out$Package)
  paste0(
    "[![Coverage status](https://coveralls.io/repos/github/",
    repo, "/badge.svg?branch=master)](",
    "https://coveralls.io/r/", repo, "?branch=master)")
}

codecov_badge = function(gh_username) {
  desc <- desc::description$new()
  out <- as.list(desc$get(desc$fields()))
  repo = paste0(gh_username, "/", out$Package)
  paste0(
    "[![Coverage status](https://codecov.io/gh/",
    repo, "/branch/master/graph/badge.svg)](",
    "https://codecov.io/gh/", repo, ")")
}
