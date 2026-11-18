## ----setup--------------------------------------------------------------------
library(jmpread)
path <- system.file("extdata", "jmpreader_jl", "example1",
                    "example1.jmp", package = "jmpread")
data <- read_jmp(path)
data[, c("ints", "floats")]

## ----select-------------------------------------------------------------------
read_jmp(path, select = c("floats", "ints"), metadata = FALSE)
data[["char utf8"]]

## ----temporal-----------------------------------------------------------------
data$date
data$duration
read_jmp(path, select = "date", temporal = "raw", metadata = FALSE)

## ----metadata-----------------------------------------------------------------
attr(data, "jmp_metadata")$build
attr(data[["date"]], "jmp_metadata")$storage

