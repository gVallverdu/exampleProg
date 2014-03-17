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

    # calcul monte carlo
    for i in range(ntirage):
        x = random()
        y = random()

        if x**2 + y**2 < 1.0:
            n += 1

    # affichage des résultats
    piCalcule = 4.0 * float(n) / float(ntirage)
    print("pi         = {0}".format(piCalcule))
    print("% d'erreur = {0}".format((math.pi - piCalcule) / math.pi * 100))

if __name__ == "__main__":
    # lecture du nombre de tirage
    ntirage = int(raw_input("entrer le nombre de tirage : "))
    print("ntirage = {0}".format(ntirage))

    prog_pi(ntirage)


