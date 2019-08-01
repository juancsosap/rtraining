# List Creation
my_vector = 1:10 
class(my_vector) # integer
my_matrix = matrix(1:9, ncol = 3)
class(my_matrix) # matrix
my_df = mtcars[1:10,]
class(my_df) # data.frame
my_num = 15
my_int = 15L
my_bool = TRUE
my_char = "True"
my_list = list(my_vector, my_matrix, my_df, my_num, my_int, my_bool, my_char)
class(my_list) # list
print(my_list)

# Naming List
names(my_list) = c("vec", "mat", "df")

my_list = list(vec = my_vector, mat = my_matrix, df = my_df)

# Selecting data from list
print(my_list$vec)
print(my_list$vec[5])

print(my_list[["mat"]])
print(my_list[["mat"]][1,2])

print(my_list[[3]])
print(my_list[[3]]$disp)

# Adding elements to the list
my_list_full = c(my_list, num = 12345)
str(my_list_full)

# Merging Lists
list1 = list(num1 = 1, int1 = 1L, char1 = "1", bool1 = TRUE)
list2 = list(num2 = 0, int2 = 0L, char2 = "0", bool2 = FALSE)
list3 = merge(list1, list2)
print(list3)

list1 = list(num1 = 1, int1 = 1L, char1 = "1", bool = TRUE)
list2 = list(num2 = 0, int2 = 0L, char2 = "0", bool = FALSE)
list3 = merge(list1, list2) # No Marge for confict with the bool value
print(list3)


list1 = list(num1 = 1, int1 = 1L, char1 = "1", bool = TRUE)
list2 = list(num2 = 0, int2 = 0L, char2 = "0", bool = TRUE)
list3 = merge(list1, list2)
print(list3)

print(unlist(list3, use.names = FALSE))

# Convertion

vectA = c(1,2,3)
is.list(vectA)
listA = as.list(vectA)
is.list(listA)
