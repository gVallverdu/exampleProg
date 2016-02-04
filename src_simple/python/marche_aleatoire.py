#!/usr/bin/env python
# -*- coding=utf-8 -*-

""" marche_aleatoire  -  11.03.2014 """

from random import random


def marche_aleatoire():
    """ Marche aléatoire dans un plan 2D """

    # nombres de pas
    npas = 1000
    amplitude = .1

    # liste pour les coordonnées
    x = list()
    y = list()

    # initialisation
    x.append(0.)
    y.append(0.)

    # marche aléatoire
    for i in range(npas):
        wx = 2. * random() - 1.
        wy = 2. * random() - 1.
        x.append(x[i] + amplitude * wx)
        y.append(y[i] + amplitude * wy)

    # représentation avec matplotlib
    import matplotlib.pyplot as plt

    plt.plot(x, y, "r-", label="trajectoire")
    plt.plot(x[0], y[0], "go", label="start")
    plt.plot(x[-1], y[-1], "bo", label="end")
    plt.title("Marche aleatoire dans un plan 2D")
    plt.axes().set_aspect("equal")
    plt.grid()
    plt.xlabel("x")
    plt.ylabel("y")
    plt.legend()
    plt.show()

if __name__ == "__main__":
    marche_aleatoire()
