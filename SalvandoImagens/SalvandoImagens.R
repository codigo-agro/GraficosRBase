# ordem bottom, left, top, right

x = c(1:10)
y = c(1:10)

plot(x, y, las = 1)

mtext("linha 0", side = 2, line = 0)
mtext("linha 1", side = 2, line = 1)
mtext("linha 2", side = 2, line = 2)
mtext("linha 3", side = 2, line = 3)
mtext("linha 4", side = 2, line = 4)

mtext("linha 0", side = 1, line = 0)
mtext("linha 1", side = 1, line = 1)
mtext("linha 2", side = 1, line = 2)
mtext("linha 3", side = 1, line = 3)
mtext("linha 4", side = 1, line = 4)

mtext("linha 0", side = 3, line = 0)
mtext("linha 1", side = 3, line = 1)
mtext("linha 2", side = 3, line = 2)
mtext("linha 3", side = 3, line = 3)

mtext("linha 0", side = 4, line = 0)
mtext("linha 1", side = 4, line = 1)

par() 

# Efeito do oma
par(mar = c(1, 1, 1, 1))

plot(x, y, las = 1)

mtext("linha 0", side = 2, line = 0)

mtext("linha 0", side = 1, line = -1)

mtext("linha 0", side = 3, line = 0)

mtext("linha 0", side = 4, line = 0)


# Zerando o oma
par(oma = c(0, 0, 0, 0), mar = c(1, 1, 1, 1))

plot(x, y, las = 1)

mtext("linha 0", side = 2, line = 0)

mtext("linha 0", side = 1, line = 0)

mtext("linha 0", side = 3, line = 0)

mtext("linha 0", side = 4, line = 0)


# ---
# oma
# ---

# Um vetor da forma c(inferior, esquerda, superior, direita)
# fornecendo o tamanho das margens externas em linhas de texto

# ---
# mar
# ---

# Um vetor num�rico da forma c(inferior, esquerda, superior, direita) 
# que fornece o n�mero de linhas de margem a serem especificadas 
# nos quatro lados do gr�fico.

op = par()
par(op)

# ------------------------------------
# A configura�ao cl�ssica que uso
# ------------------------------------

par(oma = c(0, 0, 0, 0), mar = c(4, 3, 1, 1))

plot(x, y, las = 1)

mtext("xlab", side = 1, line = 0)
mtext("xlab", side = 1, line = 1)
mtext("xlab", side = 1, line = 2)

mtext("ylab", side = 2, line = 0)
mtext("ylab", side = 2, line = 1)
mtext("ylab", side = 2, line = 2)

par(op)


# ------------------------------------
# Gerando uma figura em alta resolu��o
# ------------------------------------

setwd("C:/Users/Usu�rio/Desktop")

jpeg("gr�fico.jpeg", 
     width = 16, 
     height = 12, 
     units = "cm", 
     res = 600,
     bg = "white")

par(oma = c(0, 0, 0, 0), mar = c(4, 3, 1, 1))

plot(x, y, las = 1)

mtext("xlab", side = 1, line = 0)
mtext("xlab", side = 1, line = 1)
mtext("xlab", side = 1, line = 2)

mtext("y", side = 2, line = 0)
mtext("y", side = 2, line = 1)
mtext("y", side = 2, line = 2)

dev.off()

par(op)

# ---------------
# Outros formatos
# ---------------


# pdf
pdf("rplot.pdf",  
    width = 3.14961, 
    height = 2.3622,)

plot(x , y)

dev.off()

# png
png("rplot.png", 
     width = 3.14961, 
     height = 2.3622, 
     units = "in", 
     res = 300)

plot(x , y)

dev.off()

# tiff

tiff("rplot.tiff", 
     width = 3.14961, 
     height = 2.3622, 
     units = "in", 
     res = 300)

plot(x , y)

dev.off()













