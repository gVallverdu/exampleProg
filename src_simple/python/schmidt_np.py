#!/usr/bin/env python
# -*- coding=utf-8 -*-

""" schmidt  -  13.03.2014 """

import numpy as np

def schmidt():
    """ Procédé d'orthogonalisation de Gram-Schimdt.
        Soit u et v deux vecteurs. On cherche le vecteur vp le plus 
        proche de v orthogonal à u. 

        voir également numpy.linalg.qr()
    """

    # vecteur u
    u = np.array([1., 0., 0.])
    normu = np.sqrt((u**2).sum())

    # vecteur v
    v = np.array([1., 2., 3.])

    # calcul du produit scalaire
    scalaire = np.dot(u, v)
    print("u.v = {0}".format(scalaire))

    # orthogonalisation de schmidt
    if scalaire != 0.0:
        vp = v - scalaire / normu * u

        # verification
        print("u.vp = {0}".format(np.dot(u, vp)))
        print("vp = {0}".format(vp))

if __name__ == "__main__":
    schmidt()
