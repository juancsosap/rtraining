text1 = "Hello"
text2 = "World"
msg = paste(text1, text2)
print(msg)

msg = paste(text1, text2, sep = ",")
print(msg)

size = nchar(msg)
print(size)

print(toupper(msg))
print(tolower(msg))

print(substring(msg, 2, 5))
