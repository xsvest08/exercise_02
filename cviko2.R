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
install.packages("readxl")
library("readxl")

#path <- "c/Users/emikb/Desktop/1.semestr_Ing/Programming_in_Bioinformatics/cviko2/exercise_02/fishes.fna.gz"
path <- read.fasta("fishes.fna.gz")
path <- readDNAStringSet("fishes.fna.gz")
data <- read_excel("fishes_MIDs.xls")

forward <- data$`F BarcodeSequence`
reverse <- data$`R BarcodeSequence`
names <- data$Description

#fun_demultiplex <- function(path, forward, reverse, names) {
for(i in 1:18){
  char_for <- paste0("^",forward[i],".*",reverseComplement(DNAString(reverse[i])),"$")
  char_res <- paste0("^",reverse[i],".*",reverseComplement(DNAString(forward[i])),"$")
  
  finddata1 <- grep(char_for, path, perl=TRUE)
  finddata2 <- grep(char_res, path, perl=TRUE)
   
  i <- i+1
  

}
for(j in finddata1){
  seq_data <- path[j]
  j <- j + 1
}
#}
#pak funkce subseq



