balance <-1000
bet<-100
numGames<- 0
while(numGames <10 && balance > 0) {
  outcome <- craps()
  if(outcome ==0) {
    balance =balance -bet
    bet =min(balance, 2*bet)
  }else {
    balance =balance +bet
    bet =100
  }
  numGames =numGames +1
  cat ("After game" , numGames,"balance =",balance,"\n")
}