#!/usr/bin/env python
# -*- coding=utf-8 -*-

""" perimetre  -  11.03.2014 

Calcul du périmètre d'un cercle """

import math

# lecture du rayon
rayon = float(raw_input("entrer le rayon : "))
print("rayon = {0}".format(rayon))

# calcul du perimètre
perimetre = 2.0 * math.pi * rayon

# affichage du résultat
print("périmètre = {0}".format(perimetre))

