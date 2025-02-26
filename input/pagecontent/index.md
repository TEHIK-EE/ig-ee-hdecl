# Tervisedeklaratsioon (Health declaration)

### Üldine informatsioon

Tervisedeklaratsioon on tervisetõendi osa, mille patsient koostab Terviseportaalis.
Tegemist on hierarhilise küsimuste kogumiga, mis on seotud tervisetõendi kasutusala(de)ga. 
Deklaratsiooni on võimalik täita eesti, vene ja inglise keeles.
Tervisedeklaratsioon koosneb:
- taotleja enda poolt tervisliku seisundi kohta sisestatud infost
- tervise infosüsteemis taotleja kohta olemasolevast terviseinfost.

Täitja saab tervisedeklaratsioonil eeltäidetud ning varasemalt märgitud vastuseid muuta ning vajadusel deklaratsiooni tühistada senikaua, kuniks deklaratsioon pole tervisetõendiga seotud. 

Tervisedeklaratsioon kehtib kinnitamise hetkest tervisetõendi taotlemise korral 30 ning Kaitseministeeriumi jaoks 3 kuud.
Lisainfo: 
https://www.tehik.ee/tervisetoend-ja-tervisedeklaratsioon
https://teabekeskus.tehik.ee/et/teenused/tis-teenused/tervisetoendid/tervisedeklaratsioon

### Arendusvahendid ja lähtekood

- HDECL-i juurutusjuhendi lähtekood on leitav [GitHubis](https://github.com/TEHIK-EE/ig-ee-hdecl).
- Antud sait on välja töötatud [FHIR Shorthand](https://build.fhir.org/ig/HL7/fhir-shorthand) abiga.
- Juurutusjuhendi avaldamiseks on kasutatud [FHIR IG Auto-Builderit](https://github.com/FHIR/auto-ig-builder)

### Juurutusjuhendi kasutus

Juurutusjuhendis on profiilid ja loodud näidised leitavad artefaktide all. Eraldi on eristatud tervisedeklaratsiooni küsimustikku (baasressurss: Questionnaire) ja tervisedeklaratsiooni (baasressurss: QuestionnaireResponse).

Küsimustiku profiil kajastab vajaminevaid elemente küsimustiku ülesehitamiseks ning on laias laastus piiratud väljadega FHIR baasressurss. Profiilis ei ole kujutatud reaalseid tervisedeklaratsiooni küsimusi ega nende omavahelisi seoseid.  Küsimustik ise on ülesehitatud näidise all (ExampleEEHealthDeclarationQuestionnaire). 

Tervisedeklaratsiooni all mõtleme inimese poolt antud vastuseid küsimustikule. Profiil koosneb valdavalt samuti elementidest, millega on võimalik ehitada üles tervisedeklaratsioon (ei kajasta struktuuri, küsimutike hierahiat jne). Reaalne tervisedeklaratsiooni ülesehitus on leitav makimaalse andmekooseisuga näitest (ExampleEEHealthcDeclaration).
