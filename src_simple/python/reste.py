#!/usr/bin/env python
# -*- coding=utf-8 -*-

""" reste  -  11.03.2014 """

def prog_reste(dividende, diviseur):
    """ Calcul du reste de la division de deux entiers """

    reste = dividende % diviseur

    print("reste = {0}".format(reste))

if __name__ == "__main__":
    # lecture des valeurs
    dividende = int(raw_input("entrer le dividende : "))
    print("dividende = {0}".format(dividende))

    diviseur = int(raw_input("entre le diviseur : "))
    print("diviseur = {0}".format(diviseur))

    prog_reste(dividende, diviseur)

