#!/usr/bin/env python
# -*- coding=utf-8 -*-

""" pi  -  14.03.2014

    Calcul du nombre pi par Monte Carlo.
    Principe : La probabilité qu'un point de coordonnées (x,y) 
    avec x et y dans l'intervalle [0;1] soit dans le quart de 
    cercle de centre (0,0) et de rayon 1 est égal au rapport des 
    aires du quart de cercle de rayon 1 et du carré de largeur 1 
    soit pi/4. """

import math
from random import random

def prog_pi(ntirage = 100):
    """ calcul du nombre pi """

    # initialisation
    n = 0
    xDansCercle = list()
    yDansCercle = list()
    xHorsCercle = list()
    yHorsCercle = list()

    # calcul monte carlo
    for i in range(ntirage):
        x = random()
        y = random()

        if x**2 + y**2 < 1.0:
            n += 1
            xDansCercle.append(x)
            yDansCercle.append(y)
        else:
            xHorsCercle.append(x)
            yHorsCercle.append(y)

    # affichage des résultats
    piCalcule = 4.0 * float(n) / float(ntirage)
    print("pi         = {0}".format(piCalcule))
    print("% d'erreur = {0}".format((math.pi - piCalcule) / math.pi * 100))

    # representation graphique
    import matplotlib.pyplot as plt
    # points dans le cercle
    plt.plot(xDansCercle, yDansCercle, "ro", label = "tirages dans le cercle")
    # points hors du cercle
    plt.plot(xHorsCercle, yHorsCercle, "go", label = "tirages hors du cercle")
    # cercle
    npts = 100
    xcercle = [float(xi) / float(npts) for xi in range(npts + 1)]
    ycercle = [math.sqrt(1.0 - xi**2) for xi in xcercle]
    plt.plot(xcercle, ycercle, "b-", linewidth = 3, label = "cercle")
    # options du graphiques
    plt.title("Calcul du nombre pi par monte carlo")
    plt.axes().set_aspect("equal")
    plt.grid()
    plt.legend()
    plt.xlabel("x")
    plt.ylabel("y")
    # affichage
    plt.show()

if __name__ == "__main__":
    ntirage = int(raw_input("entrer le nombre de tirage : "))
    print("ntirage = {0}".format(ntirage))
    prog_pi(ntirage)


