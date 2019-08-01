# Matrix Definition
matrix(1:9) # Column Vector
matrix(1:9, nrow = 3) # Column Walking
matrix(1:16, byrow = TRUE, nrow = 4) # Row Walking

# Naming Matrix
cost = matrix(c(10, 20, 30, 15, 30, 45, 20, 40, 60), byrow=TRUE, nrow=3)
pizzas = c("Margarita", "Vegetariana", "Rustica")
rownames(cost) = pizzas
sizes = c("Small", "Medium", "Familiar")
colnames(cost) = sizes
class(cost) # matrix
print(cost)

# Matrix Operators
request = matrix(c(0, 1, 2, 1, 1, 3, 0, 1, 5), byrow=TRUE, nrow=3)
orden = request * cost
print(orden)

# Matrix Methods
subTotal = rowSums(orden)
print(subTotal)

summaryOrden = cbind(orden, subTotal)
print(summaryOrden)

total = colSums(summaryOrden)
print(total)

totalMatrix = rbind(summaryOrden, total)
print(totalMatrix)

totalSum = sum(orden)
print(totalSum)

# Selecting items from the matrix
print(totalMatrix[1,3])
print(totalMatrix[1:2,3])
print(totalMatrix[1,2:3])
print(totalMatrix["Vegetariana","Familiar"])
print(totalMatrix[c("Vegetariana", "Rustica"),"Familiar"])
print(totalMatrix["Vegetariana",c("Small", "Familiar")])

print(totalMatrix[1,])
print(totalMatrix[1:2,])
print(totalMatrix["Rustica",])
print(totalMatrix[c("Margarita","Rustica"),])

print(totalMatrix[,2])
print(totalMatrix[,2:3])
print(totalMatrix[,"Familiar"])
print(totalMatrix[,c("Small","Familiar")])

print(totalMatrix[,])

# Matrix Filling
vect = c(1,2,3)
matr = matrix(vect, 5, 15)
print(matr)

vect = c(1,2,3,4)
matr = matrix(vect, 5, 15) # Error : Length no multiple of the number of rows 
