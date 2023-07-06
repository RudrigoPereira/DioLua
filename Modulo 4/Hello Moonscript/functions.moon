coins = 0

collectCoins = (amount=1) -> 
    coins += amount

printCoins = -> 
    print "Coins: " ..coins

collectCoins!
collectCoins 10
collectCoins 5
printCoins!