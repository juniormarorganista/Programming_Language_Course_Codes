### Usuario escolhe número de peças a ser retirada
def usuario_escolhe_jogada(n,m):
	### Escolha da quantidade pelo usuário
	aux = int(input("Quantas peças você vai tirar? "))
	while ((aux <= 0) or (aux > n) or (aux > m)):
		print("Oops! Jogada inválida! Tente de novo.")
		aux = int(input("Quantas peças você vai tirar? "))
	### Quantidade que sobram
	if(aux==1):
		print("Você tirou uma peça.")
	else:
		print("Você tirou",aux,"peças.")
	### Return do programa
	return aux

### Imprime escolha do jogador
def imprime_user(n):
	### Fim do jogo e peças restantes
	if (n>1):
		print("Agora restam",n,"peças no tabuleiro.")
	elif(n==1):
		print("Agora resta apenas uma peça no tabuleiro.")
	else:
		print("Fim do jogo! Você ganhou!")

### Computador escolhe número de peças a ser retirada
def computador_escolhe_jogada(n,m):
	### Escolha da quantidade pelo computador (jogada ótima)
	aux = n % (m+1)
	### Quantidade que sobram (caso onde m >= n )
	if (aux == 0):
		if (m < n):
			aux = m
		else:
			aux = n
	### Mensagens para o jogo
	if(aux==1):
		print("Computador tirou uma peça.")
	else:
		print("Computador tirou",aux,"peças.")
	### Return do programa
	return aux

### Imprime escolha do computador
def imprime_pc(n):
	### Fim do jogo e peças restantes
	if (n>1):
		print("Agora restam",n,"peças no tabuleiro.")
	elif(n==1):
		print("Agora resta apenas uma peça no tabuleiro.")
	else:
		pc_win = True
		print("Fim do jogo! Computador ganhou!")

def comeca_user(n,m):
	while(n>0):
		if (n>0):
			aux = usuario_escolhe_jogada(n,m)
			n -= aux
			imprime_user(n)
		if(n==0):
			pc_win = False
		else:
			pc_win = True
		if (n>0):
			aux = computador_escolhe_jogada(n,m)
			n -= aux
			imprime_pc(n)
	return pc_win

def comeca_pc(n,m):
	while(n>0):
		if (n>0):
			aux = computador_escolhe_jogada(n,m)
			n -= aux
			imprime_pc(n)
		if(n==0):
			pc_win = True
		else:
			pc_win = False
		if (n>0):
			aux = usuario_escolhe_jogada(n,m)
			n -= aux
			imprime_user(n)
	return pc_win

### Partida ###
def partida():
	n = int(input("Quantas peças? "))
	while (n <= 0):
		n = int(input("Quantas peças? "))

	m = int(input("Limite de peças por jogada? "))
	while (m <= 0):
		m = int(input("Limite de peças por jogada? "))

	user_turno = n % (m+1) == 0

	if (user_turno):
		print("Você começa!")
		pc_win = comeca_user(n,m)
	else:
		print("Computador começa!")
		pc_win = comeca_pc(n,m)

	return pc_win

def campeonato():
	print("Bem-vindo ao jogo do NIM! Escolha:")
	camp = int(input("1 - para jogar uma partida isolada\n 2 - para jogar um campeonato "))
	pontos_pc   = 0
	pontos_user = 0
	if (camp == 1):
		print("Voce escolheu jogar uma partida isolada!")
		pc_win = partida()
		if (pc_win):
			pontos_pc += 1
		else:
			pontos_user += 1
	else:
		print("Voce escolheu um campeonato!")
		num_part = 3
		aux_part = 0
		while (aux_part < num_part):
			aux_part += 1
			print("**** Rodada",aux_part,"****")
			pc_win = partida()
			### Contando os pontos
			if (pc_win):
				pontos_pc += 1
			else:
				pontos_user += 1
			if(aux_part == num_part):
				print("**** Final do campeonato! ****")
	print("Placar: Você",pontos_user,"X",pontos_pc,"Computador")

campeonato()
