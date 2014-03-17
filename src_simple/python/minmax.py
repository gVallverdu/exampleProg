#!/usr/bin/env python
# -*- coding=utf-8 -*-

""" minmax  -  11.03.2014 """

from random import random

def minimax(maListe):
    """ Recherche du maximum et du minimum dans une liste pseudo-alétoire """

    # recherche du maximum et du minimum
    # initialisation
    mini = maListe[0]
    maxi = maListe[0]

    for i in range(n):
        # recherche du minimum
        if maListe[i] < mini:
            mini = maListe[i]

        # recherche du maximum
        if maListe[i] > maxi:
            maxi = maListe[i]

    print("maximum = {0}".format(maxi))
    print("minimum = {0}".format(mini))

    # avec les fonctions min() et max()
    print("maximum = {0}".format(max(maListe)))
    print("minimum = {0}".format(min(maListe)))

if __name__ == "__main__":
    # nombre de points
    n = int(raw_input("entrer n : "))
    print("n = {0}".format(n))

    # remplissage d'une liste pseudo aleatoire de nombres entre 0 et 100
    maListe = [100. * random() for i in range(n)]
    # ou avec des entiers
    # maListe = [randint(0, 100) for i in range(n)]

    minimax(maListe)

