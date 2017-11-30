Python 2.7.6 (default, Jun 22 2015, 17:58:13) 
[GCC 4.8.2] on linux2
Type "copyright", "credits" or "license()" for more information.
>>> vars()
{'__builtins__': <module '__builtin__' (built-in)>, '__name__': '__main__', '__doc__': None, '__package__': None}
>>> type(vars())
<type 'dict'>
>>> __builtins__.input
<built-in function input>
>>> __builtins__.input.__doc__
'input([prompt]) -> value\n\nEquivalent to eval(raw_input(prompt)).'
>>> print__builtins__.input.__doc__

Traceback (most recent call last):
  File "<pyshell#4>", line 1, in <module>
    print__builtins__.input.__doc__
NameError: name 'print__builtins__' is not defined
>>> print __builtins__.input.__doc__
input([prompt]) -> value

Equivalent to eval(raw_input(prompt)).
>>> sin(0.56)

Traceback (most recent call last):
  File "<pyshell#6>", line 1, in <module>
    sin(0.56)
NameError: name 'sin' is not defined
>>> vars()
{'__builtins__': <module '__builtin__' (built-in)>, '__name__': '__main__', '__doc__': None, '__package__': None}
>>> from math import sin
>>> vars()
{'__builtins__': <module '__builtin__' (built-in)>, '__doc__': None, '__name__': '__main__', '__package__': None, 'sin': <built-in function sin>}
>>> print sin.__doc__
sin(x)

Return the sine of x (measured in radians).
>>> sin(0.56)
0.5311861979208834
>>> from cmath import sin
>>> vars()
{'__builtins__': <module '__builtin__' (built-in)>, '__doc__': None, '__name__': '__main__', '__package__': None, 'sin': <built-in function sin>}
>>> print sin.__doc__
sin(x)

Return the sine of x.
>>> from math import sin as sinuss
>>> vars()
{'__builtins__': <module '__builtin__' (built-in)>, '__doc__': None, 'sinuss': <built-in function sin>, '__name__': '__main__', '__package__': None, 'sin': <built-in function sin>}
>>> import math
>>> vars()
{'__builtins__': <module '__builtin__' (built-in)>, '__doc__': None, 'sinuss': <built-in function sin>, '__name__': '__main__', '__package__': None, 'sin': <built-in function sin>, 'math': <module 'math' (built-in)>}
>>> cos(0.56)

Traceback (most recent call last):
  File "<pyshell#19>", line 1, in <module>
    cos(0.56)
NameError: name 'cos' is not defined
>>> math.cos
<built-in function cos>
>>> math.cos
<built-in function cos>
>>> math.cos(0.56)
0.8472551110134161
>>> import math as matematika
>>> vars()
{'__builtins__': <module '__builtin__' (built-in)>, 'matematika': <module 'math' (built-in)>, '__doc__': None, 'sinuss': <built-in function sin>, '__name__': '__main__', '__package__': None, 'sin': <built-in function sin>, 'math': <module 'math' (built-in)>}
>>> matematika.cos(0.56)
0.8472551110134161
>>> from math import *
>>> vars()
{'exp': <built-in function exp>, 'pow': <built-in function pow>, 'fsum': <built-in function fsum>, 'cosh': <built-in function cosh>, 'ldexp': <built-in function ldexp>, 'hypot': <built-in function hypot>, 'acosh': <built-in function acosh>, 'tan': <built-in function tan>, 'asin': <built-in function asin>, 'isnan': <built-in function isnan>, 'log': <built-in function log>, 'fabs': <built-in function fabs>, 'floor': <built-in function floor>, 'atanh': <built-in function atanh>, 'sqrt': <built-in function sqrt>, '__package__': None, 'frexp': <built-in function frexp>, 'factorial': <built-in function factorial>, 'degrees': <built-in function degrees>, 'pi': 3.141592653589793, 'log10': <built-in function log10>, '__doc__': None, 'math': <module 'math' (built-in)>, 'asinh': <built-in function asinh>, 'fmod': <built-in function fmod>, 'atan': <built-in function atan>, '__builtins__': <module '__builtin__' (built-in)>, 'copysign': <built-in function copysign>, 'cos': <built-in function cos>, 'matematika': <module 'math' (built-in)>, 'ceil': <built-in function ceil>, 'atan2': <built-in function atan2>, 'isinf': <built-in function isinf>, 'sinh': <built-in function sinh>, '__name__': '__main__', 'trunc': <built-in function trunc>, 'expm1': <built-in function expm1>, 'e': 2.718281828459045, 'tanh': <built-in function tanh>, 'radians': <built-in function radians>, 'sinuss': <built-in function sin>, 'lgamma': <built-in function lgamma>, 'erf': <built-in function erf>, 'erfc': <built-in function erfc>, 'modf': <built-in function modf>, 'sin': <built-in function sin>, 'acos': <built-in function acos>, 'log1p': <built-in function log1p>, 'gamma': <built-in function gamma>}
>>> cos(0.56)
0.8472551110134161
>>> 
