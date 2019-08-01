today = Sys.Date()
print(today)
class(today)

birth1 = as.Date("1982-03-26")
print(birth1)
class(birth1)

birth2 = as.Date("22-10-1982", format = "%d-%m-%Y")
print(birth2)
class(birth2)

birth1 + 10 # add 10 days
today - birth1 # return number o days 

now = Sys.time()
print(now)
class(now)

meeting1 = as.POSIXct("2018-11-05 10:30:00")
print(meeting1)
class(meeting1)

meeting2 = as.POSIXct("2018-11-05 10h30", format = "%Y-%m-%d %Hh%M")
print(meeting2)
class(meeting2)

meeting1 + 30 # add 30 seconds
meeting1 - now # return number of days
