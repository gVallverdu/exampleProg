#!/usr/bin/env python
# -*- coding=utf-8 -*-

""" le_plus_grand  -  11.03.2014

Lire x et y et dire lequel est le plus grand """

# lecture de x et y
x = float(raw_input("entrer x : "))
print("x = {0}".format(x))

y = float(raw_input("entrer y : "))
print("y = {0}".format(y))

# test entre x et y
if x > y:
    print("x est plus grand")
    print("le plus grand = {0}".format(x))
elif y > x:
    print("y est plus grand")
    print("le plus grand = {0}".format(y))
else:
    print("x et y sont égaux")
    print("x = {0}\t y = {1}".format(x, y))

