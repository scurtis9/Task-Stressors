rmat <- matrix(c(1.0, .40, .21, .46, .40, 1.0, .30, .25, .21, .30, 1.0, .10, .46, .25, .10, 1.0), nrow = 4, byrow = T)
mu <- c(0,0,0,0)
mat <- data.frame(mvrnorm(100, Sigma = rmat, mu = mu, empirical = TRUE))
names(mat) <- c("Workload", "Anxiety", "Depression", "Frustration")
qplot(Workload, Anxiety, data = mat) + stat_smooth(method="lm", se=FALSE)

r1 <- rPlot(Workload ~ Anxiety, data = mat, type="points")
r1$addControls("x", "Anxiety", names(mat))
r1$addControls("y", "Workload", names(mat))
r1
