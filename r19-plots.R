sales = c(5000, 3500, 7000, 4000, 9000, 10000, 7000)
clients = c(5, 4, 7, 4, 9, 10, 7)
days = c("LUN", "MAR", "MIE", "JUE", "VIE", "SAB", "DOM")
colors = rainbow(length(sales))

# Pie Chart Plot
pie(sales, days, col = colors)

# Bar Chart Plot
names(sales) = days
barplot(sales, col = "red", border = "gray")

# Line Plot
plot(sales, type = "o")
plot(sales, type = "l", col = "red")

# Scatter Plot
plot(clients, sales)
