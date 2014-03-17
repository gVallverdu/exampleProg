#!/usr/bin/env python
# -*- coding=utf-8 -*-

""" simpson  -  11.03.2014 

Intégration par la méthode de Simpson. L'intégration analytique 
de la fonction (x^2 - 3x - 6) e^-x entre 1 et 3 donne comme 
application numérique -2.525369 

voir également : scipy.integrate.simps
"""

from math import exp

def simpson(a, b, npas = 20):
    """ integration de simpson """

    # initialisation
    integrale = 0.0
    pas = (b - a) / float(npas)
    x = a

    # calcul de l'integrale
    while x < b:
        integrale += pas / 3. * (f(x) + 4. * f(x + pas) + f(x + 2. * pas))
        x += 2. * pas

    return integrale

def f(x):
    """ fonction numérique utilisée """
    return (x**2 - 3 * x - 6) * exp(-x)

if __name__ == "__main__":
    # lecture de l'intervalle
    a = float(raw_input("entrer a : "))
    print("a = {0}".format(a))

    b = float(raw_input("entrer b : "))
    print("b = {0}".format(b))

    # nombre de pas
    npas = int(raw_input("entrer le nombre de pas : "))
    print("npas = {0}".format(npas))

    integrale = simpson(a, b, npas)

    analytique = -2.525369
    print("Résultat  = {0}".format(integrale))
    print("Résidu    = {0}".format(analytique - integrale))
    print("Précision = {0}".format((analytique - integrale) / analytique * 100))

