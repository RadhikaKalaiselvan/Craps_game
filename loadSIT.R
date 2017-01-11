# load SIT package
# Install curl
install.packages('curl', repos = 'http://cran.r-project.org')
install.packages("devtools",dependencies = TRUE)
#first install SIT.date
devtools::install_github('systematicinvestor/SIT.date')

library(curl)
curl_download('https://github.com/systematicinvestor/SIT/raw/master/SIT.tar.gz', 'sit',mode = 'wb',quiet=T)
install.packages('sit', repos = NULL, type='source')
library(SIT)
