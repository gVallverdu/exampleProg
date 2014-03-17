#!/usr/bin/env python
# -*- coding=utf-8 -*-

""" factorielle  -  11.03.2014 """

def factorielle(n):
    """ Calcul de factorielle n """
    
    if n == 0:
        factorielle = 1
    else:
        # initialisation
        factorielle = 1

        # calcul
        for i in range(2, n + 1):
            factorielle *= i

    return factorielle

if __name__ == "__main__":
    # lecture de n
    n = int(raw_input("entrer n : "))
    print("n = {0}".format(n))

    # affichage du résultat
    print("{0}! = {1}".format(n, factorielle(n)))

