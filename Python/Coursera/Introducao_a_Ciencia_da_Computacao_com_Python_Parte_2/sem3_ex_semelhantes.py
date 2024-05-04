import math

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

   def retangulo(self):
      caso1 = self.a * self.a - self.b * self.b - self.c * self.c 
      caso2 = self.b * self.b - self.c * self.c - self.a * self.a 
      caso3 = self.c * self.c - self.a * self.a - self.b * self.b 
      if (caso1 == 0 or caso2 == 0 or case3 ==0): 
         return True
      else :
         return False

   def semelhantes(self,tc):
      caso1 = self.a // tc.a
      caso2 = self.b // tc.b 
      caso3 = self.c // tc.c 
      if (caso1 == caso2 and caso2 == caso3):
         return True
      else :
         return False
