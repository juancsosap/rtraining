# Normal behavior

vect1 = c("A", "AB", "ABC", "ABCD", "AAABB", "AA BB")

tolower(vect1)
nchar(vect1)

squaresum = function (coll) {
  result = 0
  for(item in coll) {
    result = result + item^2
  }
  return(result)
}

unique_letters <- function(text) {
  text <- gsub(" ", "", text)
  letters <- strsplit(text, split = "")[[1]]
  return(unique(letters))
}

unique_letters(vect1) # Only first element

vect2 = c(c(1,2,3), c(4,5,6), c(7,8,9))
squaresum(vect2) # Sum all the elements

list1 = list(c(1,2,3), c(4,5,6), c(7,8,9))
sum(list1) # Error
squaresum(list1) # Sum Each group

vect3 = c(list(1,2,3), list(4,5,6), list(7,8,9))
sum(vect3) # Error
squaresum(vect3) # Sum all the elements

# Using lapply

lapply(vect1, tolower) # Return List
unlist(lapply(vect1, tolower)) # return vector
lapply(vect1, nchar) # Return List
unlist(lapply(vect1, nchar)) # return vector

lapply(vect1, unique_letters) # return list with vectors

unlist(lapply(list1, sum)) # return vector with the sum of each group
unlist(lapply(list2, sum)) # Error

unlist(lapply(list1, squaresum)) # return vector with the sum of each group
unlist(lapply(list2, squaresum)) # Error

oper = sum
oper(list1) # Error
unlist(lapply(list1, oper))
oper = squaresum
oper(list1)
unlist(lapply(list1, oper))

# Using sapply

sapply(vect1, tolower) # Return Vector
sapply(vect1, nchar) # Return Vector

sapply(vect1, unique_letters) # return vector with vectors

sapply(list1, sum) # return vector with the sum of each group
sapply(list2, sum) # Error

sapply(list1, squaresum) # return vector with the sum of each group
sapply(list2, squaresum) # Error

sapply(vect1, nchar) # Return Vector with names
sapply(vect1, nchar, USE.NAMES = FALSE) # Return Vector

# Using vapply

vapply(vect1, tolower, character(1)) # Return Vector
vapply(vect1, nchar, integer(1)) # Return Vector

vapply(vect1, unique_letters, character(10)) # Error, the output length is variable

vapply(list1, sum, numeric(1)) # return vector with the sum of each group
vapply(list2, sum, numeric(1)) # Error

vapply(list1, squaresum, numeric(1)) # return vector with the sum of each group
vapply(list2, squaresum, numeric(1)) # Error

vapply(vect1, nchar, integer(1)) # Return Vector with names
vapply(vect1, nchar, integer(1), USE.NAMES = FALSE) # Return Vector
