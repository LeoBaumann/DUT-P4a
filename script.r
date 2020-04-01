#!/usr/bin/Rscript --slave

library(ggplot2)

result <- read.table("./res.dat", header = TRUE)

ggplot(result, aes(x=TailleStructure, y=Time, colour=Type)) + geom_point() + geom_smooth() + facet_grid(Methode ~ Type) + xlab("Taille de la structure") + ylab("Temps d'exécution en secondes") + labs(linetype="Type de structure") + ggtitle("Analyse du temps d'exécution")
ggsave("temps.png")

ggplot(result, aes(x=TailleStructure, y=Memory, colour=Type)) + geom_point() + geom_smooth() + facet_grid(Methode ~ Type) + xlab("Taille de la structure") + ylab("Consommation mémoire") + labs(linetype="Type de structure") + ggtitle("Analyse de l'occupation mémoire")
ggsave("memoire.png")
