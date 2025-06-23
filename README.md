# MI Fluencia Keretrendszer Tanfolyam

Ez a repository az **MI Fluencia Keretrendszer** interaktív online tanfolyamának teljes forráskódját és tartalmi anyagait tartalmazza. A tanfolyam célja, hogy segítsen neked fejleszteni a mesterséges intelligenciával (MI) való hatékony és eredményes együttműködéshez szükséges készségeket.

## 🚀 A tanfolyamról

Az MI Fluencia Keretrendszer egy gyakorlati megközelítés, amely négy alapkompetenciára (a "4D"-re) épül:

- **Delegálás**: Hogyan döntsük el stratégiailag, mely feladatokat érdemes az MI-re bízni
- **Leírás**: A hatékony kommunikáció művészete az MI rendszerekkel  
- **Megkülönböztetés**: Az MI által generált tartalmak kritikus értékelése
- **Gondosság**: Az MI-vel való munka etikai és biztonsági szempontjai

## 📚 Tanfolyam felépítése

A tanfolyam 12 leckéből áll:

1. **Bevezetés az MI Fluenciába** - A kurzus céljai és az MI Fluencia fontossága
2. **Az MI Fluencia Keretrendszer** - A 4D keretrendszer bemutatása
3. **Mélymerülés 1: Mi a Generatív MI?** - Technikai áttekintés
4. **Delegálás** - Stratégiai feladatkiosztás
5. **A Delegálás alkalmazása** - Gyakorlati feladat
6. **Leírás** - Hatékony kommunikáció az MI-vel
7. **Mélymerülés 2: Hatékony Promptolási Technikák** - Praktikus tippek
8. **Megkülönböztetés** - Kritikus értékelési készségek
9. **A Leírás-Megkülönböztetés Hurok** - Komplex projektek kezelése
10. **Gondosság** - Etikai és biztonsági szempontok
11. **Összegzés és Tanúsítvány** - Befejezés és értékelés
12. **További gyakorlatok** - Önálló fejlődési lehetőségek

## 🛠️ Technikai követelmények

### Alapvető követelmények
- Python 3.8 vagy újabb
- Git
- LaTeX disztribúció (pamfletek fordításához)

### Ajánlott fejlesztői eszközök
- VS Code vagy más szövegszerkesztő
- Terminal/parancssor hozzáférés

## ⚙️ Telepítés és beállítás

### 1. Repository klónozása
```bash
git clone https://github.com/newpush-labs/newpush-ai-fluency.git
cd newpush-ai-fluency
```

### 2. Python virtuális környezet létrehozása
```bash
python -m venv venv
source venv/bin/activate  # macOS/Linux
# vagy
venv\Scripts\activate     # Windows
```

### 3. Függőségek telepítése
```bash
pip install -r requirements.txt
```

### 4. Fejlesztői szerver indítása
```bash
./scripts/start-server.sh
```

A tanfolyam ezután elérhető lesz a `http://localhost:8000` címen.

## 📁 Projekt struktúra

```
ai-fluency/
├── course/                    # Tanfolyam tartalma
│   ├── en/                   # Angol verzió
│   └── hu/                   # Magyar verzió
│       ├── *.md             # Lecke fájlok
│       ├── pamphlets/       # LaTeX pamfletek
│       ├── videos/          # Videó szkriptek
│       ├── video-atiratok/  # Videó átiratok
│       └── images/          # Képek és grafikák
├── docs/                     # Projekt dokumentáció
├── scripts/                  # Automatizálási szkriptek
├── includes/                 # Közös tartalmak
├── mkdocs.yml               # MkDocs konfiguráció
└── requirements.txt         # Python függőségek
```

## 🔧 Fő szkriptek és parancsok

### Weboldal építése és tesztelése
```bash
# Fejlesztői szerver indítása
./scripts/start-server.sh

# Dokumentáció építése
./scripts/build-docs.sh
```

### Pamfletek kezelése
```bash
# Összes pamflet fordítása PDF-be
./scripts/compile_pamphlets.sh

# PDF-ek szöveggé konvertálása
python scripts/extract_pdf_text.py

# PDF-ek képekké konvertálása
python scripts/convert_pdfs_to_images.py
```

### Egyéb hasznos szkriptek
```bash
# Videó átirat generálása
python scripts/get_transcript.py

# Pamfletek átnevezése
./scripts/rename_pamphlets.sh
```

## 📝 Tartalom szerkesztése

### Lecke fájlok
A lecke tartalmak Markdown formátumban vannak a `course/hu/` mappában. Minden lecke egy külön `.md` fájl.

### Pamfletek
A pamfletek LaTeX formátumban vannak írva a `course/hu/pamphlets/` mappában. Szerkesztés után futtasd a compile szkriptet:

```bash
./scripts/compile_pamphlets.sh
```

### Képek és média
Képeket helyezd el a `course/hu/images/` mappában. A Markdown fájlokban relatív útvonallal hivatkozz rájuk.

## 🌐 Lokalizáció

A projekt teljes mértékben támogatja a többnyelvűséget:

- **Angol verzió**: `course/en/` mappa
- **Magyar verzió**: `course/hu/` mappa
- **Közös elemek**: `includes/` mappa

A magyar verzióban informális hangnemet ("te" forma) használunk a felhasználók megszólítására.

## 🤝 Közreműködés

### Hibabejelentés
Ha hibát találsz, kérjük nyiss egy GitHub issue-t részletes leírással.

### Tartalom javítása
1. Fork-old a repository-t
2. Hozz létre egy új branch-et a változtatásaidhoz
3. Végezd el a módosításokat
4. Teszteld a változtatásokat helyben
5. Küldj pull request-et részletes leírással

### Fejlesztési irányelvek
- Tartsd be a projekt kódolási konvencióit
- Minden szkriptet tesztelj le használat előtt
- A dokumentációt tartsd naprakészen
- Használj virtuális környezetet csomagok telepítéséhez

## 📋 Fejlesztési notes

### MkDocs konfiguráció
A `mkdocs.yml` fájl tartalmazza a weboldal konfigurációját. A fejlesztés során a szerver automatikusan újratölti az oldalt változtatások esetén.

### LaTeX pamfletek
A pamfletek egy közös sablont használnak (`course/templates/pamphlet_template.tex`). Új pamflet létrehozásakor ezt a sablont használd alapként.

### Automatizálás
A legtöbb ismétlődő feladat automatizálva van szkriptekkel. Új szkripteket a `scripts/` mappában helyezz el.

## 📄 Licenc

Ez a projekt a NewPush Labs tulajdona. Minden jog fenntartva.

Copyright © 2024 NewPush Labs

## 🆘 Támogatás

Ha kérdésed van vagy segítségre van szükséged:

1. Nézd meg a [dokumentációt](docs/) részletes útmutatókért
2. Nyiss egy GitHub issue-t technikai problémák esetén
3. Vedd fel a kapcsolatot a NewPush Labs csapatával

## 🔄 Verziókezelés

A projekt [Semantic Versioning](https://semver.org/) szabványt követi. A fő verziók a következő változásokat jelzik:

- **Major**: Jelentős strukturális változások vagy törő módosítások
- **Minor**: Új funkciók vagy lecke tartalmak hozzáadása
- **Patch**: Hibajavítások és kisebb módosítások

---

**Jó tanulást és hatékony MI együttműködést!** 🤖✨