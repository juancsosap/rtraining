# Function
n = function() {
  sqrt(2 * pi)
}
class(n)  # function
n() # 2.506628

toDegrees = function(r) {
  return(r * 180 / pi)
}
toDegrees(pi/4) # 45

power = function(a, b) {
  n1 = a ^ 2
  n2 = b ^ 2
  return(n1 + n2)
}
power(2, 3) # 13

printer = function (msg = "") {
  print("-----------------")
  print(msg)
  print("-----------------")
}
printer()
printer("Message")
printer(msg = "Message")

calc = function (a, b, oper = "SUM", neg = FALSE) {
  result = switch(oper,
                  "SUM" = a + b,
                  "RES" = a - b,
                  "MUL" = a * b,
                  "DIV" = a / b)
  if(neg) result = -result
  return(result)
}
calc(1, 2)
calc(1, 2, "RES")
calc(1, 2, "RES", TRUE)
calc(1, 2, neg = TRUE)
calc(2, 2, oper = "MUL")
calc(5, 2, oper = "DIV", neg = TRUE)

