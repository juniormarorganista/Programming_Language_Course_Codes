class Triangulo:
  def __init__(self, a, b, c):
    self.a = a
    self.b = b
    self.c = c
  def perimetro(self):
     per = self.a + self.b + self.c
     return per

  def tipo_lado(self):
     if (self.a > 0 and self.b > 0 and self.c > 0):
        if (self.a == self.b and self.b == self.c):
           return 'equilátero'
        if(self.a == self.b or self.b == self.c or self.a == self.c):
           return 'isósceles'
        else :
           return 'escaleno'
     else :
        return 'Nao eh um triangulo!'
