
input_dir = "/Projects/r_test/Input"
output_dir = "/Projects/r_test/Output"
# set output location
setwd(input_dir)

# install and load pandoc
#library(pandoc)

# Switching Pandoc version by activating a specific one
#pandoc_activate("2.17.1.1")

# To make it into HTML output
rmarkdown::render("exp_demo_lc_ms_data_processing.Rmd", "html_document")

# copy to output dir
file.copy("exp_demo_lc_ms_data_processing.html", output_dir)
