#!/usr/bin/env python
# -*- coding=utf-8 -*-

""" somme  -  11.03.2014 """

def prog_somme(n):
    """ Calcul de la somme des n premiers entiers """

    # initialisation
    somme = 0.0

    for i in range(n + 1):
         somme += i

    # ou somme = sum(range(n + 1))

    return somme

if __name__ == "__main__":
    # lecture de n
    n = int(raw_input("entrer n : "))
    print("n = {0}".format(n))

    print("Résultat = {0}".format(prog_somme(n)))

