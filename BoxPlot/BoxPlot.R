# =======================================
# Carregar dados e pacotes
# =======================================
library(readxl)
setwd("C:/Users/Usu�rio/Desktop")
dados = data.frame(read_excel("SPAD_R.xlsx"))

# =========================================================
# Extra��o das m�dias e erro padr�o em fun��o da doses de N
# =========================================================
medias = aggregate(spad ~ nrate, 
                   data = dados, 
                   FUN = mean)

erropf <- function(x) sd(x)/sqrt(length(x))

errop = aggregate(spad ~ nrate, 
                   data = dados, 
                   FUN = erropf)

# =======================================
# Contru��o do gr�ficos
# =======================================

# =======================================
# Par�metros iniciais
# =======================================

# formato de sa�da
png("nomegrafico.png", 
    width = 16, 
    height = 12, 
    units = "cm", 
    res = 300,
    bg = "white")

# Fonte do windows
windowsFonts(A = windowsFont("Times New Roman"))

# Definir a fonte para todo o gr�fico
par(family = "A")

# Dimens�es gr�ficas
plot.new()
plot.window(xlim = c(0,100),
            ylim = c(40,60))

# =======================================
# Elementos gr�ficos
# =======================================

# Boxplot 
boxplot(dados$spad ~ dados$nrate, 
        col = "#5cc7b2",
        axes = FALSE, 
        ylim = c(40,60),
        at = c(1, 2, 3, 4),
        ann = FALSE)

# extens�o do tra�o horizontal do erro padr�o
traco = 0.03

# Barra vertical
segments(c(1, 2, 3, 4),
         medias$spad - errop$spad,
         c(1, 2, 3, 4),
         medias$spad + errop$spad, col = "red")

# barra horizontal inferior
segments(c(1, 2, 3, 4) - traco,
         medias$spad-errop$spad,
         c(1, 2, 3, 4) + traco,
         medias$spad - errop$spad, col = "red")

# barra horizontal superior
segments(c(1, 2, 3, 4) - traco,
         medias$spad + errop$spad,
         c(1, 2, 3, 4) + traco,
         medias$spad + errop$spad, col = "red")

# M�dias
points(medias$spad, 
       col = "red", 
       pch = 19)

# Eixo x
axis(side = 1,
     at = c(1, 2, 3, 4),
     pos = 40,
     lwd = 2,
     labels = c("0", "25", "50", "100"))

abline(h= 40, lwd = 2)

# Eixo y
axis(side = 2,
     at = seq(40,60,5),
     lwd = 2,
     las = 2)

# R�tulos dos eixos
mtext("Doses de N", side = 1, line = 2)
mtext("Spad", side = 2, line = 2.5)

# Para finalizar
dev.off()

