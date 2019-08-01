df1 = read.table("http://bit.ly/chiporders", header = TRUE, sep = "\t", dec = ".")
View(df1)

df2 = read.table("http://bit.ly/movieusers", header = FALSE, sep = "|")
View(df2)

df3 = read.table("http://bit.ly/uforeports", header = TRUE, sep = ",")
View(df3)

df4 = read.table("http://bit.ly/imdbratings", header = TRUE, sep = ",", dec = ".")
View(df4)

df5 = read.table("http://bit.ly/drinksbycountry", header = TRUE, sep = ",")
View(df5)

df6 = read.table("http://aprender.uib.es/Rdir/pearson.txt", header = TRUE)
View(df6)

View(df6$Padres)
View(df6$Hijos)
