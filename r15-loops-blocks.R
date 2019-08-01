# repeat loop
count = 10
list1 = c()
repeat { # like while(TRUE)
  list1[count] = count
  count = count - 1
  if(count < 0) break # output condition
}
print(list1)

# while loop
count = 1
list2 = c()
while(count <= 10) { # permanence condition
  list2[count] = count * 2
  count = count + 1
}
print(list2)

count = 1
list2 = c()
while(TRUE) { # infinite loop - like repeat
  list2[count] = count * 2
  count = count + 1
  if(count > 10) break; 
}
print(list2)

# for loop
list3 = 1:10
list4 = c()
for(i in list3) {
  list4[i] = i * 3
}
print(list4)
  
list3 = 1:10
list4 = c()
for(i in list3) {
  if(i %% 2 == 0) next
  list4[i %/% 2 + 1] = i * 3
}
print(list4)

days = c("DOM", "LUN", "MAR", "MIE", "JUE", "VIE", "SAB")
for(i in 1:length(days)) {
  print(paste(i, days[i]))
}