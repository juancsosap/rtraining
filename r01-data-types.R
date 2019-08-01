# integer
class(123L)
class(-123L)
class(1234567890L) # Integer (4 Bytes)
class(12345678901234567890L) # Error - Number too long
is.integer(123L)

# numerics
class(123.123)
class(123)
is.numeric(123)
is.numeric(as.numeric(123L))

# characters
class("ABC")
class('ABC')
class("ABC O'Connor")
class('ABC "Saludo"')
class('ABC O\'Connor')
class("ABC \"Saludo\"")
class("\u2925")
is.character("ABC")
is.character(as.character(123))

# logical
class(TRUE)
is.logical(FALSE)
