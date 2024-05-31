library(dplyr)
WA_jail_rates <- read.csv("https://github.com/melaniewalsh/Neat-Datasets/raw/main/us-prison-jail-rates-1990-WA.csv")

wa_rows <- nrow(WA_jail_rates)
wa_cols <- ncol(WA_jail_rates)

# finding the max black jail rate in Washington
wa_max_black <- WA_jail_rates %>%
  filter(black_jail_pop_rate == max(na.omit(black_jail_pop_rate)))

# finding the average black jail rate in Washington
avg_black_rate <- mean(na.omit(WA_jail_rates$black_jail_pop_rate))

#finding the max white jail rate in Washington
max_white_rate <- WA_jail_rates %>%
  filter(white_jail_pop_rate == max(na.omit(WA_jail_rates$white_jail_pop_rate)))

#finding the average white jail rate in Washington
avg_white_rate <- mean(na.omit(WA_jail_rates$white_jail_pop_rate))

#finding the average black jail rate in Washington in 1990
wa_jail_rates_1990 <- WA_jail_rates %>%
filter(year == 1990)

avg_1990_rate <- mean(na.omit(wa_jail_rates_1990$black_jail_pop_rate))

#finding the average black jail rate in Washington in 2018 (most recent year)
wa_jail_rates_2018 <- WA_jail_rates %>%
  filter(year == 2018)

avg_2018_rate <- mean(na.omit(wa_jail_rates_2018$black_jail_pop_rate))