emails = c("juan.sosa@gmail.com", "juan.sosa@gmailcom", "juan@sosa@gmail.com", "juan.sosa@111gmail.com",
           "juan.sosa@gmail.com.", "JUAN.SOSA@GMAIL.COM")
regex1 = "^[a-z0-9\\._]{4,}@[a-z]{4,}(\\.[a-z]{2,})+$"

grepl(regex1, emails)
grep(pattern = regex1, x = emails)

grep()
grepl(regex1, emails, ignore.case = TRUE)

text = "Hola            como   estas            hoy?"
regex2 = "\\s+"

sub(regex2, " ", text)
gsub(regex2, " ", text)

