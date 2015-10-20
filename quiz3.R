# q1
data(mtcars)
fit <- lm(mpg ~ cyl +wt, data = mtcars)
summary(fit)
# q3
fit5 <- lm(data = mtcars, mpg ~ factor(cyl) + wt)
fit_interaction <- update(fit5, mpg ~ factor(cyl)*wt)
anova(fit5, fit_interaction)

# q4
fit6 <- lm(mpg ~ I(wt * 0.5) + factor(cyl), data = mtcars)
summary(fit6)
# increase per half ton

# q6 find hat diag of most influencial
x <- c(0.586, 0.166, -0.042, -0.614, 11.72)
y <- c(0.549, -0.026, -0.127, -0.751, 1.344)
fit7 <- lm(y~x)
influence_measures <- influence.measures(fit7)
# although the fifth point has high yhat and dffit vals it is low on cook distance and dfbeta values: so the fourth point was chosen. Incorrect: misread exponential notation