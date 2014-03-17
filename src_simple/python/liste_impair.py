#!/usr/bin/env python
# -*- coding=utf-8 -*-

""" liste_impair  -  11.03.2014 """

def liste_impair(n = 20):
    """ Remplissage et affichage d'une liste des n premiers 
        entiers impmairs """

    # creation d'une liste
    x = list()

    # remplissage de la liste
    for i in range(n):
        x.append(2 * i + 1)

    # ou
    x = [2 * i + 1 for i in range(n)]

    # affichage de la liste
    print("liste des {0} premiers nombres imapirs".format(n))
    for i in range(n):
        print(x[i])

if __name__ == "__main__":
    # lecture du nombre d'entiers
    n = int(raw_input("entrer n : "))
    print("n = {0}".format(n))

    liste_impair(n)
