import sys
import os

# 1. Kontrollime, kas kasutaja sisestas käsurealt otsitava laiendi
if len(sys.argv) < 2:
    print("Viga: Palun sisesta otsitav laiend! Näiteks: python task_02.py txt")
    sys.exit()

# Salvestame otsitava laiendi muutujasse
otsitav_laiend = sys.argv[1]
faili_nimi = "random.txt"

# 2. Kontrollime, kas random.txt on üldse olemas
if not os.path.exists(faili_nimi):
    print(f"Viga: Faili '{faili_nimi}' ei leitud. Palun käivita enne task_01.py!")
    sys.exit()

kogus = 0

# 3. Loeme faili rida-realt ja otsime vastet
with open(faili_nimi, "r", encoding="utf-8") as fail:
    for rida in fail:
        # Eemaldame reavahetused ja tühikud ning võrdleme otsitava laiendiga
        if rida.strip() == otsitav_laiend:
            kogus += 1

# 4. Väljastame tulemuse vastavalt sellele, kas leiti midagi või mitte
if kogus > 0:
    print(f"Laiendit '{otsitav_laiend}' leiti failist {kogus} korda.")
else:
    print(f"Ei leitud (laiendi nimi: {otsitav_laiend}).")