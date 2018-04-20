
alval_description = function(
  fields = alval_fields()
  ) {
  usethis::use_description(
    fields = fields)
  aut = fields$`Authors@R`

  if (!inherits(aut, "person")) {
    aut = eval(parse(text = aut))
  }
  main = format(aut, include = c("given", "family"))
  usethis::use_gpl3_license(name = main)
}
