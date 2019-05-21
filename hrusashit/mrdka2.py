#!/usr/bin/env python3
#-*- coding:utf-8 -*-

import random

class Kostka:
        def __init__(self, pocetStran):
            self.pocetStran = pocetStran

        def hodKostkou(self):
            a = random.randint(1, self.pocetStran)
            #print(a)
            return a


n = int(input("Kolika stranou kostkou hážete"))
Gaykostka = Kostka(n)

for i in range(0,10): #Využíváme funkci hodKostkou 10x
    print(Gaykostka.hodKostkou()-2)

