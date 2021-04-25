d <- 
  data.table::fread("/Users/aarongraybill/Downloads/Trade_DetailedTradeMatrix_E_All_Data/Trade_DetailedTradeMatrix_E_All_Data.csv",showProgress=T)

# d_small<- 
#   data.table::fread("/Users/aarongraybill/Downloads/Trade_DetailedTradeMatrix_E_All_Data/Trade_DetailedTradeMatrix_E_All_Data.csv",
#                     showProgress=T,
#                     nrows=100)


d_old <- 
  d

library(dplyr)
library(tidyr)



#Data currently too much to fully pivot wide, consider dropping or splitting
# By year to make the data more manageable.



# d_data <- 
#   d %>%
#   select(-ends_with("F")) %>% 
#   #pivot_longer(ends_with("F"),names_to="Date_meta",values_to="meta") %>% 
#   pivot_longer(-c(`Reporter Country Code`:Unit),names_to="Date",values_to="value")
# 
# d_meta <- 
#   d %>% 
#   #select(-ends_with("F")) %>%
#   pivot_longer(ends_with("F"),names_to="Date",values_to="meta") %>% 
#   select(c(`Reporter Country Code`:Unit,Date,meta))



d <- 
  left_join(d_data,d_meta)
