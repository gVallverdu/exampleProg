#!/usr/bin/env python
# -*- coding=utf-8 -*-

import numpy as np
import matplotlib.pyplot as plt

# definition d'une fonction
def C(t, A = 1000., k = 0.2, r = 0.1):
    C = A * np.exp(- k * t) 
    DC = (2. * np.random.rand() - 1.) * r * C
    return C + DC

# tracé de la fonction avec matplotlib
t = np.arange(0., 30., 0.25)
valc = [C(ti) for ti in t]
plt.plot(t, valc, "bo")
plt.plot(t, C(t, r = 0.), "r-")
plt.show()

# impression dans un fichier
t = np.linspace(0., 30., 15)
lines = "# Concentration en fonction du temps\n"
lines += "# colonne 1 : t (s)\n"
lines += "# colonne 2 : C (mol.L-1.s-1)\n"
lines += "# colonne 3 : Delta C (mol.L-1.s-1)\n"
for ti in t:
    valc = 1000. * np.exp( -0.2 * ti)
    DC = 0.1 * np.random.rand() * valc
    lines += "%10f %16e %16e\n" % (ti, valc, DC)

open("donnees.dat", "w").write(lines)

# lecture du fichier avec numpy
data = np.loadtxt("donnees.dat", dtype=float, comments="#", usecols=(0,1,2))
# Les options sont ici celles par default donc tu aurais juste pu mettre : 
#data = np.loadtxt("donnees.dat")

# premiere colonne
print("premiere colonne")
print(data[:,0])

# quelques stats
print("moyenne      :  {0}".format(data[:,1].mean()))
print("standard dev : {0}".format(data[:,1].std()))
print("erreur max   : %8.4f %%" % ((data[:,2] / data[:,1]).max() * 100.))
print("erreur min   : %6.2f %%" % ((data[:,2] / data[:,1]).min() * 100.))

# valeurs où l'incertitudes est inférieure à 5%
indices = np.where(data[:,2] / data[:,1] < .05)[0]
for i in indices:
    print("%6.2f %e %f" % (data[i,0], data[i,1], data[i,2] / data[i,1]))

