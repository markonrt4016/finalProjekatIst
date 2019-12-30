# finalProjekatIst

XML deo
Napisati Adresar u vidu XML dokumenta. U Adresar se smeštaju podaci o Osobama i
Kompanijama. Svaka Osoba i Kompanija ima jedinstvenu šifru u vidu atributa.
Osoba je opisana podelementima u datom redosledu:
 Puno ime koje se sastoji od podelemenata:
o Ime,
o Srednje ime – jedna osoba ili ima srednje ime ili nema,
o Prezime – jedna osoba može imati više od jednog prezimena,
 Datum rođenja – element koji se sastoji od podelemenata dan, mesec i godina,
 Adresa - može biti „privremena“ ili „stalna“. U slučaju da nije navedeno, podrazumeva se
„privremena“. Sastoji se od podelemenata ulica, broj, grad i država gde su ulica, broj i
grad obavezni elementi dok država nije,
 Telefon – element koji može biti „mobilni“ ili „fiksni“ i ovo je obavezan element.
 Email – element koji može biti „privatni“ ili „službeni“. Jedna osoba može imati jednu ili
više email adresa
Kompanija je opisana skupom podelemenata:
 Naziv
 Adresa – isti opis kao za Osobu.
 Telefon – isti opis kao za Osobu.
 Email – isti opis kao za Osobu.
Potrebno je napisati podatke za najmanje 3 Osobe i 3 Kompanije koji odgovaraju navedenim
uslovima iz zadatka.
DTD deo
Napraviti eksterni DTD fajl koji će validirati XML dokument po pravilima uz maksimalno
primenjena ograničenja.
XML Schema deo
Napraviti XML Schema fajl koji će uvesti dodatna ograničenja:
 Element ime mora imati minimum 3 a maksimum 30 karaktera,
 Dan i mesec trebaju da budu u odgovarajućem opsegu (mesec 1-12, dan 1-31),
 Ulica, Broj, Grad i Država su tipa Adresa (složen tip),
 Email sadrži izraz koji ima maksimum 20karaktera pa znak @ zatim 4-8 karaktera i
završava se sa .com (npr: markomarkovic@gmail.com),
 Telefon mora biti u formatu XXX/000-000. Vrednost itelefona moraju biti cifre .
XSLT deo
Napraviti XSLT fajlove koji će izvršiti transformaciju na već napravljen XML i prikazati:
 HTML dokument sa tabelom koja prikazuje sve podatke o Osobama i Kompanijama koje
sadrže više od dve email adrese,
 HTML dokument sa tabelom koja prikazuje sve podatke o Osobama i Kompanijama čija
je:
o Adresa stalna i datum rođenja u opsegu od 1990-2005 godine.
o Prezime počinje sa slovom M i naziv kompanije ima više od 6 karaktera
 XML dokument koji će elemente Adrese: Ulica, broj i grad prebaciti da budu atributi
elementa.
GIT deo
Potrebno je inicijalizovati repozitorijum i uraditi sledeće:
 XML deo - uraditi kao jednu ili više verzija.
 Napraviti dodatnu granu i u njoj uraditi DTD deo, takođe u jednoj ili više verzija i
istovremeno u XML dokumentu uraditi proizvoljnu izmenu.
 U glavnoj grani uraditi XML Schema deo i istovremeno u XML dokumentu uraditi
proizvoljnu izmenu.
 Uraditi spajanje grana, a zatim uraditi XSLT deo.
 Konačnu verziju postaviti na neki mrežni repozitorijum po izboru.
