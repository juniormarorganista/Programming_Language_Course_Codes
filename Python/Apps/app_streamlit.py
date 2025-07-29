# app_streamlit.py

import streamlit as st
# Importa a função da nossa biblioteca de gráficos
from graficos_funcoes import plotar_funcao

# --- Configuração da Página e Barra Lateral ---
st.set_page_config(layout="centered")
st.title("Plotter de Gráficos com Streamlit")

# Usamos a barra lateral para todos os controles
st.sidebar.header("Controles do Gráfico")

tipo_funcao = st.sidebar.selectbox(
    "Selecione o tipo de função",
    ("Linear", "Quadratica", "Seno")
)

st.sidebar.write("Ajuste os parâmetros da função:")

# Sliders são ótimos para interatividade
param_a = st.sidebar.slider("Parâmetro 'a'", -10.0, 10.0, 1.0, 0.1)
param_b = st.sidebar.slider("Parâmetro 'b'", -10.0, 10.0, 0.0, 0.1)
param_c = 0.0

# O parâmetro 'c' só aparece se a função for quadrática
if tipo_funcao == "Quadratica":
    param_c = st.sidebar.slider("Parâmetro 'c'", -10.0, 10.0, 0.0, 0.1)

st.sidebar.info("O gráfico na área principal será atualizado em tempo real.")

# --- Área Principal da Página ---

st.write(f"Visualizando o gráfico da função **{tipo_funcao}**.")

# Prepara o dicionário de parâmetros
params = {'a': param_a, 'b': param_b, 'c': param_c}

# Chama a nossa biblioteca para gerar a figura do gráfico
figura = plotar_funcao(tipo_funcao.lower(), params)

# Exibe a figura gerada na página principal
st.pyplot(figura)
