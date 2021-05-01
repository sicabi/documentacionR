move_after_compose <- function(from, to) {
  todir <- dirname(to)
  if (!isTRUE(file.info(todir)$isdir)) dir.create(todir, recursive=TRUE)
  file.rename(from = from,  to = to)
}

unlink(x = "base package/pdf_files/all_names.pdf")
  move_after_compose(from = "base package/tex_files/all_names.pdf",
               to = "base package/pdf_files/all_names.pdf")

  dir_tex <- "base package/tex_files/"
  unlink(x = paste0(dir_tex, grep(pattern = ".*gz",
                x = dir("base package/tex_files/"), 
                value = TRUE)))
  unlink(x = paste0(dir_tex, grep(pattern = ".*log",
                                  x = dir("base package/tex_files/"), 
                                  value = TRUE)))
  unlink(x = paste0(dir_tex, grep(pattern = ".*toc",
                                  x = dir("base package/tex_files/"), 
                                  value = TRUE)))


