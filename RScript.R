args <- commandArgs(TRUE)
x <- c(args[1], args[2], args[3], args[4], args[5], args[6], args[7], args[8], args[9], args[10], args[11], args[12], args[13], args[14], args[15], args[16], args[17], args[18], args[19], args[20])
y = 1:20
df = data.frame(x, y)
linearMod <- lm(y ~ x, df)
futureDf = data.frame(x = 33)
output = predict(lm(y ~ x), futureDf)
return(output)
