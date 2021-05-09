move_after_compose <- function(from, to) {
  todir <- dirname(to)
  if (!isTRUE(file.info(todir)$isdir)) dir.create(todir, recursive = TRUE)
  file.rename(from = from,  to = to)
}
delete_aux_files <- function(dir = character()) {
  unlink(x = paste0(dir, grep(pattern = ".*tex",
                                  x = dir(dir), 
                                  value = TRUE, invert = TRUE)))
}


file.name <- "raw.pdf"
tex.dir <- "base package/tex_files/"
pdf.dir <- "base package/pdf_files/"
from.path <- paste0(tex.dir, file.name)
to.path <- paste0(pdf.dir, file.name)

unlink(x = to.path)
move_after_compose(from = from.path,to = to.path)
delete_aux_files(dir = tex.dir)


