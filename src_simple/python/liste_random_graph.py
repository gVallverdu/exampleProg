#!/usr/bin/env python
# -*- coding=utf-8 -*-

""" liste_random  -  11.03.2014 """

from random import random

def liste_random(n = 20):
    """ Remplissage et affichage d'une liste aléatoire 
        de nombre entre -1 et 1 """

    # remplissage de la liste
    maListe = [2. * random() - 1. for i in range(n)]

    # affichage de la liste
    for x in maListe:
        print(x)

    return maListe

def graph(maListe):
    """ representation graphique avec matplotlib """

    import matplotlib.pyplot as plt

    plt.plot(maListe, "rx")
    plt.xlabel("indice")
    plt.ylabel("Nombre aleatoire")
    plt.title("Liste de nombre aleatoire")
    plt.show()

if __name__ == "__main__":
    # lecture du nombre de tirage
    n = int(raw_input("entrer n : "))
    print("n = {0}".format(n))

    # construction de la liste
    maListe = liste_random(n)

    # représentation graphique
    graph(maListe)

