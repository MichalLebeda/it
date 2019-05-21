#!/usr/bin/env python3
#-*- coding:utf-8 -*-


class clovek:

    def __init__(self, jmeno, prijmeni, vek):
        self.jmeno=jmeno
        self.prijmeni=prijmeni
        self.vek=vek

    def vypisJmeno(self):
        print("-----------------")
        print(self.jmeno, self.prijmeni, self.vek)


class student(clovek):

    def __init__(self, jmeno, prijmeni, vek):
        super(student, self).__init__(jmeno, prijmeni, vek)


    def vypisStudenta(self):
        super(student, self).vypisJmeno()
        print("student")
        if self.vek > 18:
            print("střední škola")

        else:
            print("základní škola")



matous = clovek("Matouš", "Beran", 19)
jonas = student("Jonáš", "Vaculík", 15)
david = student("David", "Hruška", 19)

matous.vypisJmeno()
jonas.vypisStudenta()
david.vypisStudenta()

