# Complex Numbers
c1 = 1 + 2i
class(c1) # complex
print(c1)

# c2 = 1 + sqrt(2)i <--- Fail
c2 = complex(real = 1, imaginary = sqrt(2))
print(c2)

# c3 = 1 + i        <--- Fail
c3 = 1 + 1i
print(c3)

# c4 = sqrt(-4)     <--- Fail
c4 = sqrt(as.complex(-4))
print(c4)

# c5 = (-1)^pi      <--- Fail
c5 = (as.complex(-1))^pi
print(c5)

print(c1 + c2)
print(c1 - c2)
print(c1 * c2)
print(c1 / c2)

c6 = Re(c5)
print(c6)

c7 = Im(c5)
print(c7)

c8 = Conj(c5)
print(c8)

r5 = Mod(c5)
print(r5)

a5 = Arg(c5) * 180 / pi
print(a5) # Degrees

