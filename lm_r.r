args = commandArgs(trailingOnly=TRUE)
filename = args[1]
df = read.csv(filename)

head(df)

png("rlm_scatter.png")
plot(df$x,df$y,
    main = "Scatter Plot",
    xlab = "X Axis",
    ylab = "Y Axis")
dev.off()

model = lm(y~x, data = df)

summary_stats = summary (model)

summary_stats$r.squared

coef(model)

coef(model)[1]

coef(model)[2]

y_pred = predict(model, df)
png("rlm_fit.png")
plot(df$x,y_pred)

plot(df$x,df$y, 
     main = "Linear Regression",
     xlab = "X Axis",
     ylab = "Y Axis")
lines(df$x,y_pred)
dev.off()
















