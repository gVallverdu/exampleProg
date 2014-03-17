#!/usr/bin/env python
# -*- coding=utf-8 -*-

""" liste_random  -  11.03.2014 """

from random import random

def liste_random(n = 20):
    """ Remplissage et affichage d'une liste aléatoire 
        de nombre entre -1 et 1 """

    # creation de la liste
    maListe = list()

    # remplissage et affichage de la liste
    for i in range(n):
        x = 2. * random() - 1.
        maListe.append(x)
        print(x)

    # ou
    maListe = [2. * random() - 1. for i in range(n)]

if __name__ == "__main__":
    # lecture du nombre de tirage aleatoire
    n = int(raw_input("entrer n : "))
    print("n = {0}".format(n))

    liste_random(n)

