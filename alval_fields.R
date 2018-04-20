
alval_fields = function(
  title = "",
  description = "",
  given = "Alessandra (Ali)",
  family = "Valcarcel",
  email = "alval@pennmedicine.upenn.edu",
  role = c("aut", "cre"),
  comment = c(ORCID = "0000-0002-0869-1948")
  ) {

  role = capture.output(
    dput(role)
  )
  comment = capture.output(
    dput(comment)
  )
  aut = paste0('c(person(given = "', given, '",',
               'family = "', family, '",',
               'email = "', email, '",',
               'role = ', role,
                'comment = ', comment, '))')

  # main = format(aut, include = c("given", "family", "email"))
  # aut = capture.output(
  #   dput(aut)
  # )
  # aut = paste(aut, collapse = "\n    ")

  list(
    Type = "Package",
    Title = title,
    Description = description,
    Version = "0.1.0",
    `Authors@R` = aut,
    # Maintainer = main,
    Encoding = "UTF-8",
    LazyData = "true",
    Suggests = "knitr, rmarkdown, covr",
    VignetteBuilder = "knitr"
  )
}
