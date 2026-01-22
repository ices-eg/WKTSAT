# Render template for the report

# Before: 
# After: create docx file of the report

###-----------------------------------------------------------------------------
### Load packages
library("quarto")
library("here")
library("rmarkdown")
library("flextable")
library("icesTAF")

###-----------------------------------------------------------------------------
### Render report
quarto::quarto_render(input = "report.qmd",
                  output_format = "docx",
                  output_file = "report.docx")
