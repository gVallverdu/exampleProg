#!/usr/bin/env python
# -*- coding=utf-8 -*-

""" perimetre  -  11.03.2014 """

import math

def perimetre(rayon):
    """ Calcul du périmètre d'un cercle """
    return 2.0 * math.pi * rayon

if __name__ == "__main__":
    # lecture du rayon
    rayon = float(raw_input("entrer le rayon : "))
    print("rayon = {0}".format(rayon))

    # affichage du résultat
    print("périmètre = {0}".format(perimetre(rayon)))

