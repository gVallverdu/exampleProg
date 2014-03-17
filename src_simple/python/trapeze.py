#!/usr/bin/env python
# -*- coding=utf-8 -*-

""" trapeze  -  11.03.2014 

Intégration par la méthode des trapèzes. L'intégration analytique 
de la fonction (x^2 - 3x - 6) e^-x entre 1 et 3 donne comme 
application numérique -2.525369

voir également : scipy.integrate.trapz
"""

from math import exp

def trapeze(a, b, npas):
    """ integration par la methode des trapeze """

    # initialisation
    integrale = 0.
    pas = (b - a) / float(npas)

    # calcul de l'integrale
    for i in range(npas):
        x = a + float(i) * pas
        integrale += pas * (f(x) + f(x + pas)) / 2.

    return integrale

def f(x):
    """ fonction numerique utilisée """
    return (x**2 - 3. * x - 6.) * exp(-x)

if __name__ == "__main__":
    # lecture de l'intervalle
    a = float(raw_input("entrer a : "))
    print("a = {0}".format(a))

    b = float(raw_input("entrer b : "))
    print("b = {0}".format(b))

    # nombre de segments
    npas = int(raw_input("entrer le nombre de pas : "))
    print("npas = {0}".format(npas))

    integrale = trapeze(a, b, npas)

    analytique = -2.525369
    print("Résultat  = {0}".format(integrale))
    print("Résidu    = {0}".format(analytique - integrale))
    print("Précision = {0}".format((analytique - integrale) / analytique * 100))

