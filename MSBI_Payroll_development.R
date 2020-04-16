
# Intro -------------------------------------------------------------------

# about this file:
#
#
#

# print notes to user?
# requirements of input files and expectations

cat("Notes to print to user", fill = T)
cat("\n\n\n\n")
Sys.sleep(5)
cat("\n\n\n\n")

# Libraries Setup and Memory Clear-----------------------------------------

# library()
# library(dplyr)
# library(tidyr)
library(lubridate) # needed for working with dates
# library(xlsx)
library(readxl) # needed for import
# library(reshape2)

# rm(list = ls()) # clearing out the memory?

# Inputs/Imports ----------------------------------------------------------

# site(s) selection
# file path for dictionaries; perform check on file
# file path for master data consolidated file; perform check on file
# file path for raw data; perform check on file
# start and end dates of desired output; perform check on file
# folder path for output; perform check on file

# temporary hardcoded file paths in separate untracked file


# pay_periods <- as_date(pay_periods)
output_date_start <- as.Date("2020-02-02")
output_date_end <- as.Date("2020-02-29")

# choices_date_range_start <-
#   format(sort(unique(
#     pay_periods$`Pay Period Start Date`[pay_periods$`Pay Period Start Date` <= Sys.Date()]),
#     decreasing = T))
# choices_date_range_end <-
#   format(sort(unique(
#     pay_periods$`Pay Period End Date`[pay_periods$`Pay Period End Date` <= Sys.Date()]),
#     decreasing = T))
# 
# output_date_start <-
#   select.list(choices = c(choices_date_range_start),
#               title = "Start of pay periods range?", multiple = F, graphics = T)
# output_date_end <-
#   select.list(choices = c(choices_date_range_end),
#               title = "End of pay periods range?", multiple = F, graphics = T)

# confirm ranges selected are acceptable?

# desired sites will be delayed to later development

# Data Transformations ----------------------------------------------------

# site <- "BIPTR"
# need to code if statements based on site input and site in data
# (e.g. MSBI --> BIPTR)

# data merge process

# data summarize/aggregate

# add column names

# generate upload data frame

# limit upload file down to the specified date range

# reformat dates for upload format

# Outputs/Exports ---------------------------------------------------------

file_name <- paste0(
  output_folder_path, "/", site, "_Payroll_",
  output_date_start, "_to_", output_date_end, ".csv"
)
# perform a check to see if the file already exisits?
write.table(payroll_upload,
            file = file_name, sep = ",", col.names = F, row.names = F
)
# will dates be in appropriate format to be uploaded immediately?
# will dates have a leading zero that's unnecessary and cause upload errors?
# will dates show up when opening the file in a format that appears OK for upload?

# append data in export file to master file for QC?
