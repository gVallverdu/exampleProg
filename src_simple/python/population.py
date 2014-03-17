#!/usr/bin/env python
# -*- coding=utf-8 -*-

""" population  -  11.03.2014 """

def prog_population():
    """ Une population est réduite de 40% tous les 3 ans. 
        Au bout de combien d'années la population est négligeable 
        (inférireure à 0.1% de la population initiale) ? """

    # initialisation
    population = 100.0
    an = 0
    perte = .4
    seuil = .1 / 100. * population

    # boucle sur les années
    while population > seuil:
        an += 3
        population *= (1. - perte)
        print("{0} {1}".format(an, population))

    print("Au bout de {0} ans, la population est inférieure à 0.1% de la population initiale.".format(an))

if __name__ == "__main__":
    prog_population()
