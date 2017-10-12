args <- commandArgs(TRUE)
y <- c(as.numeric(args[1]), as.numeric(args[2]), as.numeric(args[3]), as.numeric(args[4]), as.numeric(args[5]), as.numeric(args[6]), as.numeric(args[7]), as.numeric(args[8]), as.numeric(args[9]), as.numeric(args[10]), as.numeric(args[11]), as.numeric(args[12]), as.numeric(args[13]), as.numeric(args[14]), as.numeric(args[15]), as.numeric(args[16]), as.numeric(args[17]), as.numeric(args[18]), as.numeric(args[19]), as.numeric(args[20]))
# <- as.numeric(c(args[1], args[2], args[3],args[4],args[5],args[6], args[7], args[8], args[9], args[10], args[11], args[12], args[13], args[14], args[15], args[16], args[17], args[18], args[19], args[20])
x = 1:20
#y = 1:20
df = data.frame(x, y)
linearMod <- lm(y ~ x, df)
futureDf = data.frame(x = 33)

output = predict(lm(y ~ x), futureDf)
write(output, file="fromR", ncolumns = 1, append = FALSE)

