import math
def ver_primo(n):
    num_max  = int(0.5*n)
    if (n == 2 or n == 3):
        return True
    elif (n % 2 == 0 or n==1):
        return False
    is_prime = True
    i = 3
    while (is_prime):
        if (i>=num_max):
            return True
        ver = n % i == 0
        i   += 1
        if (ver):
            is_prime = False
            return False

def maior_primo(m):
	is_prime = False
	maior_prime = m
	while (not ver_primo(maior_prime)):
		maior_prime -= 1
	
	return maior_prime
