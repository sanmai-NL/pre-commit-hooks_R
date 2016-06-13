#!/usr/bin/env Rscript

file_paths_cvec <- base::commandArgs(trailingOnly=TRUE)
for (file_path_str in file_paths_cvec) {
	base::print(lintr::lint(file_path_str))
}
