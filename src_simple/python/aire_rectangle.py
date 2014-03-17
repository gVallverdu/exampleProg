#!/usr/bin/env python
# -*- coding=utf-8 -*-

""" aire_rectangle  -  11.03.2014 """

def aire_rectangle(largeur, longueur):
    """ Calcul de l'aire d'un rectangle """
    return largeur * longueur

if __name__ == "__main__":
    # lecture des variables
    largeur = float(raw_input("largeur = "))
    print("largeur = {0}".format(largeur))

    longueur = float(raw_input("largeur = "))
    print("longueur = {0}".format(longueur))

    # arriche le résultats
    print("Aire du rectangle = {0} ".format(aire_rectangle(largeur, longueur)))
