# Sex vector
sex_vector = c("Male", "Female", "Female", "Male", "Male")
factor_sex_vector = factor(sex_vector)
class(factor_sex_vector) # factor
print(factor_sex_vector)

# Categorical Levels
animals_vector = c("Elephant", "Giraffe", "Donkey", "Horse")
factor_animals_vector = factor(animals_vector)
print(factor_animals_vector)

# Ordinal Levels
temperature_vector = c("High", "Low", "High","Low", "Medium")
temperature_levels = c("Low", "Medium", "High")
factor_temperature_vector = factor(temperature_vector, order = TRUE, levels = temperature_levels)
print(factor_temperature_vector)

# Rename Levels
survey_vector = c("M", "F", "F", "M", "M")
factor_survey_vector = factor(survey_vector)
levels(factor_survey_vector) = c("Female", "Male")
print(factor_survey_vector)
print(survey_vector)

# Summary Method
summary(survey_vector)
summary(factor_survey_vector)

# Comparing Caterical factors
male = factor_survey_vector[1]
female = factor_survey_vector[2]
print(male > female) # NA <--- Warning message: '>' not meaningful for factors

# Comparing Ordinal factors
low = factor_temperature_vector[2]
high = factor_temperature_vector[1]
print(high > low)

