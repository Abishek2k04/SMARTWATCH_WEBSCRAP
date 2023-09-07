#importing libraries
library(rvest)
library(dplyr)
library(robotstxt)
library(stringr)

# SCRAPING WEBSITE
link<- "https://www.beatxp.com/smartwatches-37/?gad=1&gclid=CjwKCAjw6eWnBhAKEiwADpnw9jOMA8BfMIAPKXsu8IRqH9hZetaK3hqXvsDCmc9ZsF-KRa-7qc-2PxoCmIwQAvD_BwE"

# Allowability
path = paths_allowed(link)

#HTML ELEMENTS FROM weBSITES
web <- read_html(link)

# SGREGATING NAMES
name <- web %>% html_nodes(".category-tile-product-name") %>% html_text()

#VIEW NAMe
View(name)
#SEGREGATING PRICE
Price <- web %>% html_nodes(".category-price") %>% html_text()

#VIew PRice
View(Price)

#SEGREGATE DISCOUNT
discount <- web %>% html_node(".category-tile-badge") %>% html_text()

#VIEW BATTERY\
View(discount)

#SEGREATE ORIGINALPRICE
originalprice <- web %>% html_node(".category-old-price") %>% html_text()

#VIEW MEMORY
View(originalprice)

#CREATING DATAFRAME
class.df<- data.frame(name, Price, discount, originalprice)

#EXPORT DATAFRAME
write.csv(df,smart watch.csv)




