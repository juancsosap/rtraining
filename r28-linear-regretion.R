# Initial Data
age = c(1, 2, 3, 5, 7, 9, 11, 13)
print(age)

heigh = c(76.11, 86.45, 95.27, 109.18, 122.03, 133.73, 143.73, 156.41)
print(heigh)

data = data.frame(age, heigh)
print(data)

x = data$age
print(x)

y = data$heigh
print(y)

plot(x, y)

plot(data)

# Linear Methods
rl = lm(y~x)
print(rl)
print(summary(rl))

abline(rl, col="red")
