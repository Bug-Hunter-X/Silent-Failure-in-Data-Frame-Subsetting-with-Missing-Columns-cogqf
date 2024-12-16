```R
# Improved version using `dplyr` for more robust subsetting
library(dplyr)

df <- data.frame(A = 1:3, B = 4:6, C = 7:9)
cols_to_select <- c("A", "B", "D")

subset_df <- df %>% select(all_of(cols_to_select))
print(subset_df) # Correctly handles missing columns

#Alternative using base R with explicit checking
subset_df2 <- df[, intersect(names(df), cols_to_select)]
print(subset_df2) #Correctly handles missing columns using base R
```