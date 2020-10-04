#!/usr/bin/env python
"""
A very quick and dirty random number generation script.

This generates the operands and operator for the ALU.

It isn't very good, but it was easy to write.

"""
from random import seed
from random import randint

opA = open("a.txt","w")
seed(1)
for _ in range(256):
    value = randint(0, 255)
    opA.write(format(value, 'x') + '\n')
opA.close()

opB = open("b.txt","w")
seed(2)
for _ in range(256):
    value = randint(0, 255)
    opB.write(format(value, 'x') + '\n')
opB.close()

op = open("op.txt","w")
seed(3)
for _ in range(256):
    value = randint(0, 3)
    op.write(format(value, 'x') + '\n')
op.close()
