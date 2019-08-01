# Sample Data Frame
mtcars
class(mtcars) # data.frame

# Data Frame Sub Set
head(mtcars) # First 6 rows
tail(mtcars) # Last 6 rows

# Data Frame Structure
str(mtcars)

# Definition of vectors
name = c("Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune")
type = c("Terrestrial planet", "Terrestrial planet", "Terrestrial planet", 
          "Terrestrial planet", "Gas giant", "Gas giant", "Gas giant", "Gas giant")
diameter = c(0.382, 0.949, 1, 0.532, 11.209, 9.449, 4.007, 3.883)
rotation = c(58.64, -243.02, 1, 1.03, 0.41, 0.43, -0.72, 0.67)
rings = c(FALSE, FALSE, FALSE, FALSE, TRUE, TRUE, TRUE, TRUE)

# Create a data frame from the vectors
planets_df <- data.frame(name, type, diameter, rotation, rings)
print(planets_df)
View(planets_df)
str(planets_df)
summary(planets_df)

# Selecting Data Frame Elements
print(planets_df[3,1])
print(planets_df[1,])
print(planets_df[1:3,])
print(planets_df[c(1,3),])
print(planets_df["name",])
print(planets_df[c("name", "type"),])
print(planets_df[,2])
print(planets_df[,2:4])

print(planets_df$name)

print(planets_df[planets_df$rings == TRUE,1:4])

positions = order(planets_df$diameter)
View(planets_df[positions,])

# Data Frame Methods
subset(planets_df, subset = (planets_df$diameter < 1))

