# 7. Hatékony promptolási technikák (Mélymérülés)

!!! info "Videó átirat"
    Ez a videó teljes átirata. Használd a böngésző kereső funkcióját (Ctrl+F / Cmd+F) specifikus fogalmak kereséséhez.

## Bevezetés

Fedezzük fel az egyik leggyakorlatiasabb készséget az MI-vel való munka során: a hatékony promptok készítését. Ez talán technikásnak vagy bonyolultnak hangzik, és néhány útmutató valóban annak láttatja, de a lényege meglepően egyszerű.

A promptolás egyszerűen az, ahogyan a kurzus leírási kompetenciáját a gyakorlatban alkalmazzuk: világosan kommunikáljuk, mit akarunk, hogyan akarjuk, és hogyan szeretnénk interakcióba lépni az MI asszisztensünkkel az egész folyamat során.

Gondolj a promptolásra úgy, mint egy feladat elmagyarázására egy segítőkész új kollégának, aki lelkesen segít, de világos útmutatásra és elvárásokra van szüksége a legjobb munkájához.

Ebben a részben a Claude-ot fogjuk használni, de ezek a tippek sok más MI rendszerre is átvihetők.

## Mi a prompt engineering?

Talán hallottad már a "prompt engineering" kifejezést. A prompt engineering egyszerűen a hatékony utasítások tervezésének gyakorlata az olyan MI rendszerek számára, mint a Claude. Arról szól, hogy úgy fogalmazd meg a kérdéseidet és adj kontextust, hogy az MI asszisztensek pontosan megértsék, mit szeretnél.

### Emberi kommunikáció vs. MI kommunikáció

Ami lenyűgöző, az az, hogy a hatékony promptolás ötvözi az ismerős emberi kommunikációs készségeket néhány, az MI-re specifikus megfontolással.

**Hasonlóságok az emberi kommunikációval:**
- Világosság
- Releváns kontextus biztosítása
- Konkrét példák adása

**MI-specifikus különbségek:**
- Explicit módon kell megfogalmazni olyan dolgokat, amelyeket az emberek természetesen kikövetkeztetnének
- Alkalmazkodni kell az MI korlátozott kontextusablakához
- Néha specifikus formázást kell használni, amit a gépek könnyen feldolgoznak

### Fejlődő gyakorlat

Ahogy az MI asszisztensek folyamatosan fejlődnek, a promptolási legjobb gyakorlatok is fejlődnek. Ami ma működik az MI rendszerekkel, az holnap már más lehet. A kísérletezés kulcsfontosságú annak felfedezéséhez, hogy mi működik a legjobban a te specifikus igényeidnek.

## Hat alapvető promptolási technika

Ebben a videóban főként hat alapvető promptolási tippet vizsgálunk meg, amelyek nagyban hozzájárulnak a Claude-dal és más MI rendszerekkel való hatékony kommunikációhoz és együttműködéshez:

1. **Adj kontextust a Claude-nak**
2. **Mutass példákat a jóra**
3. **Határozz meg kimeneti korlátokat**
4. **Bontsd lépésekre az összetett feladatokat**
5. **Kérd meg a Claude-ot, hogy először gondolkodjon**
6. **Határozd meg a Claude szerepét, stílusát vagy hangnemét**

### 1. Kontextus biztosítása

Az első elv egyszerű, de erőteljes. Légy specifikus és világos abban, hogy mit akarsz, miért akarod, és talán a legmeglepőbb módon, ki vagy te.

#### Példa: Alapvető prompt javítása

**Rossz példa:**
> "Mesélj a klímaváltozásról."

**Javított verzió:**
> "Magyarázd el a klímaváltozás három fő hatását a mezőgazdaságra a trópusi régiókban, az elmúlt évtized példáival."

Az alap promptunk homályos volt, és a Claude-ra bízta a találgatást az érdeklődésünkről, a tudásszintünkről és a részletesség mélységéről.

#### Még több kontextus

**Teljes kontextussal:**
> "Magyarázd el a klímaváltozás három fő hatását a mezőgazdaságra a trópusi régiókban, az elmúlt évtized példáival. Egy állásinterjúra készülök egy indonéziai mezőgazdasági kutatólaboratóriumban. Ökológiai diplomám van, de nincs specifikus tudásom a klímaváltozásról. Írj egy összefoglalót a kulcsfogalmakról, amelyek segítenének intelligensen beszélni az interjún."

Mindez a hozzáadott kontextus segít a Claude válaszát a te specifikus helyzetedhez és tudásszintedhez igazítani. Ez a fajta háttérinformáció olyasmi, amit természetesen megadunk az emberi beszélgetésekben, de elfelejthetjük, amikor a Claude-dal beszélünk.

### 2. Példák adása (Few-shot prompting)

Néha a mutatás jobb, mint a mondás. Példák adása a kívánt kimenet típusáról hihetetlenül hatékony lehet. Ezt néha few-shot vagy n-shot promptolásnak nevezik a technikai körökben, ahol n a megadott példák száma.

