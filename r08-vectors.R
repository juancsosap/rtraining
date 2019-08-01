# Vectors must have the same kind of values
v1 = c(1, 2, 3, 4)
class(v1) # numeric
print(v1)

v2 = 1:4
print(v2)

v3 = c("A", "B", "C")
class(v3) # character
print(v3)

v4 = c(TRUE, FALSE)
print(v4)

# As all the values must be of the same kind
# the values are converted to the best option
v5 = c(1, "2", TRUE) # Converted to characters
print(v5)

v6 = c(1, 2.5, TRUE) # Converted to numeric
print(v6)

# Combine vectors (it could require data auto conversion)
v7 = c(v1, v2, v3)
print(v7)

# Secuence
v8 = seq(100, 0, by=-10)
print(v8)

# Repeat
v9 = rep(v8, times = 5)
print(v9)

# Revert
v10 = rev(v8)
print(v10)

# Append
v11 = append(v8, v10)
print(v11)

# Naming Data
visits = c(150, 200, 25, 75, 250, 400, 700)
sells = c(20, 35, 5, 10, 30, 50, 100)
days = c("MONDAY", "THUESDAY", "WEDNENSDAY", "THURSDAY", "FRIDAY", "SATURDAY", "SUNDAY")

names(visits) = days
names(sells) = days

print(visits)
print(sells)

# Operators could be used between vectors
percentage = sells / visits * 100
print(percentage)
print(percentage > 15)

# Vector Methods
total_sells = sum(sells)
total_visits = sum(visits)
total_percentage = total_sells / total_visits * 100
print(total_percentage)

mean_sells = mean(sells)
mean_visits = mean(visits)
print(mean_sells)
print(mean_visits)

print(order(sells))

print(length(sells))

# Selecting items from the vector
print(percentage[1])
print(percentage["SUNDAY"])
print(percentage[6:7])
print(percentage[c(1, 3, 5)])
print(percentage[c("FRIDAY", "SATURDAY", "SUNDAY")])
print(sells[percentage > 15])
print(percentage[-7])
print(percentage[-(1:5)])
print(percentage[-c(1,3,5)])

# Modifying Elements
v12 = 1:10
v12[3] = 15
print(v12)
v12[6:8] = 7
print(v12)
v12[15] = 15
print(v12)

# Searching element
5 %in% v12    # TRUE
14 %in% v12   # FALSE
15 %in% v12   # TRUE
NA %in% v12   # TRUE
