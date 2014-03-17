#!/usr/bin/env python
# -*- coding=utf-8 -*-

""" reste  -  11.03.2014 

Calcul du reste de la division de deux entiers """

# lecture des valeurs
dividende = int(raw_input("entrer le dividende : "))
print("dividende = {0}".format(dividende))

diviseur = int(raw_input("entre le diviseur : "))
print("diviseur = {0}".format(diviseur))

# calcul du reste
reste = dividende % diviseur

# affichage du résultat
print("reste = {0}".format(reste))