#### Példa: Technikai zsargon fordítása

**Alapvető prompt:**
> "Kérlek, fordítsd le ezt a technikai kijelentést közérthető nyelvre. A platform végponttól végpontig terjedő titkosítási protokollokat alkalmaz az adatok integritásának védelme érdekében."

**Példákkal javított verzió:**
> "Itt van két példa arra, hogyan lehet a technikai zsargont közérthető nyelvre fordítani:
> 
> **Eredeti:** A kvantumalgoritmus kvadratikus gyorsulást mutat.
> **Közérthető:** Az új módszer nagyjából kétszer olyan gyorsan oldja meg a problémákat, mint a korábbi módszerek.
> 
> **Eredeti:** A felület intuitív tervezési paradigmákat használ.
> **Közérthető:** A design könnyen érthető és használható.
> 
> Most kérlek, fordítsd le ezt a technikai kijelentést közérthető nyelvre: [technikai szöveg]"

#### Tipp a példák használatához

Amikor példákat adsz, törekedj a lehetséges promptok teljes sokféleségének lefedésére, például olyan példákra, amelyek különböző eseteket vagy stílusokat fednek le. Ez segít a Claude-nak jobban megérteni a követni kívánt minta széles skáláját.

### 3. Kimeneti korlátok meghatározása

A kimeneti korlátok, mint például:
- A Claude válaszának kívánt formátuma és hossza
- A nyelv, amiben szeretnéd, hogy a Claude kódoljon
- A weboldal gombjainak színe, amit szeretnél, hogy a Claude tervezzen

Ezek segítenek biztosítani, hogy pontosan azt kapd, amire szükséged van.

#### Példa: Weboldal tervezés

> "Hozz létre egy tiszta, modern, egyoldalas művészeti portfólió weboldalt. Tartalmazza ezeket a fő részeket: hős, rólam, készségek, portfólió, projektek, tapasztalat és kapcsolat. A navigációs menü legyen ragadós és reszponzív, hamburger menüvel mobilon. Használj naplemente színpalettát, és adj hozzá egy sötét-világos mód kapcsolót a navigációban."

Az ilyen útmutatás segít a Claude-nak a válaszát a te elvárásaidhoz igazítani.

### 4. Összetett feladatok lépésekre bontása

Ha bonyolult kérésed van, annak kisebb lépésekre bontása segít a Claude-nak követni a gondolkodásodat és jobb eredményeket elérni.

#### Miért fontos?

Ha megkérsz egy barátot, hogy tegyen meg neked valamit anélkül, hogy meghatároznád, hogyan, van esély arra, hogy nem úgy teszi, ahogy te szántad. A feladat lépéseinek felsorolása biztosítja, hogy a Claude kövesse a kívánt folyamatot.

#### Példa: Értékesítési adatok elemzése

**Egyszerű prompt:**
> "Elemezd ezt a negyedéves értékesítési adatot."

**Lépésekre bontott verzió:**
> "Szeretném elemezni ezt a negyedéves értékesítési adatot. Kérlek, közelítsd meg ezt úgy, hogy:
> 1. Átnézed az értékesítési nyilvántartásainkat, hogy azonosítsd a legjobban teljesítő termékeket
> 2. Összehasonlítod a jelenlegi negyedéves eredményeket az előző negyedévvel
> 3. Kiemeled a szokatlan trendeket vagy mintákat
> 4. Javasolsz lehetséges okokat ezekre a trendekre"

#### Mikor használd

- Alapértelmezés szerint lehet, hogy nem kell ezt tenned, különösen a viszonylag egyszerű feladatok esetében
- A modern érvelési modellek egyre inkább képesek önállóan lépésről lépésre érvelni
- Minél nagyobb a változatosság a feladat jó végrehajtásának módjaiban, annál inkább érdemes időt szánni arra, hogy ezt a tudást lefordítsd a Claude-nak

### 5. Gondolkodási idő biztosítása

Néha hasznos lehet explicit módon teret adni az olyan MI asszisztenseknek, mint a Claude, hogy először végiggondolják a folyamatot, mielőtt végrehajtanák a feladatot.

#### Példa

> "Mielőtt válaszolnál, kérlek, gondold át alaposan ezt a problémát. Vedd figyelembe a különböző tényezőket, a lehetséges korlátokat és a különböző megközelítéseket, mielőtt a legjobb megoldást javasolnád."

#### Fontos megjegyzés

Ahogy említettem, a modern érvelési vagy kiterjesztett gondolkodású modellek alapértelmezés szerint gondolkodnak, mielőtt cselekednének. De ha olyan MI asszisztenssel dolgozol, amely alapértelmezés szerint nem gondolkodik először, még mindig megkérheted az MI-t, hogy tegye meg.

**Kulcs:** A gondolkodás a cselekvés előtt történjen, nem utána. Ez növeli az MI munkájának minőségét és lehetővé teszi, hogy jobban lásd, hol tévedhet el az MI asszisztens.

### 6. Szerep és stílus meghatározása

