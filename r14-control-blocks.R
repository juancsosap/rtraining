age = 15

# if control blocks

if(age >= 18) {
  print("You are an adult")
} else {
  print("You aren't an adult")
  if(age > 12)
    print("You are a teenager")
  else
    print("You are a kid")
}

if(age >= 18) {
  print("You are an adult")
} else if(age > 12) {
  print("You aren't an adult")
  print("You are a teenager")
} else {
  print("You aren't an adult")
  print("You are a kid")
}

# switch control block

num1 = 10
num2 = 5
oper = "SUM"

result = switch(oper, 
                "SUM" = num1 + num2,
                "RES" = num1 - num2,
                "MUL" = num1 * num2,
                "DIV" = num1 / num2,
                "Not valid Operation"
                )

print(result)