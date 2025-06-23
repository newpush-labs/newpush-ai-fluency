# 3B. Képességek & korlátok

!!! info "Videó átirat"
    Ez a videó teljes átirata. Használd a böngésző kereső funkcióját (Ctrl+F / Cmd+F) specifikus fogalmak kereséséhez.

## Bevezetés

Most vizsgáljuk meg, mit tud és mit nem tud a generatív MI.

Az LLM-ekre, mint például a Claude-ra összpontosítva, gondolj erre úgy, mint egy új kolléga megismerésére.

Az erősségeik és korlátaik megértése segít hatékonyabban együttműködni.

## Generatív MI képességei

Kezdjük azzal, amiben ezek a rendszerek rendkívül jók.

Lehet, hogy meglepődsz, milyen sokoldalúak a modern nyelvi modellek.

### Nyelvkezelési készségek

Olyan nyelvi készségekkel rendelkeznek, amelyek néhány évvel ezelőtt még lehetetlennek tűntek:

- **Hangodhoz illő e-maileket** fogalmaznak
- **Hosszú jelentéseket sűrítenek** világos összefoglalókba
- **Nyelvek között fordítanak**
- **Összetett témákat magyaráznak el** számtalan területen, a mikrobiológiától a marketingstratégiáig

### Feladatváltási képesség

Különösen figyelemre méltó, hogy ezek a modellek hogyan tudnak váltani a különböző feladatok között anélkül, hogy további képzésre lenne szükségük.

**Példa:** Ugyanaz a rendszer, amely segít verset írni vagy ötleteket gyűjteni a születésnapi bulidhoz, megfordulhat, és segíthet megérteni a kvantumszámítástechnika fogalmait, vagy elemezni a negyedéves üzleti trendeket, mindezt egyszerű beszélgetésen keresztül.

### Kontextuális emlékezet

Ezek a modellek képesek fenntartani a beszélgetés fonalát is, emlékezve arra, amit korábban megbeszéltetek, és építve rá.

**Példa:** Ha futólag megemlíted a projekt határidejét, és később a beszélgetés során visszautalsz rá, az MI általában megérti, miről beszélsz, akárcsak egy emberi beszélgetőpartner.

### Külső eszközök integrációja

Sok modern LLM már képes a saját tudásán túlra is nyúlni külső eszközökhöz és információforrásokhoz csatlakozva, lehetővé téve számukra, hogy:

- A weben keressenek
- Fájlokat dolgozzanak fel
- Más alkalmazásokat használjanak képességeik bővítésére

Ez drámaian kibővíti, miben tudnak segíteni.

## Generatív MI korlátai

Azonban, mint minden technológiának, az LLM-eknek is vannak bizonyos korlátaik.

### 1. Képzési adatok korlátai

#### Tudás-leállási dátum

Az LLM-eknek van egy **tudás-leállási dátumuk** a képzésük időpontja alapján, amely után nincs veleszületett tudásuk a világról.

**Példa:** Egy 2024. novemberi leállási dátumú modell azt jelenti, hogy nem képezték 2024. november utáni adatokon.

#### Analógia

Képzelj el valakit, aki egy adott időpontban internet-hozzáférés nélkül vonult el egy elvonulásra. Nem tudna azokról az eseményekről, amelyek távozása után történtek.

A modelleknek olyan eszközökre van szükségük, mint a webes keresés, hogy többet tudjanak meg a legújabb fejleményekről.

### 2. Hallucinációk

#### Mi a hallucinäció?

A képzési folyamat nem ellenőrzi a képzési adatok minden tényét. Ez azt jelenti, hogy a modellek:

- Néha megtanulhatnak és reprodukálhatnak pontatlanságokat
- Hibákat elkövethetnek, amikor megpróbálják összerakni a tanult információkat

Ez vezet ahhoz, amit gyakran **hallucinációnak** neveznek.

!!! warning "Hallucinációk"
    Az MI magabiztosan állít valamit, ami hihetőnek hangzik, de valójában helytelen.

#### Különbség a keresőmotoroktól

A keresőmotorokkal ellentétben, amelyek egyszerűen meglévő dokumentumokat kérnek le, az LLM-ek statisztikai mintázatok alapján generálnak válaszokat, néha hallucinációkat produkálva.

**Analógia:** Képzelj el egy barátot, aki teljes magabiztossággal mesél el egy történetet, csak hogy a részletek teljesen rosszak legyenek. Az MI néha ilyen lehet.

### 3. Kontextusablak korlátai

#### Mi a kontextusablak?

Emlékeztetőül, ez az az információmennyiség, amelyet egy MI egyszerre képes feldolgozni.

- Minden LLM-nek van egy **maximális korlátja** annak, hogy mennyi információt tud figyelembe venni egyetlen interakció során
- Ha ezt a korlátot túllépik, az MI nem fog tudni emlékezni az ablakon kívül eső információkra, általában első be, első ki alapon

#### Gyakorlati hatások

