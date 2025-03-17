# Tervisedeklaratsioon (Health declaration)

### Üldine informatsioon

Tervisedeklaratsioon on tervisetõendi osa, mille patsient koostab Terviseportaalis.

Deklaratsiooni esitatakse küsimustiku vastuse FHIR ressursina [QuestionnaireResponse](https://hl7.org/fhir/questionnaireresponse.html). Tervisedeklaratsiooni küsimustik on kirjeladatud [QRE juurutusjuhendis](https://github.com/TEHIK-EE/ig-ee-qre).
 
Deklaratsiooni on võimalik täita eesti, vene ja inglise keeles.
Tervisedeklaratsioon koosneb:
- taotleja enda poolt tervisliku seisundi kohta sisestatud infost
- tervise infosüsteemis taotleja kohta olemasolevast terviseinfost.

Täitja saab tervisedeklaratsioonil eeltäidetud ning varasemalt märgitud vastuseid muuta ning vajadusel deklaratsiooni tühistada senikaua, kuniks deklaratsioon pole tervisetõendiga seotud. 

Tervisedeklaratsioon kehtib kinnitamise hetkest tervisetõendi taotlemise korral 30 päeva ning Kaitseministeeriumi jaoks 3 kuud.

Lisainfo: 
- https://www.tehik.ee/tervisetoend-ja-tervisedeklaratsioon
- https://teabekeskus.tehik.ee/et/teenused/tis-teenused/tervisetoendid/tervisedeklaratsioon

### Arendusvahendid ja lähtekood

- HDECL-i juurutusjuhendi lähtekood on leitav [GitHubis](https://github.com/TEHIK-EE/ig-ee-hdecl).
- Antud sait on välja töötatud [FHIR Shorthand](https://build.fhir.org/ig/HL7/fhir-shorthand) abiga.
- Juurutusjuhendi avaldamiseks on kasutatud [FHIR IG Auto-Builderit](https://github.com/FHIR/auto-ig-builder) ja Github Pages.

### Juurutusjuhendi kasutus

Juurutusjuhendis on profiilid ja loodud näidised leitavad [artefaktide all](artifacts.html). 
Eraldi on eristatud tervisedeklaratsiooni profiil patsiendile/arstile [EEHealthDeclaration](StructureDefinition-ee-health-declaration.html) ja piiratud andmehulgaga profiil näiteks TTO registraatorile [EEHealthDeclarationMinimal](StructureDefinition-ee-health-declaration-minimal.html).
Tervisedeklaratsiooni all mõtleme inimese poolt antud vastuseid küsimustikule [QRE-st](https://github.com/TEHIK-EE/ig-ee-qre).

Reaalne tervisedeklaratsiooni ülesehitus on leitav maksimaalse andmekooseisuga näitest [ee-health-declaration-example](QuestionnaireResponse-ee-health-declaration-example.html).


### IG metadata

{% include ip-statements.xhtml %}

{% include cross-version-analysis.xhtml %}

{% include dependency-table.xhtml %}

{% include globals-table.xhtml %}
