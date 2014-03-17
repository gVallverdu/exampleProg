#!/usr/bin/env python
# -*- coding=utf-8 -*-

""" calc_val_fonction_3  -  11.03.2014 """

def calc_val_fonction_3(pas = 0.1):
    """ calcule des valeurs de la fonction f(x) = x^2 pour x dans [-5 ; 5] """

    # initialisation
    x = -5.0

    # boucle sur les valeurs de x
    while x <= 5:
        print(f(x))
        x += pas

def f(x):
    """ fonction numérique utilisée """
    return x**2

if __name__ == "__main__":
    pas = 0.5
    calc_val_fonction_3(pas)
    #calc_val_fonction_3()

