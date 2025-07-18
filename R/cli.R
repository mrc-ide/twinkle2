cli <- function(args = commandArgs(TRUE)) {
"Twinkle.
  
Usage:
  twinkle update-src [--branch=NAME] <name>
  twinkle install-packages <name>
  twinkle sync [--production] <name>
  twinkle delete <name>
  
Options:
  --branch=NAME   Github branch to use
" -> doc

  dat <- docopt::docopt(doc, args)
  if (dat[["update-src"]]) {
    twinkle_update_src(dat$name, branch=dat$branch)
  } else if (dat[["install-packages"]]) {
    twinkle_install_packages(dat$name)
  } else if (dat[["sync"]]) {
    twinkle_sync(dat$name, !dat[["production"]])
  } else if (dat[["delete"]]) {
    twinkle_delete_app(dat$name)
  }
  invisible()
}


install_cli <- function(path) {
  code <- c("#!/usr/bin/env Rscript",
            "twinkle2:::cli()")
  path_bin <- file.path(path, "twinkle")
  writeLines(code, path_bin)
  Sys.chmod(path_bin, "755")
  invisible(path_bin)
}
