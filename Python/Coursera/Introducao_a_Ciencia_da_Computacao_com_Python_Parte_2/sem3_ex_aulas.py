class Pato:
  pass

pato = Pato()
patinho = Pato()
if pato == patinho:
  print("Estamos no mesmo endereço!")
else:
  print("Estamos em endereços diferentes!")


class Cachorro:
  def __init__(self, raça, idade, nome, cor):
    self.raça = raça
    self.idade = idade
    self.nome = nome
    self.cor = cor
    
rex = Cachorro('vira-lata', 2, 'Bobby', 'marrom')

class Lista:
  def append(self, elemento):
    return "Oops! Este objeto não é uma lista"
    
lista = []
print(lista)
a = Lista()
print(a)
b = a.append(7)
print(b)

lista.append(b)
print(lista)
