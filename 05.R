1.使用%>%簡化程式
library(magrittr)
load(url("https://storage.googleapis.com/r_rookies/straw_hat_df.RData"))
this_year <- Sys.Date() %>%
  format(format = '%Y') %>%
  as.numeric() %>%
  `-` (straw_hat_df$age) %>%
  paste(straw_hat_df$birthday, sep = "-") %>%
  as.Date()
this_year
2.計算BMI將bmi加入data frame
library(dplyr)
heights <- c(173, 168, 171, 189, 179)
weights <- c(65.4, 59.2, 63.6, 88.4, 68.7)
heights_and_weights <- data.frame(heights, weights)
heights_and_weights <- heights_and_weights %>%
  mutate(heights_in_meter = heights / 100) %>%
  mutate(bmi = weights / ((heights / 100)^2)) %>%
  print()
