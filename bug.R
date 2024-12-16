```R
# This code attempts to subset a data frame using a character vector of column names, 
# but it fails silently if any of the specified columns are missing.

df <- data.frame(A = 1:3, B = 4:6, C = 7:9)
cols_to_select <- c("A", "B", "D")  # Column "D" does not exist

subset_df <- df[, cols_to_select]
print(subset_df)  # No error, but column D is missing, and no warning is given.
```