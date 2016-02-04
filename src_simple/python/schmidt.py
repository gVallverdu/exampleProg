#!/usr/bin/env python
# -*- coding=utf-8 -*-

""" schmidt  -  13.03.2014 """

from math import sqrt


def schmidt():
    """ Procédé d'orthogonalisation de Gram-Schimdt.
        Soit u et v deux vecteurs. On cherche le vecteur vp le plus
        proche de v orthogonal à u. """

    # vecteur u
    u = [1., 1, 1.]
    normu = sum([ui**2 for ui in u])

    # vecteur v
    v = [1., 2., 3.]

    # calcul du produit scalaire
    scalaire = sum([ui * vi for ui, vi in zip(u, v)])
    print("u.v = {0}".format(scalaire))

    # orthogonalisation de schmidt
    if scalaire != 0.0:
        vp = [vi - scalaire / normu * ui for ui, vi in zip(u, v)]

        # verification
        print("u.vp = {0}".format(sum([ui * vpi for ui, vpi in zip(u, vp)])))
        print("vp = {0}".format(vp))

if __name__ == "__main__":
    schmidt()
