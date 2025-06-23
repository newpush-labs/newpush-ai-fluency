# 3A. lecke - Mi a generatív MI? (Mélymerülés)

!!! info "Videó átirat"
    Ez a videó teljes átirata. Használd a böngésző kereső funkcióját (Ctrl+F / Cmd+F) specifikus fogalmak kereséséhez.

## Bevezetés

Szia, a nevem Drew Bent, tanár, programozó és az Anthropic technikai stábjának tagja.

Üdvözöllek a generatív MI felfedezésében. Ebben a videóban elmélyedünk abban, hogy valójában mi is a generatív MI, hogyan működik a motorháztető alatt, és milyen technológiai áttörések tették lehetővé ezeket a rendszereket.

Lehet, hogy naponta interakcióba lépsz a generatív MI-vel anélkül, hogy teljesen megértenéd, mi történik a színfalak mögött. Változtassunk ezen.

## Mi a generatív MI?

A **generatív MI** olyan mesterséges intelligencia rendszerekre utal, amelyek képesek új tartalmat létrehozni, nem csupán a meglévő adatokat elemezni.

### Példa a különbségre

**Hagyományos MI:** E-maileket spamként vagy nem spamként osztályozhat minták alapján.

**Generatív MI:** Képes egy teljesen új e-mailt írni neked.

Az első megközelítés elemez és kategorizál. A második létrehoz valami újat, ami korábban nem létezett. Ez alapvető változást jelent az MI képességeiben.

## Nagy nyelvi modellek (LLM-ek)

A **nagy nyelvi modellek**, vagy **LLM-ek**, mint az Anthropic Claude modelljei, a generatív MI kiemelkedő típusai.

### Miért nevezik őket így?

- **Nyelvi modellek:** Arra vannak tanítva, hogy előre jelezzék és generálják az emberi nyelvet
- **Nagyok:** Milliárdnyi paramétert tartalmaznak - matematikai értékeket, amelyek meghatározzák, hogyan dolgozza fel a modell az információt, némileg hasonlóan az agy szinaptikus kapcsolataihoz

## A generatív MI fejlődésének útja

A mai generatív MI-hez vezető út nem volt hirtelen. Három kulcsfontosságú fejlesztés együttesen, a megfelelő időben történő összekapcsolódását vonta maga után.

### 1. Algoritmikus és architekturális áttörések

Míg a neurális hálózatok koncepcionálisan évtizedek óta léteznek, a **transzformer architektúra** 2017-es kifejlesztése játékmegváltó volt.

Ez az architektúra kiválóan alkalmas:
- Szövegszekvenciák feldolgozására
- A szavak közötti kapcsolatok fenntartására hosszú szövegrészeken keresztül
- A nyelv kontextusban való megértésére

### 2. Digitális adatok robbanásszerű növekedése

A digitális adatok robbanásszerű növekedése biztosította a képzéshez szükséges alapanyagot.

A modern LLM-ek, mint a Claude, különböző forrásokból tanulnak:
- Webhelyekből
- Kód-tárolókból
- Más szövegekből, amelyek az emberi tudást és kommunikációt képviselik

Ez a hatalmas információs szövevény segít a modelleknek széleskörű és árnyalt megértést kialakítani mind a nyelvről, mind a fogalmakról.

### 3. Számítási teljesítmény növekedése

A számítási teljesítmény hatalmas növekedése tette lehetővé ezeknek a komplex modelleknek az összes adat felhasználásával történő képzését.

#### Kulcstechnológiák:
- **GPU-k** (grafikus feldolgozó egységek)
- **TPU-k** (tenzor feldolgozó egységek)
- **Elosztott számítástechnikai hálózatok** (klaszterek)

Ezek olyan feldolgozást tesznek lehetővé, ami néhány évvel ezelőtt még lehetetlen lett volna.

## Skálázási törvények

E három tényező kombinációja egy fontos felfedezéshez vezetett, amelyet **skálázási törvényeknek** neveznek.

Ezek az empirikus megállapítások azt mutatták, hogy ahogy a modellek nagyobbak lettek és több adaton, több számítási teljesítménnyel tanultak, teljesítményük előre jelezhető módon javult.

### Felmerülő képességek

Még meglepőbb, hogy a kutatók azt találták, hogy teljesen új képességek kezdtek megjelenni, ahogy ezek a modellek nőttek. Olyan képességek, amelyeket senki sem programozott be explicit módon:

