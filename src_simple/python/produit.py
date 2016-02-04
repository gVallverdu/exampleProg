#!/usr/bin/env python
# -*- coding=utf-8 -*-

""" produit  -  04/02/2016 """


def prog_produit(n):
    """ Calcul du produit des n premiers entiers impairs """

    # initialisation
    produit = 1

    # calcul
    for i in range(3, n + 1):
        if i % 2 == 1:
            produit *= i

    # retour
    return produit


def prog_produit2(n):
    """ Calcul du produit des n premiers entiers impairs """

    # initialisation
    produit = 1

    # calcul
    for i in range(3, n + 1, 2):
        produit *= i

    # retour
    return produit

if __name__ == "__main__":
    # lecture de n
    n = int(input("entrer n : "))
    print("Calcul du produit des ", n, " premiers entiers impairs  ")
    produit = prog_produit2(n)
    print("Résultat = ", produit)
