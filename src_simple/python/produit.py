#!/usr/bin/env python
# -*- coding=utf-8 -*-

""" produit  -  11.03.2014 """

def prog_produit():
    """ Calcul du produit des n premiers entiers impairs """

    # lecture de n
    n = int(raw_input("entrer n : "))
    print("Calcul du produit des entiers impairs entre 1 et {0}".format(n))

    # initialisation
    produit = 1

    # calcul
    for i in range(3, n + 1):
        if i % 2 == 1:
            produit *= i

    # autre methode
    produit = 1
    for i in range(3, n + 1, 2):
        produit *= i

    # affichage du résultat
    print("Résultat = {0}".format(produit))

if __name__ == "__main__":
    prog_produit()
