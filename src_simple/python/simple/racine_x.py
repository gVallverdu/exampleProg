#!/usr/bin/env python
# -*- coding=utf-8 -*-

""" racine_x  -  11.03.2014 

Calcul de la racine carré de x si x est positif. """

from math import sqrt

# lecture de x
x = float(raw_input("entrer x : "))
print("x = {0}".format(x))

# test de la valeur de x et calcul de sqrt(x)
if x >= 0:
    print("RACINE(x) = {0}".format(sqrt(x)))
else:
    print("x est négatif")


