# app_tkinter.py

import tkinter as tk
from tkinter import ttk
from matplotlib.backends.backend_tkagg import FigureCanvasTkAgg

# Importa a função da nossa biblioteca de gráficos
from graficos_funcoes import plotar_funcao

# --- Função de Lógica da Interface ---

# Armazena a referência do canvas do gráfico
canvas_grafico = None

def plotar():
    """Pega os parâmetros da interface, chama a função de plotagem e exibe o gráfico."""
    global canvas_grafico
    
    # Limpa o gráfico anterior, se existir
    if canvas_grafico:
        canvas_grafico.get_tk_widget().destroy()

    try:
        tipo_funcao = combo_funcao.get().lower()
        params = {
            'a': float(entry_a.get()),
            'b': float(entry_b.get()),
            'c': float(entry_c.get())
        }

        # Chama a função da nossa biblioteca para gerar a figura
        figura = plotar_funcao(tipo_funcao, params)

        # Cria um canvas Tkinter para embutir a figura do Matplotlib
        canvas_grafico = FigureCanvasTkAgg(figura, master=frame_grafico)
        canvas_grafico.draw()
        canvas_grafico.get_tk_widget().pack(side=tk.TOP, fill=tk.BOTH, expand=True)
        
    except ValueError:
        # Idealmente, mostraríamos uma mensagem de erro ao usuário aqui
        print("Erro: Verifique se os parâmetros 'a', 'b' e 'c' são números válidos.")
    except Exception as e:
        print(f"Ocorreu um erro inesperado: {e}")

# --- Configuração da Janela Principal ---
janela = tk.Tk()
janela.title("Plotter de Gráficos com Tkinter")
janela.geometry("800x600")

# --- Widgets para controle da plotagem ---
frame_controles = ttk.LabelFrame(janela, text="Controles do Gráfico")
frame_controles.pack(padx=10, pady=10, fill="x")

ttk.Label(frame_controles, text="Função:").pack(side=tk.LEFT, padx=(5,2))
combo_funcao = ttk.Combobox(frame_controles, values=["Linear", "Quadratica", "Seno"], width=12)
combo_funcao.pack(side=tk.LEFT, padx=(0,10))
combo_funcao.set("Linear")

ttk.Label(frame_controles, text="a:").pack(side=tk.LEFT, padx=(5,2))
entry_a = ttk.Entry(frame_controles, width=5)
entry_a.pack(side=tk.LEFT)
entry_a.insert(0, "1")

ttk.Label(frame_controles, text="b:").pack(side=tk.LEFT, padx=(5,2))
entry_b = ttk.Entry(frame_controles, width=5)
entry_b.pack(side=tk.LEFT)
entry_b.insert(0, "0")

ttk.Label(frame_controles, text="c (p/ quadrática):").pack(side=tk.LEFT, padx=(5,2))
entry_c = ttk.Entry(frame_controles, width=5)
entry_c.pack(side=tk.LEFT)
entry_c.insert(0, "0")

btn_plotar = ttk.Button(frame_controles, text="Plotar Gráfico", command=plotar)
btn_plotar.pack(side=tk.RIGHT, padx=10) # Alinhado à direita para um visual melhor

# --- Frame para exibir o gráfico ---
frame_grafico = ttk.Frame(janela)
frame_grafico.pack(padx=10, pady=10, fill="both", expand=True)

# --- Inicia a aplicação ---
janela.mainloop()
