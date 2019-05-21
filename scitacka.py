#!/usr/bin/python
import sys
def main():
    n = int(input("kolik cisel chcete secist? "))

    vysledek = 0
    for i in range (0, n):
        vysledek += int(input("zadejte cislo "))
        print(vysledek)

    print("finalni vysledek je:")
    print(vysledek)

if __name__ == "__main__":
    main()



