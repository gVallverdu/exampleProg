#!/usr/bin/env python
# -*- coding=utf-8 -*-

""" minmax  -  11.03.2014 """

from random import random


def minimax(maListe):
    """ Recherche du maximum et du minimum dans maListe """

    # initialisation
    mini = maListe[0]
    maxi = maListe[0]

    for element in maListe:
        # recherche du minimum
        if element < mini:
            mini = element

        # recherche du maximum
        if element > maxi:
            maxi = element

    # retour du résultat
    return mini, maxi


def minimax2(maListe):
    """ Recherche du maximum et du minimum dans maListe """

    # initialisation
    mini = maListe[0]
    maxi = maListe[0]

    for element in maListe:
        mini = min(mini, element)
        maxi = max(maxi, element)

    # retour du résultat
    return mini, maxi


def minimax3(maListe):
    """ Recherche du maximum et du minimum dans maListe """
    return min(maListe), max(maListe)

if __name__ == "__main__":
    # nombre de points
    n = int(input("nombre de points : "))
    print("n = ", n)

    # remplissage d'une liste pseudo aleatoire de nombres entre 0 et 100
    maListe = [100. * random() for i in range(n)]
    # ou avec numpy
    # maListe = [randint(0, 100) for i in range(n)]

    mini, maxi = minimax(maListe)
    print("maximum = ", maxi)
    print("minimum = ", mini)

    mini, maxi = minimax2(maListe)
    print("maximum = ", maxi)
    print("minimum = ", mini)

    mini, maxi = minimax3(maListe)
    print("maximum = ", maxi)
    print("minimum = ", mini)

    import cProfile
    print("--------")
    print(cProfile.run("minimax(maListe)"))
    print("--------")
    print(cProfile.run("minimax2(maListe)"))
    print("--------")
    print(cProfile.run("minimax3(maListe)"))
