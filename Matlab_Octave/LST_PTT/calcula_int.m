function[int] = calcula_int(PX)

  global Px
  
  Px = PX;
  
  calcvalues;
      
  [u] = velocidade_teste;

  [int] = integra(u);
  
end