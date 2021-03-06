# Cria grupos
frutas = c("Manga", 
            "Uva", 
            "Umb�",
            "Ara��", 
            "Mangaba")

# Gerando n�mero aleat�rios
sitio.oeste = c(4, 11, 19, 6, 9)
sitio.oeste

sitio.leste = c(11, 10, 12, 13, 14)
sitio.leste

# Podemos juntar os dados gerados num dataframe para melhor visualiza��o

dados = data.frame(frutas, sitio.leste, sitio.oeste)
dados

# -------------------------------------------------------------------
# Passo 01 - Estabelece algumas configura��es b�sicas para o gr�fico
# -------------------------------------------------------------------

# 01 - Configura��es de margens
par(mar = c(0.5, 5, 0.5, 1), 
    oma = c(0, 0, 0, 0))

# 02 - Abrir uma nova janela gr�fica
plot.new()

# 03 - Dimens�es dos eixos
plot.window(xlim=c(-20, 20), 
            ylim=c(-1.5, 5.5))


# -------------------------
# Passo 02 - Criar o eixo X
# -------------------------

# Plotar o eixo x com as marcas sempre positivas usando abs()
axis(side = 1, 
     at = seq(-20, 20, 5), 
     labels = abs(seq(-20, 20, 5)), 
     pos = 0,
     cex.axis = 1)


# -------------------------
# Passo 03 - Criar o eixo Y
# -------------------------

# 01 - Armazenar a posi��o dos seguimentos
y = 1:5

# Plotar os seguimentos
segments(-20, 
         y, 
         20, 
         y, 
         lty = "dotted")

# Gerar a linha divis�ria
lines(c(0, 0), 
      c(-1.5, 5.5), 
      col="black")

# --------------------------------------
# Passo 04 - Criar as barras de valores
# --------------------------------------

# Gerar as barras do S�tio oeste
rect(-sitio.oeste, 
     y-0.2, 
     0, 
     y+0.2, 
     col="dark grey")

# Gerar as barras do S�tio leste
rect(0, 
     y-0.2, 
     sitio.leste, 
     y+0.2, 
     col="light grey")

# Rotulos dos grupos
mtext(frutas, 
      at = y, 
      side = 2, 
      las = 2,
      line = -1)

# ----------------------------------------------
# Passo 05 - Criar as identifica��es dos grupos
# ----------------------------------------------

# Introduzindo os textos
text(-7.5, 
     -1, 
     "S�tio Oeste", 
     pos = 2)

text(7.5, 
     -1, 
     "S�tio Leste", 
     pos = 4)










