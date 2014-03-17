#!/usr/bin/env python
# -*- coding=utf-8 -*-

""" calc_val_fonction_2  -  11.03.2014 """

def calc_val_fonction_2():
    """ calcule des valeurs de la fonction f(x) = x^2 pour x dans [-5 ; 5] """

    # initialisation
    x = -5.0
    pas = 0.5

    # boucle sur les valeurs de x
    while x <= 5:
        print(x**2)
        x += pas

if __name__ == "__main__":
    calc_val_fonction_2()

