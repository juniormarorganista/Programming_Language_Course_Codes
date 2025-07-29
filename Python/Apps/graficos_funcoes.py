# graficos_funcoes.py

import numpy as np
import matplotlib.pyplot as plt

def plotar_funcao(tipo_funcao, params, x_min=-10, x_max=10):
    """
    Gera a figura de um gráfico para uma função matemática.
    Parâmetros:
        tipo_funcao (str): O tipo de função ('linear', 'quadratica', 'seno').
        params (dict): Um dicionário com os parâmetros da função (a, b, c).
        x_min (int): O valor mínimo do eixo x.
        x_max (int): O valor máximo do eixo x.
    Retorna:
        matplotlib.figure.Figure: O objeto da figura do gráfico para ser usado em interfaces.
    """
    x = np.linspace(x_min, x_max, 400) # Gera 400 pontos para o eixo x
    y = None
    titulo = ""

    # Calcula o eixo y com base no tipo de função
    if tipo_funcao == 'linear':
        a, b = params.get('a', 1), params.get('b', 0)
        y = a * x + b
        titulo = f'Função Linear: y = {a}x + {b}'
    elif tipo_funcao == 'quadratica':
        a, b, c = params.get('a', 1), params.get('b', 0), params.get('c', 0)
        y = a * x**2 + b * x + c
        titulo = f'Função Quadrática: y = {a}x² + {b}x + {c}'
    elif tipo_funcao == 'seno':
        a, b = params.get('a', 1), params.get('b', 1)
        y = a * np.sin(b * x)
        titulo = f'Função Seno: y = {a} * sin({b}x)'
    else:
        # Se a função não for reconhecida, retorna um gráfico vazio
        fig, ax = plt.subplots()
        ax.set_title("Função não reconhecida")
        return fig

    # Cria a figura e os eixos do gráfico
    fig, ax = plt.subplots(figsize=(8, 6)) # Aumentei um pouco o tamanho padrão
    ax.plot(x, y, label=titulo) # Adiciona um label para a legenda
    ax.set_title("Gráfico da Função")
    ax.set_xlabel("Eixo X")
    ax.set_ylabel("Eixo Y")
    ax.legend() # Mostra a legenda com a fórmula
    ax.grid(True)
    ax.axhline(0, color='black', linewidth=0.5)
    ax.axvline(0, color='black', linewidth=0.5)
    
    plt.tight_layout()
    
    return fig
