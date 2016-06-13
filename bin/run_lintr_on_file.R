#!/usr/bin/env Rscript

file_paths_cvec <- base::commandArgs(trailingOnly=TRUE)
base::sink(file=stderr())
for (file_path_str in file_paths_cvec) {
	lints_lst <- lintr::lint(file_path_str)
	base::print(lints_lst)
	if (base::length(lints_lst) > 0L) {
		base::options(error=NULL)
		base::stop("Issues have been found. Please address them. ")
	}
}
base::sink()
