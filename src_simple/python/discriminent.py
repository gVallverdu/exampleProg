#!/usr/bin/env python
# -*- coding=utf-8 -*-

""" discriminent  -  11.03.2014 """

from math import sqrt

def discriminent(a, b, c):
    """ Calcul des racines réelles d'un polynome de degré 2 """

    # Calcul du discriminent
    delta = b**2 - 4. * a * c
    print("delta = {0}".format(delta))

    # Test du discriminent
    if delta > 0:
        print("L'équation a deux solutions")
        print("x1 = {0}".format((-b - sqrt(delta)) / (2. * a)))
        print("x2 = {0}".format((-b + sqrt(delta)) / (2. * a)))
    elif delta < 0.:
        print("L'équation a deux solutions complexes")
    else:
        print("L'équation a une seule solution")
        print("x  = {0}".format(-b / (2.0 * a)))

if __name__ == "__main__":
    print("On va résoudre l'équation a*x^2 + b*x + c = 0")

    # lecture des variables
    a = float(raw_input("entrer a : "))
    print("a = {0}".format(a))

    b = float(raw_input("entrer b : "))
    print("b = {0}".format(b))

    c = float(raw_input("entrer c : "))
    print("c = {0}".format(c))
    
    discriminent(a, b, c)

