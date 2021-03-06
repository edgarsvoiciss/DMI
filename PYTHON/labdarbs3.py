# -*- coding: utf-8 -*-

from math import sin
import numpy as np
import matplotlib.pyplot as plt

def mans_kosinussh(x):
      k = 0
      a = 1
      S = a
      while k<500:
         k = k + 1
         R = x**2 / ((2**2)*(2*k-1)*2*k)
         a = a * R
         S = S + a

      return S


def citafunkcija(x):
      return mans_kosinussh(x)-3

a = 2.57 #pi/2
b = 4.71 #3*pi/2
x = np.arange(a,b,0.01)
y = np.cosh(x/2)
yy = mans_kosinussh(x)
plt.plot(x,y)
plt.plot (x,yy)
plt.grid()
plt.show()


funa = citafunkcija(a)
funb = citafunkcija(b)
if funa * funb > 0:
    print "[%.2f,%.2f] intervala saknes nav"%(a,b)
    print "vai ir paru saknu skaits"
    exit()


print "Turpinajums, ja sakne tomer ir:"
delta_x = 1.e-5
k = 0
while b-a > delta_x:
    k = k+1
    x = (a+b)/2
    funx = citafunkcija(x)
    print "%3d.: a=%.5f f(%.5f)=%8.5f b=%.5f"%(k,a,x,funx,b)
    if funa * funx > 0:
        a = x
    else:
        b = x



print "Gala rezultats:"
print "a=%.5f f(a)=%.5f"%(a,citafunkcija(a)),
print "x=%.5f f(x)=%.5f"%(x,funx),
print "b=%.5f f(b)=%.5f"%(b,citafunkcija(b)),
print "Rezultats ir sasniegts %d iteracijas"%(k)
print "Sakne ir %.5f, tâpçc ka y ir vienâds ar %.5f."%(x,citafunkcija(x))
print "Ievadot vērtību (mans_kosinussh)=-3, šis līmenis tiek sasniegts pie argumenta (a)=3.5"
