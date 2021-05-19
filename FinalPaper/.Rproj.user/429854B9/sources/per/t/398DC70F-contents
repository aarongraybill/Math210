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

data[, "max"] <- apply(data[, 3:6], 1, max)



#Data currently too much to fully pivot wide, consider dropping or splitting
# By year to make the data more manageable.


d <- read.csv("/Users/aarongraybill/Downloads/data.csv")
colnames(d) <- c("iteration","cost","swiss_shock","french_shock","germ_shock","italy_shock","swiss_rho","french_rho","germ_rho","italy_rho","feasible")


d[, "max_shock"] <- apply(d[, 3:6], 1, max)
d[, "max_rho"] <- apply(d[, 7:10], 1, max)
library(ggplot2)
ggplot(d)+
  geom_point(aes(x=french_rho,y=french_shock,col=as.factor(feasible),alpha=.5))

lm(cost~swiss_rho+french_rho+germ_rho+swiss_shock+french_shock+germ_shock+feasible,data=d)
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