- A problémák lépésről lépésre történő végiggondolása
- Az új feladatokhoz való alkalmazkodás minimális utasítással

## Hogyan működnek ezek a rendszerek?

Vessünk egy pillantást a motorháztető alá, hogy hogyan is működnek ezek a rendszerek.

### Előképzés (Pre-training)

A kezdeti képzés, más néven **előképzés** során az LLM-ek, mint a Claude, milliárdnyi szöveges példa mintázatait elemzik.

Képzeld el, hogy elolvasol minden webhelyet és szöveget, amit csak találsz, nem csak azért, hogy információt szívj magadba, hanem hogy megértsd a szavak, kifejezések és fogalmak közötti statisztikai kapcsolatokat.

#### A folyamat:
1. **Mintázatok felismerése:** A modell lényegében egy komplex nyelvi és tudástérképet épít
2. **Következő szó jóslása:** A modellnek szöveget mutatnak, és megkérik, hogy jósolja meg, mi következik
3. **Iteratív finomítás:** Sok iteráció során a modell fokozatosan finomítja a jóslatait, megtanulva azokat a mintázatokat, amelyek a nyelvet koherenssé és értelmessé teszik

### Finomhangolás (Fine-tuning)

Az előképzés után a modellek további képzésen, úgynevezett **finomhangoláson** esnek át, ahol megtanulják:

- Követni az utasításokat
- Hasznos válaszokat adni
- Elkerülni a káros tartalom generálását

#### Módszerek:
- **Emberi visszajelzés:** A modell teljesítményének javítása érdekében
- **Megerősítéses tanulás:** Jutalmakkal és büntetésekkel formálja a modell viselkedését, hogy segítőkészebb, őszintébb és ártalmatlanabb legyen

### Telepítés és interakció

Az Anthropic modelljei esetében, miután a modelleket kiképezték, telepítik őket, hogy interakcióba léphess velük.

Amikor interakcióba lépsz a Claude-dal vagy egy másik LLM-mel:
1. **Promptot adsz meg:** Egy szöveg, amit a modell elolvas
2. **Generálás:** Majd folytat a képzés során tanult mintázatok alapján
3. **Nem előre megírt válaszok:** A modell nem előre megírt válaszokat kér le egy adatbázisból
4. **Statisztikai folytatás:** Ehelyett új szöveget generál, amely statisztikailag következik abból, amit írtál

### Kontextusablak

Van egy gyakorlati korlátja is annak, hogy egy LLM mennyi információt tud egyszerre figyelembe venni, ezt **kontextusablaknak** nevezik.

#### Mi a kontextusablak?
- **Működés:** Gondolj erre úgy, mint az MI munkamemóriájára
- **Tartalom:** A promptjaidat, az MI válaszait és minden más információt, amit a beszélgetés során megosztottál
- **Korlátok:** Bár az MI cégek folyamatosan növelik a kontextusablakot, hogy hosszabb kontextusú dokumentumokat és beszélgetéseket tegyenek lehetővé, ezek a korlátok emlékeztetnek minket arra, hogy ezeknek a rendszereknek nincs korlátlan hozzáférésük az információkhoz

## A modern generatív MI három kulcs jellemzője

Összefoglalva, a modern generatív MI-t három jellemző teszi olyan erőteljessé:

### 1. Hatalmas információfeldolgozási képesség
Képessége, hogy hatalmas mennyiségű információt dolgozzon fel a képzés során, lehetővé téve számára, hogy komplex és árnyalt mintázatokat tanuljon meg a nyelvben és a tudásban.

### 2. Kontextuson belüli tanulási képesség
Az LLM-ek képesek alkalmazkodni új feladatokhoz utasítások vagy példák alapján a promptodban, anélkül, hogy további képzésre lenne szükségük.

### 3. Méretből adódó felmerülő képességek
Ahogy ezek a modellek nagyobbak lesznek, olyan képességeket fejlesztenek ki, amelyeket nem explicit módon terveztek beléjük, néha még az alkotóikat is meglepve.

## Következő lépés

A következő videóban azt vizsgáljuk meg, hogy ezek a rendszerek mit tudnak és mit nem tudnak jól, valamint a leggyakoribb vagy legértékesebb alkalmazásaikat.
