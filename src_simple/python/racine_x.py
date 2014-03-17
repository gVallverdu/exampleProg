#!/usr/bin/env python
# -*- coding=utf-8 -*-

""" racine_x  -  11.03.2014 """

from math import sqrt

def racine(x):
    """ Calcul de la racine carré de x si x est positif. """

    if x >= 0:
        print("RACINE(x) = {0}".format(sqrt(x)))
    else:
        print("x est négatif")

if __name__ == "__main__":
    # lecture de x
    x = float(raw_input("entrer x : "))
    print("x = {0}".format(x))

    racine(x)

