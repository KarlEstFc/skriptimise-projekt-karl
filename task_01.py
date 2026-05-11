import random
import os

# Failide nimed
laiendite_fail = "laiendid.txt"
tulemuse_fail = "random.txt"

# 1. Kontrollime, kas laiendite fail on olemas
if not os.path.exists(laiendite_fail):
    print(f"Viga: Faili '{laiendite_fail}' ei leitud!")
    exit()

# 2. Loeme failist kõik laiendid järjendisse (listi)
with open(laiendite_fail, "r", encoding="utf-8") as fail:
    # Loeb read ja eemaldab tühikud/reavahetused
    laiendid =[rida.strip() for rida in fail if rida.strip()]

# 3. Kontrollime, et fail ei oleks tühi
if len(laiendid) == 0:
    print(f"Viga: Fail '{laiendite_fail}' on tühi!")
    exit()

# 4. Võtame failist ühe juhusliku laiendi
suvaline_laiend = random.choice(laiendid)

# 5. Lisame leitud laiendi uude faili (random.txt)
with open(tulemuse_fail, "a", encoding="utf-8") as fail:
    fail.write(suvaline_laiend + "\n")

# Prindime info
print(f"Edukalt lisatud juhuslik laiend '{suvaline_laiend}' faili {tulemuse_fail}.")