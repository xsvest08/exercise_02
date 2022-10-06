##TASK 1

names_list <-  c("anna", "jana", "kamil", "norbert", "pavel", "petr", "stanislav", "zuzana")

grep("jana", names_list, perl=TRUE)

#najde jmena, ktere v sobe maji n a nejake pismeno za tim -> vrati pozice jmen v listu
grep("n+", names_list, perl=TRUE)

#najde jmena se dvema n po sobe
grep("n{2}", names_list, perl=TRUE)

#najde jmeno co zacina na n 
grep("^n", names_list, perl=TRUE)

#pozor na male a velke pismena!!!
grep("Anna|Jana", names_list, perl=TRUE)

grep("^z.*a$", names_list, perl=TRUE)

#########################################################################
##TASK2
#install.packages("seqinr")
library("Biostrings")
library("seqinr")

seq <-read.fasta("fishes.fna.gz")
seq

seq2 <- readDNAStringSet("fishes.fna.gz")
seq2   

#najit vzorky se sekvenci forward and reverse ACGAGTGCGT
findseq <- grep("^ACGAGTGCGT.*ACGCACTCGT$", seq2, perl=TRUE)
findseq

#####################################################################################
##TASK3 

path -> "c/Users/emikb/Desktop/1.semestr - Ing/Programming in Bioinformatics (PRG)/cviko2/exercise_02/fishes.fna.gz"
fun_demultiplex <- function(path, forward, reverse, names) {
  
}


