library(openxlsx)

df_to_format <- data.frame("Date" = Sys.Date()-0:4,
                           "Logical" = c(TRUE, FALSE, TRUE, TRUE, FALSE),
                           "Currency" = paste("$",-2:2),
                           "Accounting" = -2:2,
                           "hLink" = "https://CRAN.R-project.org/", 
                           "Percentage" = seq(-1, 1, length.out=5),
                           "TinyNumber" = runif(5) / 1E9, stringsAsFactors = FALSE)

## Formatting can be applied simply through the write functions
## global options can be set to further simplify things
options("openxlsx.borderStyle" = "thin")
options("openxlsx.borderColour" = "#4F81BD")
options("openxlsx.withFilter" = FALSE)


## create a workbook and add a worksheet


# create workbook
wb_format <- createWorkbook()

## writing as an Excel Table

addWorksheet(wb_format, sheetName = "writeDataTable")


hs1_formatting <- createStyle(fgFill = "#EE5859", halign = "CENTER", textDecoration = "Bold", border = "Bottom", fontColour = "white")

hs2_formatting <- createStyle(fgFill = "#EE5859", halign = "CENTER", textDecoration = "Bold", fontColour = "white", fontSize = 16, wrapText = T, valign = "top")

mergeCells(wb = wb_format, sheet = "writeDataTable", rows = 1, cols = 2:7)
writeData(wb = wb_format, sheet = "writeDataTable", x = "Adding a heading", startRow = 1, startCol = 2)
addStyle(wb = wb_format, sheet = "writeDataTable", hs2_formatting, rows = 1, cols = 2:7, gridExpand = TRUE)

writeData(wb = wb_format, sheet = "writeDataTable", x = df_to_format, startRow = 4, startCol = 2, 
          colNames = FALSE)

saveWorkbook(wb_format, "outputs/testing_openxls_v3.xlsx", overwrite = TRUE)
openXL(file = paste0("outputs/testing_openxls_v3.xlsx"))

