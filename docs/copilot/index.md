# Visual Studio Copilot

Visual Studio Copilot on yksi suosituimmista AI-avusteisen ohjelmoinnin työkaluista. Se integroituu suoraan Visual Studio Code -editoriin ja tarjoaa reaaliaikaisia koodiehdotuksia ja automaattista täydennystä käyttäjän kirjoittaessa koodia. Lisäksi se osaa toimia itsenäisesti "Agent"-tilassa.

Ohjeet kaikkeen löytyvät Copilotin virallisesta dokumentaatiosta <https://code.visualstudio.com/docs/copilot/overview>, mutta tässä on lyhyt opas Copilotin peruskäyttöön.

## Käyttöönotto

### Asennus ja kirjautuminen

Copilot tulee oletuksena mukana Visual Studio Code:ssa. Copilot edellyttää, että kirjaudut sisään GitHub-tililläsi. Kuvassa (@fig:0-sign-in) valitaan "Continue with GitHub" ja seurataan ohjeita.

![Kirjautuminen sisään](images/copilot/0-sign-in.png){#fig:0-sign-in}

### Copilot hukassa?

Jos Copilot joskus ei näy, etsi se Visual Studio Coden oikeasta yläkulmasta (@fig:1-copilot).

![Copilot hukassa? Paina ylhäältä](images/copilot/1-copilot.png){#fig:1-copilot}

### Kokeillaan Copilotia

Luodaan uusi tiedosto summa.js (@fig:2-newfile), jolla kokeillaan Copilotin toimintaa.

![Uusi tiedosto](images/copilot/2-newfile.png){#fig:2-newfile}

Anna tiedostolle nimi `summa.js` ja tallenna esimerkiksi työpöydälle (@fig:3-name).

![Tallenna tiedosto](images/copilot/3-name.png){#fig:3-name}

Nyt tiedosto on luotu ja Copilot on valmis auttamaan oikealla (@fig:4-auki).

![Valmiina!](images/copilot/4-auki.png){#fig:4-auki}

### Copilotin toimintatilat

Copilotissa on kaksi pääasiallista toimintatilaa: Ask ja Agent. Vaihdetaan tila nyt "Ask"-tilaan, jossa voimme esittää kysymyksiä (@fig:5-vaihda-tila).

![Copilotin tilaa voi vaihtaa täältä](images/copilot/5-vaihda-tila.png){#fig:5-vaihda-tila}

Vaihda tila "Ask"-tilaan (@fig:6-ask).

![Valitse Ask-tila](images/copilot/6-ask.png){#fig:6-ask}

### Käytettävä malli

Kannattaa vaihtaa käytettäväksi malliksi "auto", jolloin Copilot valitsee mallin (@fig:7-malli). Muita malleja saa käyttöön maksamalla erikseen.

![Valitse auto-malli](images/copilot/7-malli.png){#fig:7-malli}

### Kysytään Copilotilta

Nyt vihdoin voimme kysyä jotain Copilotilta. Huomaa, että kun summa.js-tiedosto on auki, Copilot osaa käyttää tiedoston sisältöä kontekstina. Oletuksena avattu tiedosto on kontekstina, kuten #fig:8-kysymys-kontekstilla näkyy. Voit lisätä tiedostoja kontekstiksi myös itse.

Kysy Copilotilta: *miten tehdään summafunktio?*

![Kysytään Copilotilta](images/copilot/8-kysymys-kontekstilla.png){#fig:8-kysymys-kontekstilla}

Copilot vastaa (@fig:9-kysytty) ja tarjoaa koodin, joka laskee kahden luvun summan.

![Copilotin vastaus](images/copilot/9-kysytty.png){#fig:9-kysytty}

Voimme jatkaa keskustelua ja pyytää toisenlaista ratkaisua (@fig:10-jatketaan).

![Jatketaan keskustelua](images/copilot/10-jatketaan.png){#fig:10-jatketaan}

Kun Copilot tarjoaa ratkaisun, voit tietysti kopioida sen, mutta myös sijoittaa sen suoraan tiedostoon (@fig:11-sijoita).

![Sijoita Copilotin vastaus](images/copilot/11-sijoita.png){#fig:11-sijoita}

Sitten voit vielä hyväksyä tai hylätä Copilotin muutoksen joko yksi kerrallaan tai kaikki kerralla (@fig:12-hyvaksy-hylkaa). Tässä esimerkissä on vain yksi muutos, joten hyväksytään se.

![Hyväksy tai hylkää Copilotin muutos](images/copilot/12-hyvaksy-hylkaa.png){#fig:12-hyvaksy-hylkaa}

### Agentti-tila

Sitten kokeilemme Agentti-tilaa, jossa Copilot voi itse muokata koodia puolestamme. Vaihdetaan Agentti-tilaan (@fig:13-vaihda-agenttiin).

![Vaihda Agentti-tilaan](images/copilot/13-vaihda-agenttiin.png){#fig:13-vaihda-agenttiin}

Ja sitten maalataan rivit, joita tarkoitamme, jotta Copilot tietää, mihin viittaamme, ja pyydetään poistamaan kommentit (@fig:14-maalataan-rivit).

![Maalaa rivit](images/copilot/14-maalataan-rivit.png){#fig:14-maalataan-rivit}

Copilot pyytää lupaa muokata tiedostoja kovalevyllä - kannattaa hyväksyä, vaikkakin tällöin Copilot tekee muutokset aina kysymättä, mihin tahansa tiedostoon. Vaihtoehtona on, että joudut aina erikseen hyväksymään (@fig:15-lupa-muokata).

![Lupa muokata tiedostoja](images/copilot/15-lupa-muokata.png){#fig:15-lupa-muokata}

Nyt Copilot on poistanut kommentit - poistuvat rivit näkyvät punaisella. Hyväksy muutos (@fig:16-agentti-muokkaa)

![Copilot on poistanut kommentit](images/copilot/16-agentti-muokkaa.png){#fig:16-agentti-muokkaa}

Lisää vielä keskiarvofunktio ja kokeile, että Copilot saa muokata tiedostoja ilman erillistä lupaa (@fig:17-keskiarvo).

![Lisää funktio keskiarvo - pitäisi tapahtua ilman kyselyjä](images/copilot/17-keskiarvo.png){#fig:17-keskiarvo}

### Uusi keskustelu ja vanhat keskustelut

Edellä jatkoimme vanhaa keskustelua, mutta yleensä kannattaa aloittaa aina uusi keskustelu. Aloita uusi keskustelu painamalla (@fig:18-uusi-keskustelu) näkyvistä valinnoista.

![Aloita uusi keskustelu](images/copilot/18-uusi-keskustelu.png){#fig:18-uusi-keskustelu}

Tämän jälkeen näet vanhat keskustelut yläpuolella ja voit vielä palata niihin myöhemmin (@fig:19-vanhat-keskustelut).

![Vanhat keskustelut](images/copilot/19-vanhat-keskustelut.png){#fig:19-vanhat-keskustelut}

Keskusteluja voi käydä samanaikaisesti useampia rinnakkain eri aiheista.

## Säännöt

Copilotille voi määritellä, että se noudattaa tiettyjä sääntöjä koodia luodessaan. Kokeillaan tätä luomalla vielä yksi funktio, joka laskee liukuvan keskiarvon taulukosta. Koska funktio on hieman pidempi, on lähes varmaa, että Copilot lisää siihen taas kommentteja. Tavoitteenamme on saada Copilot luomaan funktio ilman kommentteja ja ilman, että joudumme erikseen pyytämään sitä.

Sano Copilotille: *lisää funktio joka laskee liukuvan keskiarvon taulukosta* (@fig:20-liukuva-keskiarvo).

![Kommentit tulevat mukana väkisin](images/copilot/20-liukuva-keskiarvo.png){#fig:20-liukuva-keskiarvo}

Ja sieltähän ne kommentit taas tulevat. Copilot ei muista aiempia keskusteluja, joten meidän on helpompi määrittää meidän tyylimme mukaiset säännöt erikseen.

Valitse asetuksista "Chat Instructions" (@fig:21-chat-instructions).

![Valitse Chat Instructions](images/copilot/21-chat-instructions.png){#fig:21-chat-instructions}

Ja sitten paina enter valitaksesi "New instruction file" (@fig:22-new-instruction-file).

![Valitse New instruction file](images/copilot/22-new-instruction-file.png){#fig:22-new-instruction-file}

Sitten valitse "User Data", jotta ohjeet ovat aina käytössä riippumatta projektista (@fig:23-user-data).

![Valitse User Data](images/copilot/23-user-data.png){#fig:23-user-data}

Sitten anna jokin nimi tiedostolle, esimerkiksi "ohjeet" (@fig:24-nimi).

![Anna nimi ohje-tiedostolle](images/copilot/24-nimi.png){#fig:24-nimi}

Sitten vihdoin pääset kirjoittamaan ohjeen, esimerkiksi: *Älä koskaan generoi kommentteja, ellei erikseen pyydetä. Kommentit voivat olla harhaanjohtavia tai vanhentuneita, joten on parasta jättää ne pois, ellei niitä nimenomaisesti tarvita* (@fig:25-ohje).

![Kirjoita ohjeet](images/copilot/25-ohje.png){#fig:25-ohje}

Sitten kun tallennat tiedoston ja kokeilet uudestaan, niin Copilot noudattaa ohjeita. Kannattaa vielä varmistaa kysymällä, että ohje on ollut mukana (@fig:26-ilman-kommentteja).

![Copilot noudattaa ohjeita](images/copilot/26-ilman-kommentteja.png){#fig:26-ilman-kommentteja}

Säännöt ovat jokaisen kehittäjän henkilökohtaisia tyylivalintoja, joten voit muokata niitä vapaasti.

## Täydennys

Copilot osaa myös täydentää koodia, kun kirjoitat jotain sinne päin. Voit hyväksyä ehdotuksen painamalla tab-näppäintä (@fig:27-taydennys).

![Copilot osaa täydentää koodia](images/copilot/27-taydennys.png){#fig:27-taydennys}

## Omat komennot

Copilotille voi määritellä omia komentoja, joita voi käyttää keskustelussa. Hämmentävästi komennot on nimetty "Prompt Files" -ominaisuudeksi. Kokeillaan tätä luomalla komennot `/nuolita`, joka vaihtaa kaikki tavalliset funktiot nuolifunktioiksi `()=>`, ja `/funktioita`, joka kääntää kaikki nuolifunktiot tavallisiksi funktioiksi.

Valitse asetuksista "Prompt Files" (@fig:28-prompt-files).

![Valitse Prompt Files](images/copilot/28-prompt-files.png){#fig:28-prompt-files}

Täsmälleen kuten Chat Instructions, luo uusi tiedosto ja valitse kohteeksi "User Data", jotta komennot ovat käytettävissä kaikissa projekteissa (@fig:29-user-data-prompt).

![Valitse User Data ja luo komennot](images/copilot/29-user-data-prompt.png){#fig:29-user-data-prompt}

Sitten kirjoita `/nuolita`-komennon sisällöksi esimerkiksi: *Tee kaikista function-funktioista nuolifunktioita*

Ja toiseen tiedostoon kirjoita `/funktioita`-komennon sisällöksi esimerkiksi: *Tee kaikista nuolifunktioista tavallisia function-funktioita*

Nyt kun kirjoitat keskusteluun `/funktioita` tai `/nuolita`, niin Copilot suorittaa komennon (@fig:30-omakomennot).

![Käytä omia komentoja](images/copilot/30-omakomennot.png){#fig:30-omakomennot}

Ja Copilot suorittaa komennon (@fig:31-komento-suoritettu).

![Copilot suorittaa komennon](images/copilot/31-komento-suoritettu.png){#fig:31-komento-suoritettu}

Kokeile `/funktioita` jälkeen `/nuolita` ja sitten taas `/funktioita`, niin näet, että komennot toimivat molempiin suuntiin.

## Muut Copilotin ominaisuudet

Copilotissa on muitakin ominaisuuksia, mutta ne eivät ole mitenkään tarpeellisia päivittäiseen käyttöön. Ominaisuudet muuttuvat jatkuvasti ja osa ominaisuuksista on selkeästi päällekkäisiä ja kokeiluasteella. Voit tutustua niihin virallisessa dokumentaatiossa <https://code.visualstudio.com/docs/copilot/overview>.

## Tekniikat

Seuraavassa on kokoelma hyödyllisiä tekniikoita ja prompteja Copilotin tai LLM:n kanssa työskentelyyn.

### Roolitus

Oletuksena LLM yrittää usein olla "yleishyödyllinen". Roolittamalla LLM:n kavennat sen toimintaa.

*Toimi React-koodikatselmoijana. Älä kirjoita uutta koodia. Älä ehdota uusia kirjastoja. Kommentoi vain ongelmia ja riskejä.*

```text
Ymmärsin. Toimin React-koodikatselmoijana.

En kirjoita uutta koodia enkä ehdota laajoja refaktorointeja. Kommentoin vain havaitsemiani ongelmia, epäselvyyksiä ja riskejä annetussa koodissa.
```

### Oleellinen tieto

Jos jokin asia ei toimi, anna "tämä ei toiminut" -viestin sijaan mahdollisimman paljon tietoa ongelmasta. Oleellinen osa virheilmoituksesta tai ongelmasta auttaa LLM:ää ymmärtämään tilannetta paremmin, aivan kuten ihmistäkin.

### Kieltolista

LLM voi helposti harhautua tai alkaa vastaamaan asioihin, joita et ole pyytänyt.

Kysytään: *Älä muuta funktioiden parametreja. Älä lisää uusia riippuvuuksia.*

```text
Ymmärsin. En muuta funktioiden parametreja enkä lisää uusia riippuvuuksia.
```

### Totuus

LLM saattaa helposti hallusinoida tai keksiä tietoja, varsinkin jos se ei ole varma vastauksestaan. Lisäksi koulutusmateriaalissa on myös vanhentunutta tai virheellistä tietoa.

Kysytään: *Annan sinulle aineistoksi sivun https://react.dev/reference/react/Fragment. Vastaa tämän jälkeen kaikkiin kysymyksiini pelkästään tämän sivun perusteella. Jos et löydä vastausta sivulta, vastaa "en tiedä" ja selitä miksi et.*

```text
Ymmärrän. Odotan että lähetät minulle sivun https://react.dev/reference/react/Fragment sisällön. Kun saan sen, vastaan kysymyksiisi pelkästään sen aineiston perusteella.

Jos en löydä vastausta annetulta sivulta, vastaan "en tiedä" ja selitän miksi en löydä tietoa sieltä.

Voit nyt lähettää aineiston tai esittää kysymyksesi.
```

chatgpt.com ja muut "AI-palvelut" osaavat (yleensä) hakea sivun sisällön automaattisesti, mutta Copilotin kanssa sisältö pitää antaa käsin.

Kokeillaan kuitenkin olla lähettämättä sivun sisältöä ja katsoa, mitä tapahtuu kun valitsemme muutaman rivin.

Kysytään: *tee näistä riveistä fragmentti*

```text
En tiedä, koska en ole vielä saanut sivun https://react.dev/reference/react/Fragment sisältöä aineistoksi.

Lupasit lähettää minulle kyseisen sivun sisällön, minkä perusteella vastaisin kysymyksiisi. Ilman tuota aineistoa en voi vastata kysymykseesi fragmenteista pelkästään sen sivun perusteella.

Lähetä ensin sivun sisältö, niin voin sitten auttaa sinua muuttamaan koodin fragmentiksi sen aineiston perusteella.
```

Sitten kun käsin copy/pasteamme sivun sisällön, osaa LLM vastata oikein:

Kysytään: *tee näistä riveistä fragmentti*

```text
Voin nyt vastata kysymykseesi annetun aineiston perusteella.

Voit muuttaa valitut rivit fragmentiksi kahdella tavalla:

Vaihtoehto 1:
...
```

Voit myös tallentaa totuuksia tiedostoihin ja ladata ne tarvittaessa keskusteluun. Huomaa, että et voi suoraan pastea alla olevan esimerkin #file:fragment.txt osaa, vaan sinun pitää itse kirjoittaa se (aloita painamalla #, joka avaa tiedostovalitsimen). Voit myös ladata tiedoston klikkaamalla paperiliitinkuvaketta keskusteluikkunassa.

Kysytään: *Sinulla on aineistona #file:fragment.txt - Vastaa tämän jälkeen kaikkiin kysymyksiini pelkästään annetun aineiston perusteella. Jos et löydä vastausta, vastaa "en tiedä" ja selitä miksi et.*

```llm
Ymmärsin. Vastaan nyt kaikkiin kysymyksiisi pelkästään fragment.txt-tiedoston sisällön perusteella. Jos kysymyksesi koskee jotain, mitä ei ole mainittuna kyseisessä aineistossa, vastaan "en tiedä" ja selitän syyn.
```

Copilotissa voit käyttää erityistä komentoa `#fetch`, jolla voit hakea verkkosivun sisällön suoraan keskusteluun ilman copy/pastea. Tällöin voit käyttää samaa totuustekniikkaa kuin yllä. Heikkoutena on, että emme suoraan näe, onnistuiko sivun haku miten hyvin. Yleensä tämä kuitenkin riittää.

Kysytään: *Hae sivun https://react.dev/reference/react/Fragment sisältö käyttämällä #fetch-komentoa ja vastaa tämän jälkeen kaikkiin kysymyksiini pelkästään haetun aineiston perusteella. Jos et löydä vastausta, vastaa "en tiedä" ja selitä miksi et.*

```llm
Fetched https://react.dev/reference/react/Fragment

Ymmärsin! Olen nyt hakenut sivun https://react.dev/reference/react/Fragment sisällön. Voin nyt vastata kysymyksiisi pelkästään tämän haetun aineiston perusteella.
```

### Vaihtoehdot

LLM valitsee helposti puolestasi, sillä se pyrkii toteuttamaan pyynnön sellaisenaan. Esimerkiksi jos pyydät LLM:ää kirjoittamaan koodia, se saattaa valita tietyn tavan tehdä asiat, vaikka et haluaisi juuri sitä tapaa.

*Anna minulle vaihtoehtoja eri tavoista tehdä tämä asia. Älä valitse puolestani.*

```llm
Vaihtoehto 1: Käytä funktiokomponenttia Reactissa...
Vaihtoehto 2: Käytä luokkapohjaista komponenttia Reactissa...
```

### Yksi asia kerrallaan

LLM ehdottaa helposti useita eri asioita kerrallaan. Esimerkiksi jos käytät roolitusta "toimi koodikatselmoijana", LLM saattaa löytää useita eri ongelmia koodista ja ehdottaa niitä kaikkia kerralla. Tällöin on vaikea käsitellä kaikkia ehdotuksia kerralla.

*Anna minulle vain yksi asia tai ehdotus kerrallaan. Odota että hyväksyn (k) tai hylkään (e) sen ennen kuin annat seuraavan ehdotuksen.*

```text
Ehdotus 1: Props-datan välittäminen Content-komponentille...

Hyväksytkö (k) vai hylkäätkö (e) tämän ehdotuksen?
```

### Resetointi

Joskus tuntuu, että LLM kiertää kehää tai alkaa toistaa itseään. Tällöin on usein hyödyllistä "nollata" LLM:n tila, jotta se voi aloittaa puhtaalta pöydältä.

Voit pyytää LLM:ää tiivistämään kaiken tähänastisen keskustelun lyhyesti ja antamaan se promptina, jonka voit syöttää uuteen istuntoon. Näin LLM saa kontekstin, mutta unohtaa mahdolliset väärät polut tai ainakin pääsee eroon niistä.

*Anna minulle tiivistelmä tähänastisesta keskustelustamme valmiina promptina, jotta voin aloittaa uuden istunnon kanssasi ilman huonoja polkuja joissa olet jumissa.*

Tätä resetointia kannattaa tehdä muutamankin kerran, sillä LLM:n polut voivat olla hyvinkin juuttuneita.

### Formaattipakko

LLM lipsuu helposti selityksiin tai väärään esitystapaan. Formaattipakolla lukitset ulostulon muodon tarkasti.

*Vastaa vain JSON-muodossa. Älä lisää selityksiä tai muuta tekstiä.*

```text
Ymmärsin. Vastaan jatkossa vain JSON-muodossa ilman selityksiä tai muuta tekstiä.
```

### Oletusten paljastus

LLM tekee jatkuvasti hiljaisia oletuksia (kohderyhmä, teknologia, konteksti). Tämä tekniikka pakottaa sen listaamaan oletuksensa ja olemaan lisäämättä uusia ilman lupaa.

*Listaa kaikki tekemäsi oletukset ennen vastaamista. Älä tee uusia oletuksia vastaamisen aikana. Jos tarvitset uuden oletuksen, kysy lupa.*

```text
Ymmärsin. Listaan kaikki tekemäni oletukset ennen vastaamista. En tee uusia oletuksia vastaamisen aikana ilman lupaasi.
```

### TODO-lista

LLM:n sisäistä toimintaa on helpompi seurata, kun pyydät sitä listaamaan tehtävät järjestyksessä ennen vastaamista. Lopuksi voit vielä pyytää sitä tarkistamaan, että kaikki tehtävät listalta on suoritettu.

Kysytään: *Refaktoroidaan tämä koodi pienempiin osiin. Tee numeroitu TODO-lista, mutta älä tee muuta*

```text
TODO-lista koodin refaktorointiin:

1. Luo Part-komponentti - Yksittäinen osa, joka näyttää yhden kurssin osan nimen ja harjoitusten määrän

2. Refaktoroi Content-komponentti - Käytä Part-komponenttia kolme kertaa kovakoodattujen <p> elementtien sijaan

...
```

Nyt voit muokata listaa tai pyytää lisätietoja ennen kuin mitään tapahtuu.

Kysytään: *Kerro lisää kohdasta 2*

tai

Kysytään: *Älä tee kohtaa 2, mutta muuten näyttää hyvältä*

TODO:

Copilot voi vastata kysymyksiin "Ask"-tilassa ja kirjoittaa koodia puolestasi "Agent"-tilassa.

### Älä hyväksy ensimmäistä vastausta, jatka keskustelua

Kysytään: *onko tämä toteutus oikea unicafe step 2:een?*

```text
Kyllä, toteutuksesi on oikea Unicafe step 2 -vaiheeseen. Tässä miksi:

Sinulla on kolme palautepainiketta, joista kukin päivittää omaa tilaansa (hyvä, neutraali, huono).
Lasket palautteiden kokonaismäärän, keskiarvon (hyvä = +1, neutraali = 0, huono = -1) ja positiivisten palautteiden prosenttiosuuden.

Tilastot näytetään vain, jos palautetta on annettu; muuten näytetään viesti.

Käyttöliittymä on selkeä ja täyttää palautemäärien ja tilastojen näyttämisvaatimukset.

Tämä vastaa tehtävän ohjeita ja tarjoaa kaiken vaaditun toiminnallisuuden vaiheelle 2.
```

Kysytään: *anna koodista yksi ongelma, vastaa lyhyesti*

```text
Tilastot (total, average, positive) lasketaan turhaan kahteen kertaan sekä Appissa että Statisticsissa.
```

*miksi tämä on ongelma?*

```text
Koodin toistaminen tekee siitä vaikeammin ylläpidettävän ja virhealt...
```

Kysytään: *anna jokin muu ongelma*

```text
*average.toFixed(2) ja positive.toFixed(1) palauttavat merkkijonon, ei numeron — jos arvoja tarvitaan myöhemmin laskuissa, se voi aiheuttaa virheitä.
```

*miten tämä korjataan?*

```text
Voit korjata sen muuntamalla tuloksen takaisin numeroksi Number()-funktiolla:
<StatisticLine text="Average" value={Number(average.toFixed(2))} />
<StatisticLine text="Positive %" value={Number(positive.toFixed(1)) + '%'} />
```

*onko tämä ratkaisu, jonka myös Robert "clean code" Martin hyväksyisi?*

```text
Erittäin hyvä kysymys — ja kyllä, on parempi tapa, joka sopii täydellisesti Clean Code -periaatteisiin.

Robert C. Martinin hengessä ongelmaa ei ratkaista “puhdistamalla tulosta”, vaan siirtämällä pyöristys pois renderöintivaiheesta, koska renderöinnin pitäisi olla vain näkymän muodostusta, ei datan muokkausta.

💡 Parempi, "clean code" -ratkaisu

Laske ja pyöristä arvot ennen JSX:ää, erillisissä muuttujissa:

const total = good + neutral + bad
if (total === 0) {
  return <div>No feedback has been submitted yet.</div>
}

const average = (good - bad) / total
const positive = (good / total) * 100

const roundedAverage = Math.round(average * 100) / 100
const roundedPositive = Math.round(positive * 10) / 10
Ja sitten JSX:ssä:
<StatisticLine text="Average" value={roundedAverage} />
<StatisticLine text="Positive %" value={`${roundedPositive}%`} />
```