A modell méretétől függően ez korlátozhatja:
- A nagy dokumentumok feldolgozására való képességét
- A teljes beszélgetés megjegyzésére való képességét

### 4. Nem-determinisztikus viselkedés

#### Mit jelent ez?

A hagyományos szoftverekkel ellentétben, amelyek azonos bemenetekre azonos kimeneteket produkálnak, az LLM-ek alapértelmezés szerint némileg **kiszámíthatatlanok** (nem-determinisztikusak).

**Példa:** Kérdezd meg ugyanazt a kérdést kétszer, és minden alkalommal kissé eltérő válaszokat kaphatsz.

#### Miért van ez?

Ez a változékonyság abból adódik, ahogyan ezek a modellek szöveget generálnak:

- Valószínűségi döntéseket hoznak arról, hogy milyen szöveg következzen
- A képzési adataikban lévő mintázatok alapján
- Bizonyos, a fejlesztők által módosítható beállítások alapján

#### Előnyök és hátrányok

**Előnyök:**
- Ez a kreatív változékonyság nagyszerű lehet ötleteléshez és változatos ötletek generálásához

**Hátrányok:**
- Tudatosságot igényel, amikor a következetesség vagy a pontosság kritikus

#### Hőmérséklet beállítás

Néhány LLM felület beállításokat is kínál ennek a véletlenszerűségnek a szabályozására, amikor szükséges. Ezt a beállítást gyakran **hőmérsékletnek** nevezik.

### 5. Érvelési korlátok

#### Történelmi gyengeségek

Bár ezek a modellek gyorsan fejlődnek, történelmileg korlátokat mutattak a komplex érvelési feladatokban, különösen a több lépést igénylő matematikai vagy logikai problémákban.

#### Pozitív fejlődés

!!! success "Jó hírek"
    Az újabb, lépésről lépésre történő gondolkodásra tervezett érvelési vagy kiterjesztett gondolkodású modellek erős előrehaladást mutatnak ezeken a területeken.

### 6. Eszköz- és adathozzáférési korlátok

#### Jelenlegi helyzet

Bár a Claude-hoz hasonló modellek már hozzáférhetnek külső eszközökhöz, még mindig hiányozhat a hozzáférésük bizonyos adatforrásokhoz vagy specializált eszközökhöz, amelyek bizonyos feladatokhoz szükségesek lennének.

#### Analógia

Olyan, mintha egy briliáns kollégád lenne, aki nem fér hozzá a céged belső adatbázisához. A segítségnyújtási képessége korlátozott lesz, bármilyen okos is.

#### Következmény

Ha egy modellnek nincs hozzáférése egy adathoz vagy eszközhöz, amely egy kérdés megválaszolásához szükséges, akkor nem meglepő, hogy nem fog tudni segíteni a kérdés megválaszolásában.

## A jövő irányai

### Folyamatos fejlődés

A generatív MI területe gyorsan fejlődik. A kutatók azon dolgoznak, hogy kezeljék a jelenlegi korlátokat olyan technikákkal, mint:

- **Visszakereséssel kiegészített generálás** - amely a modelleket külső tudás- és adatforrásokhoz kapcsolja
- **Eszközhasználati képességek bővítése**
- **Érvelési képességek javítása**

### Realisztikus elvárások

!!! note "Fontos megjegyzés"
    Ennek ellenére valószínű, hogy néhány korlát a belátható jövőben is megmarad, még ha nem is tudjuk pontosan, mik lesznek ezek a korlátok.

## MI fluencia és a korlátok megértése

### Miért fontos?

Annak megértése, hogy az MI mit tud vagy mit nem tud:
- **Elengedhetetlen az MI fluenciához**
- **Segít meghatározni**, mikor és hogyan lehet a leghatékonyabban beépíteni ezeket a rendszereket a munkádba és a mindennapi életedbe

### Kiegészítő erősségek

A leghatékonyabb alkalmazások az emberek és az MI kiegészítő erősségeit fogják kihasználni:

#### Emberi erősségek
- Kritikai gondolkodás
- Ítélőképesség
- Kreativitás
- Etikai felügyelet

#### MI erősségek
- Sebesség
- Méretarány
- Mintafelismerés
- Hatalmas mennyiségű információ feldolgozására való képesség

### Folyamatos fejlődés

Ezek a kiegészítő erősségek fejlődni fognak, ahogy a technológia fejlődik.

**Ezért olyan értékes a folyamatos tanulás és kísérletezés.** Segítenek:
- Naprakésznek maradni ezekkel a változásokkal
- Új lehetőségeket felfedezni

## Gyakorlati tapasztalat

A kurzus során ezekben a gyakorlatokban lehetőséged lesz első kézből felfedezni ezeket a fogalmakat a Claude-dal folytatott beszélgetéseken keresztül.

Ez a közvetlen tapasztalat segít intuitív érzéket fejleszteni arról, hogy a generatív MI mit tud, mit nem tud, és hogyan lehet a legjobban dolgozni vele.
