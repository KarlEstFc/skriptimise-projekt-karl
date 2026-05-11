# Skriptimise Mitmekeelsuse Projekt

See projekt sisaldab lahendusi faililaiendite lugemiseks, genereerimiseks ja otsimiseks kolmes erinevas keeles: **Bash**, **Python** ja **PowerShell**.

## Paigaldamine
1. Klooni repositoorium oma masinasse:
   `git clone https://github.com/KarlEstFc/skriptimise-projekt-karl.git karl`
2. Liigu projekti kausta:
   `cd karl`

## Kasutamine

### 1. Bash (Linux / Ubuntu)
- **Laiendi genereerimine:** `./task_01.sh` (Võtab `laiendid.txt` failist suvalise laiendi ja lisab `random.txt` faili).
- **Laiendi otsimine:** `./task_02.sh txt` (Otsib ja loendab, mitu korda antud laiend failis esineb).

### 2. Python (Windows / Linux)
- **Laiendi genereerimine:** `python task_01.py`
- **Laiendi otsimine:** `python task_02.py txt`

### 3. PowerShell (Windows)
Mooduli laadimine ja kasutamine:
1. `Import-Module .\TwoTask\TwoTask.psd1`
2. `Task01`
3. `Task02 -Laiend "txt"`