# check each functions options and if i want to add any to my wrapper function
library(usethis)

path = '/Users/alval/Desktop'
pkg_name = 'test4'
git = TRUE

alval_flow(path = path,
           pkg_name = pkg_name,
           vignette_name = NULL,
           testing = FALSE,
           title = "What the Package Does (One Line, Title Case)",
           description = "What the package does (one paragraph).",
           firstname = "Alessandra (Ali)",
           middlename = "M.",
           lastname = "Valcarcel",
           email = "alval@pennmedicine.com",
           role = c("aut", "cre"),
           git = TRUE,
           ci = FALSE)

alval_flow <- function(path = NULL,
                       pkg_name = NULL,
                       vignette_name = NULL,
                       testing = TRUE,
                       title = "What the Package Does (One Line, Title Case)",
                       description = "What the package does (one paragraph).",
                       firstname = "Alessandra (Ali)",
                       middlename = "M.",
                       lastname = "Valcarcel",
                       email = "alval@pennmedicine.com",
                       role = c("aut", "cre"),
                       git = FALSE,
                       ci = FALSE){
  # Simple Check for proper path and inputs
  if(is.null(path) | is.null(pkg_name)){
    return('Need to specify a path to place the package and a name for the package')
  } else if(dir.exists(path) == FALSE){
    return('Path does not exist. Please verify.')
  } else {
    full_path = file.path(path, pkg_name)
  }

  # Create R Package
  usethis::create_package(path = full_path, open = FALSE)

  # Use Roxygen with markdown
  usethis::use_roxygen_md()

  # Create skeleton readme files with common sections
  usethis::use_readme_rmd(open = FALSE)
  usethis::use_readme_md(open = FALSE)

  # Performs general setup for vignettes and initializes a new vignette
  if(is.null(vignette_name)==FALSE){
    usethis::use_vignette(vignette_name)
  }
  # Sets up testing infrastructure
  if(testing == TRUE){
    usethis::use_testthat()
  }

  # Populate description
  defaults = list(
    Package = pkg_name,
    Version = "0.0.1",
    Title = title,
    Description = description,
    "Authors@R" = person(given = firstname,
                         family = lastname,
                         middle = middlename,
                         email = email,
                         role = role),
    License = "GPL-2",
    Encoding = "UTF-8",
    LazyData = "true",
    ByteCompile = "true"
  )

  usethis::use_description(defaults)

  if(git == TRUE & ci == FALSE){
    setwd(full_path)
    usethis::use_git()
    usethis::use_github()
  }
  if(git == TRUE & ci == TRUE){
    setwd(full_path)
    usethis::use_git()
    usethis::use_github()
    usethis::use_travis(browse = interactive())
    usethis::use_coverage(type = c("codecov", "coveralls"))
    usethis::use_appveyor(browse = interactive())
  }

}