Annak meghatározása, hogyan szeretnéd, hogy a Claude kommunikáljon és viselkedjen, jelentősen megváltoztathatja, hogyan közelít meg egy feladatot.

#### Alapkérdés

Egyszerűen fogalmazva: kinek szeretnéd, hogy az MI viselkedjen?

#### Példák

**Oktatási kontextus:**
> "Kérlek, magyarázd el, hogyan képződnek a szivárványok egy tapasztalt természettudomány-tanár szemszögéből, aki egy okos 10 évesnek beszél, akit érdekel a tudomány."

**Szakmai kontextus:**
> "Mint UX design szakértő, nézd át ezt a weboldal drótvázat, és javasolj három javítást, a felhasználói navigációra és az akadálymentesítésre összpontosítva."

**Konkrét személyiség:**
Megkérheted a Claude-ot, hogy vegye fel egy konkrét személyiség, például Richard Feynman személyiségét, amikor fizikai magyarázatokat kérsz.

## Meta-prompting: A leghatékonyabb technika

Talán a leghatékonyabb technika az, ha megkéred a Claude-ot, hogy segítsen javítani a promptodon.

### Mikor használd

Amikor nem vagy biztos benne:
- Hogyan kérj valamit
- Hogyan javítsd a promptodat

### Példa

> "Próbálom rávenni téged, Claude, hogy segíts nekem a cél elérésében. Nem vagyok biztos benne, hogyan fogalmazzam meg a kérésemet, hogy a legjobb eredményeket kapjam. Tudnál segíteni egy hatékony prompt megfogalmazásában ehhez?"

Itt a Claude és más MI asszisztensek teljesítménye a leginkább eltérő lehet. Tehát javasoljuk, hogy kísérletezz különböző modellekkel a delegálás gyakorlásának részeként.

## Iteratív megközelítés

A hatékony promptolás iteratív és kísérleti. Az MI rendszerek és a legjobb gyakorlatok folyamatosan fejlődnek. Tehát ami ma működik, holnap már változhat.

### Első próbálkozás

Az első próbálkozásod nem mindig hozza meg a tökéletes eredményt, és ez várható.

### Finomítási technikák

Amikor egy válasz nem teljesen az, amire szükséged van, próbáld finomítani a megközelítésedet:

#### Kontextus javítása
- Adj hozzá több specifikusságot vagy kontextust
- Adj példákat a kívánt kimenetre
- Bontsd a feladatot kisebb lépésekre

#### Alternatív megközelítések
- **Variációk kérése:** "Tudnál adni három különböző verziót ebből?"
- **Formátum változtatás:** "Bekezdés helyett bemutathatnád ezt egy interaktív műtermékben?"
- **Bizonyosság ellenőrzése:** "Mennyire vagy biztos ebben a válaszban?"

#### Újraindítás
Teljesen újraindíthatod a beszélgetést is. Néha egy friss beszélgetés indítása jobb eredményeket hoz, mint egy rossz vágányra futott beszélgetés kijavítása.

### Tanulás minden interakcióból

Használd minden interakciót visszajelzésként a következő promptod javításához. Idővel intuitív érzéked alakul ki arra, hogyan kommunikálj hatékonyan minden MI rendszerrel.

## Bevált minták és gyakori hibák

### Bevált minták

Néhány minta következetesen jól működik:

1. **Világos feladatáttekintő kijelentéssel kezdeni**
2. **Formátumspecifikációkat és példákat belefoglalni**
3. **Explicit korlátokat vagy követelményeket beállítani**
4. **Gazdag és releváns háttérinformációkat adni**

### Kerülendő gyakori hibák

1. **Feltételezni, hogy a Claude tud olvasni a gondolataidban**
2. **Egyetlen promptot vagy beszélgetést túlterhelni** több, egymáshoz nem kapcsolódó feladattal
3. **Túl homályosnak lenni** abban, hogy mi a siker
4. **Nem adni visszajelzést** a korábbi válaszokra

## Összefoglalás

A hatékony kommunikáció az olyan MI rendszerekkel, mint a Claude, ötvözi az időtlen emberi kommunikációs elveket az MI-specifikus technikákkal. Az általunk tárgyalt megközelítések jól fognak szolgálni a különböző MI rendszerekben.

### Eszköztár

Ez a hat elv, valamint a Claude segítségkérésének titkos fegyvere, szilárd eszköztárat alkot a leírási kompetencia alkalmazásához az MI interakcióidban.

### Fejlődés kulcsa

Az iteráció és a gyakorlat itt a kulcsa a gyors fejlődésnek és a mesteri szint elérésének.

## Jövőbe tekintve

Ne feledd, hogy a prompt engineering egy fejlődő gyakorlat. Ahogy a modellek javulnak, néhány specifikus technika kevésbé lesz szükséges. Azonban ezek a jó kommunikációs elvek még mindig relevánsak, még ha az alkalmazásuk módja változik is.

**Tarts fenn egy kísérletező szellemet, és igazítsd a megközelítésedet az eredményeid alapján.**
