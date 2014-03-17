#!/usr/bin/env python
# -*- coding=utf-8 -*-

""" calc_val_fonction_1  -  11.03.2014 """

def calc_val_fonction_1():
    """ calcule des valeurs de la fonction f(x) = x^2 pour x dans [-5 ; 5] """

    for x in range(-5, 6, 1):
        print(x**2)

if __name__ == "__main__":
    calc_val_fonction_1()

