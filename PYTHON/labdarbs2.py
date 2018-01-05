#!/usr/bin/python
# -*- coding: utf-8 -*-

from math import cosh
import numpy as np


print "         500"
print "        -----------"
print "       \\ "
print "        \\                  2*k"
print "         \\                X"
print "cosh(x/2)=| -----------------------------"
print "          |                     2*k"
print "          /            (2*k)!*2"
print "         / "
print "        / "
print "        -----------"
print "        k=0"


print "                         2"                     
print "                        x"
print "            R= --------------------"
print "                    2"
print "                   2*(2k-1)*2k"


def mans_kosinussh (x):
      k = 0
      a = 1
      print ("Pirmais saskaitamais: a%d = %6.2f")%(k,a)
      S = a
      while k<500:
         k = k + 1
	 R = x**2 / ((2**2)*(2*k-1)*2*k)
         a = a * R
         S = S + a 
         if k>=499:
	     print (" a%d = %6.2f")%(k,a)

      return S

x = 1. * input("Lietotaj, ludzu, ievadi argumentu (x): ")
print type(x)
y = cosh(x/2)
print "Standarta cosh(%.2f)=%.2f"%(x,y)


yy = mans_kosinussh(x)
print "Mans_cosh(%.2f)=%.2f"%(x,yy)






