# Failide Laiendite Haldur

Skriptid failide laiendite lugemiseks ja otsimiseks kolmes programmeerimiskeeles.

## Kirjeldus

Projekt sisaldab kahte ülesannet:

1. **Task 1** — Loe juhusliku laiendi failist `laiendid.txt` ja kirjuta faili `random.txt`
2. **Task 2** — Otsib ja loendab, mitu korda antud laiend failist `random.txt` esineb

## Paigaldamine

```bash
git clone https://github.com/KarlEstFc/skriptimise-projekt-karl.git
cd skriptimise-projekt-karl
```

## Kasutamine

### Bash
```bash
./task_01.sh              # Genereeri juhuslik laiend
./task_02.sh txt          # Otsida 'txt' esinemisi
```

### Python
```bash
python task_01.py         # Genereeri juhuslik laiend
python task_02.py txt     # Otsida 'txt' esinemisi
```

### PowerShell
```powershell
Import-Module .\TwoTask\TwoTask.psd1
Task01                    # Genereeri juhuslik laiend
Task02 -Laiend txt        # Otsida 'txt' esinemisi
```

## Failide Ülevaade

| Fail | Kirjeldus |
|------|-----------|
| `task_01.sh` | Bash: genereeri juhuslik laiend |
| `task_02.sh` | Bash: otsi laiendi esinemisi |
| `task_01.py` | Python: genereeri juhuslik laiend |
| `task_02.py` | Python: otsi laiendi esinemisi |
| `TwoTask/` | PowerShell moodul Task01 ja Task02 funktsioonidega |
| `laiendid.txt` | Algfail failide laiendiga (txt, pdf, jpg, png) |
| `random.txt` | Väljundfail, mida Task1 täidab |

## Tehnilised Üksikasjad

Kõik skriptid on kirjutatud puhtalt ja lihtsalt:
- Lugemas failidest andmeid
- Kasutades juhuslikku valikut
- Kirjutades tulemusi väljundfaili
- Käsitledes vigu korrektselt

Programmid väljuvad koodi `1` puhul viga ja koodi `0` puhul edukas tegemine.