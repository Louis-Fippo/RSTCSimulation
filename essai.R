
print("bonjour Fippo")
environment()
print("bonjour le monde")
args <- commandArgs(TRUE); 
print(args[1])
source("repere.R")
repere("ph simulation")
ls(environment())
