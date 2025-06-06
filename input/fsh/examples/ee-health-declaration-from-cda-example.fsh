Instance: ee-health-declaration-from-cda-example
InstanceOf: EEHealthDeclaration
Description: "Näidis CDA tervisedeklaratsioonist migreeritud andmetega"
Usage: #example

* extension[categories].extension[category].valueCoding = $HDC#military-service
* extension[categories].extension[effectivePeriod].valuePeriod.start = "2025-01-16"
* extension[categories].extension[effectivePeriod].valuePeriod.end = "2025-06-16"

* extension[categories][1].extension[category].valueCoding = $HDC#driver-group-I
* extension[categories][1].extension[effectivePeriod].valuePeriod.start = "2025-01-16"
* extension[categories][1].extension[effectivePeriod].valuePeriod.end = "2025-03-16"

* extension[categories][2].extension[category].valueCoding = $HDC#driver-group-II
* extension[categories][2].extension[effectivePeriod].valuePeriod.start = "2025-01-16"
* extension[categories][2].extension[effectivePeriod].valuePeriod.end = "2025-03-16"

* identifier.system = "urn:oid:1.3.6.1.4.1.28284.6.2.4.78"
* identifier.value = "71b03b94-1d4f-4ad8-b72f-d81937f0bdd9"
* language = #et-EE
* questionnaire = "https://fhir.ee/qre/Questionnaire-health-declaration|1.0.0"
* status = #completed
* subject = Reference(Questionnaire-patient)
* authored =  "2024-01-01"
* author = Reference(Questionnaire-patient)

* item[0].linkId = "category"
// * item[=].text = "Kasutusala"
* item[=].answer[+].valueCoding = $HDC#military-service 
* item[=].answer[+].valueCoding = $HDC#driver-group-I 
* item[=].answer[+].valueCoding = $HDC#driver-group-II 

* item[+].linkId = "lifestyle"
// * item[=].text = "Elustiil"

* item[=].item[0].linkId = "lifestyle.alcohol"
// * item[=].item[=].text = "Kas te tarbite alkoholi?"
* item[=].item[=].answer.valueBoolean = true

* item[=].item[=].answer.item[0].linkId = "lifestyle.alcohol.alcohol-units"
// * item[=].item[=].answer.item[=].text =  "Mitu ühikut nädalas? (1 ühik = 40 ml 40% kanget alkoholi või 120 ml 12% veini või 250 ml 5,2% õlut)"
* item[=].item[=].answer.item[=].answer.valueDecimal =  3.4

* item[=].item[+].linkId = "lifestyle.smoking"
// * item[=].item[=].text = "Kas te suitsetate?"
* item[=].item[=].answer.valueBoolean = true

* item[=].item[=].answer.item[0].linkId = "lifestyle.smoking.smoking-amount"
// * item[=].item[=].answer.item[=].text =  "Mitu sigaretti päevas?"
* item[=].item[=].answer.item[=].answer.valueInteger = 20

* item[=].item[=].answer.item[+].linkId = "lifestyle.smoking.smoking-period"
// * item[=].item[=].answer.item[=].text =  "Mitu aastat olete järjest suitsetanud?"
* item[=].item[=].answer.item[=].answer.valueDecimal = 45.0

* item[=].item[+].linkId = "lifestyle.narcotics"
// * item[=].item[=].text = "Kas tarvitate narkootilisi/psühhotroopseid aineid?"
* item[=].item[=].answer.valueBoolean = true

* item[=].item[=].answer.item[0].linkId = "lifestyle.narcotics.narcotics-frequency"
// * item[=].item[=].answer.item[=].text =  "Kirjeldage, kui sageli"
* item[=].item[=].answer.item[=].answer.valueString = "3x nädalas. Narkootilised valuvaigistid kroonilise valu vastu (opiaadid)"

* item[=].item[+].linkId = "lifestyle.medication"
// * item[=].item[=].text = "Kas kasutate ravimeid, mis võivad Teie arvates mõjutada Teie keskendumisvõimet ja koordinatsiooni?"
* item[=].item[=].answer.valueBoolean = true

* item[=].item[=].answer.item[0].linkId = "lifestyle.medication.specification"
// * item[=].item[=].answer.item[=].text =  "Täpsustus"
* item[=].item[=].answer.item[=].answer.valueString = "Kodeiin ja muud opioidid"

* item[=].item[+].linkId = "lifestyle.sleep"
* item[=].item[=].answer.valueString = "Norskan, olen hommikul väsinud"

* item[+].linkId = "work-environment"
// * item[=].text = "Töökeskkond"

* item[=].item[0].linkId = "work-environment.work-restrictions"
// * item[=].item[=].text = "Kas Teile on tervisekontrolli põhjal varem seatud tööpiiranguid? Kui jah, mille tõttu?"
* item[=].item[=].answer.valueBoolean = true

* item[=].item[=].answer.item[0].linkId = "work-environment.work-restrictions.specification"
// * item[=].item[=].answer.item[=].text =  "Täpsustus"
* item[=].item[=].answer.item[=].answer.valueString =  "Psühholoogilise stressi tõttu takistatud tööd"

* item[=].item[+].linkId = "work-environment.work-health-problems"
// * item[=].item[=].text = "Kas Teil esineb või on esinenud tervisehäireid, mida seostate oma tööülesannete täitmise või töökeskkonnaga?"
* item[=].item[=].answer.valueBoolean = true

* item[=].item[=].answer.item[0].linkId = "work-environment.work-health-problems.specification"
// * item[=].item[=].answer.item[=].text =  "Täpsustus"
* item[=].item[=].answer.item[=].answer.valueString =  "Hingamisraskused tingitud töökeskkonnast"

// * item[=].item[+].linkId = "work-environment.occupational-disease"
// // * item[=].item[=].text = "Kas Teil on diagnoositud kutsehaigus?"
// * item[=].item[=].answer.valueBoolean = true

// * item[=].item[+].linkId = "work-environment.work-related-disease"
// * item[=].item[=].text = "Kas Teil on diagnoositud tööst põhjustatud haigus?"
// * item[=].item[=].answer.valueBoolean = false

// * item[=].item[+].linkId = "work-environment.ppe-problems"
// * item[=].item[=].text = "Kas tööl kasutatavad isikukaitsevahendid põhjustavad Teile terviseprobleeme?"
// * item[=].item[=].answer.valueBoolean = true

// * item[=].item[=].answer.item[0].linkId = "work-environment.ppe-problems.specification"
// * item[=].item[=].answer.item[=].text =  "Täpsustus"
// * item[=].item[=].answer.item[=].answer.valueString =  "Kiivri kandmine tekitab peavalu"

* item[+].linkId = "allergies"
// * item[=].text = "Allergiad"

* item[=].item[0].linkId = "allergies.no-complaints"
// * item[=].item[=].text = "Kaebused hetkel puuduvad"
* item[=].item[=].answer.valueBoolean = true

* item[+].linkId = "mental-health"
// * item[=].text = "Psüühika"

// * item[=].item[0].linkId = "mental-health.diagnoses-group"
// * item[=].item[=].text = "Varasemad diagnoosid"

* item[=].item[0].linkId = "mental-health.previous-diagnosis"
// * item[=].item[=].text = "Varasem diagnoos"

* item[=].item[=].item[0].linkId = "mental-health.previous-diagnosis.diagnosis"
// * item[=].item[=].item[=].text = "Diagnoos"
* item[=].item[=].item[=].answer.valueCoding.system = "https://fhir.ee/CodeSystem/rhk10"
* item[=].item[=].item[=].answer.valueCoding.code = #F61.0
// * item[=].item[=].item[=].answer.valueCoding.display = "Segatüüpi isiksushäired"

* item[=].item[=].item[+].linkId = "mental-health.previous-diagnosis.source-reference"
// * item[=].item[=].item[=].text = "Allika viide"
* item[=].item[=].item[=].answer.valueReference.identifier.system = "urn:oid:1.3.6.1.4.1.28284.6.1.1.5.11"
* item[=].item[=].item[=].answer.valueReference.identifier.value = "123456789"
* item[=].item[=].item[=].answer.valueReference.display = "Ambulatoorne epikriis"

* item[=].item[+].linkId = "mental-health.previous-diagnosis"
// * item[=].item[=].text = "Varasem diagnoos"

* item[=].item[=].item[0].linkId = "mental-health.previous-diagnosis.diagnosis"
// * item[=].item[=].item[=].text = "Diagnoos"
* item[=].item[=].item[=].answer.valueCoding.system = "https://fhir.ee/CodeSystem/rhk10"
* item[=].item[=].item[=].answer.valueCoding.code = #R45.4
// * item[=].item[=].item[=].answer.valueCoding.display = "Ärrituvus ja viha"

* item[=].item[=].item[+].linkId = "mental-health.previous-diagnosis.written-diagnosis"
// * item[=].item[=].item[=].text = "Sõnaline diagnoos"
* item[=].item[=].item[=].answer.valueString = "Liikluses muutun kergesti ärritatavaks"

* item[=].item[=].item[+].linkId = "mental-health.previous-diagnosis.source-reference"
// * item[=].item[=].item[=].text = "Allika viide"
* item[=].item[=].item[=].answer.valueReference.identifier.system = "urn:oid:1.3.6.1.4.1.28284.6.1.1.5.11"
* item[=].item[=].item[=].answer.valueReference.identifier.value = "123456789"
* item[=].item[=].item[=].answer.valueReference.display = "Ambulatoorne epikriis"

* item[=].item[+].linkId = "mental-health.no-complaints"
// * item[=].item[=].text = "Kaebused hetkel puuduvad"
* item[=].item[=].answer.valueBoolean = false

* item[=].item[+].linkId = "mental-health.depression"
// * item[=].item[=].text = "Depressioon"
* item[=].item[=].answer.valueBoolean = true

* item[=].item[=].answer.item[0].linkId = "mental-health.depression.specification"
// * item[=].item[=].answer.item[=].text = "Täpsustus"
* item[=].item[=].answer.item[=].answer.valueString = "Pidev apaatsus ja süvenev meeleolulangus"

* item[=].item[+].linkId = "mental-health.schizophrenia"
// * item[=].item[=].text = "Skisofreenia"
* item[=].item[=].answer.valueBoolean = false

* item[=].item[+].linkId = "mental-health.fear-working-alone"
// * item[=].item[=].text = "Kartus töötada üksinda"
* item[=].item[=].answer.valueBoolean = false

* item[=].item[+].linkId = "mental-health.fear-closed-spaces"
// * item[=].item[=].text = "Hirm suletud ruumi ees"
* item[=].item[=].answer.valueBoolean = false

* item[=].item[+].linkId = "mental-health.fear-heights"
// * item[=].item[=].text = "Kõrgusekartus"
* item[=].item[=].answer.valueBoolean = false

* item[=].item[+].linkId = "mental-health.other-disease-condition-symptom"
// * item[=].item[=].text = "Muu haigus/seisund/sümptom (palun täpsustage)"
* item[=].item[=].answer.valueBoolean = true

* item[=].item[=].answer.item[0].linkId = "mental-health.other-disease-condition-symptom.specification"
// * item[=].item[=].answer.item[=].text = "Täpsustus"
* item[=].item[=].answer.item[=].answer.valueString = "Generaliseerunud äravushoog (1x kuus)"


* item[+].linkId = "nervous-system"
// * item[=].text = "Närvisüsteem"

// * item[=].item[0].linkId = "nervous-system.diagnoses-group"
// * item[=].item[=].text = "Varasemad diagnoosid"

* item[=].item[0].linkId = "nervous-system.previous-diagnosis"
// * item[=].item[=].text = "Varasem diagnoos"

* item[=].item[=].item[0].linkId = "nervous-system.previous-diagnosis.diagnosis"
// * item[=].item[=].item[=].text = "Diagnoos"
* item[=].item[=].item[=].answer.valueCoding.system = "https://fhir.ee/CodeSystem/rhk10"
* item[=].item[=].item[=].answer.valueCoding.code = #G56.4
// * item[=].item[=].item[=].answer.valueCoding.display = "Kausalgia"

* item[=].item[=].item[+].linkId = "nervous-system.previous-diagnosis.source-reference"
// * item[=].item[=].item[=].text = "Allika viide"
* item[=].item[=].item[=].answer.valueReference.identifier.system = "urn:oid:1.3.6.1.4.1.28284.6.1.1.5.11"
* item[=].item[=].item[=].answer.valueReference.identifier.value = "123456789"
* item[=].item[=].item[=].answer.valueReference.display = "Ambulatoorne epikriis"

* item[=].item[+].linkId = "nervous-system.previous-diagnosis"
// * item[=].item[=].text = "Varasem diagnoos"

* item[=].item[=].item[0].linkId = "nervous-system.previous-diagnosis.diagnosis"
// * item[=].item[=].item[=].text = "Diagnoos"
* item[=].item[=].item[=].answer.valueCoding.system = "https://fhir.ee/CodeSystem/rhk10"
* item[=].item[=].item[=].answer.valueCoding.code = #G56.0
// * item[=].item[=].item[=].answer.valueCoding.display = "Karpaaltunneli sündroom"

* item[=].item[=].item[+].linkId = "nervous-system.previous-diagnosis.written-diagnosis"
// * item[=].item[=].item[=].text = "Sõnaline diagnoos"
* item[=].item[=].item[=].answer.valueString = "Arvutis trükkimine ja kirjutamine muutub valulikuks mingil ajahetkel"

* item[=].item[=].item[+].linkId = "nervous-system.previous-diagnosis.source-reference"
// * item[=].item[=].item[=].text = "Allika viide"
* item[=].item[=].item[=].answer.valueReference.identifier.system = "urn:oid:1.3.6.1.4.1.28284.6.1.1.5.11"
* item[=].item[=].item[=].answer.valueReference.identifier.value = "123456789"
* item[=].item[=].item[=].answer.valueReference.display = "Ambulatoorne epikriis"

* item[=].item[+].linkId = "nervous-system.no-complaints"
// * item[=].item[=].text = "Kaebused hetkel puuduvad"
* item[=].item[=].answer.valueBoolean = false

* item[=].item[+].linkId = "nervous-system.syncope"
// * item[=].item[=].text = "Teadvuse kaotuse hood"
* item[=].item[=].answer.valueBoolean = true

* item[=].item[=].answer.item[0].linkId = "nervous-system.syncope.specification"
// * item[=].item[=].answer.item[=].text = "Täpsutus"
* item[=].item[=].answer.item[=].answer.valueString = "aeg-ajalt minestan"

* item[=].item[+].linkId = "nervous-system.seizures"
// * item[=].item[=].text = "Krambihood (epilepsia ehk langetõbi)"
* item[=].item[=].answer.valueBoolean = true

* item[=].item[=].answer.item[0].linkId = "nervous-system.seizures.specification"
// * item[=].item[=].answer.item[=].text = "Täpsutus"
* item[=].item[=].answer.item[=].answer.valueString = "Vilkuv valgustus tekitab epilepsia hoogu"

* item[=].item[+].linkId = "nervous-system.balance-disorder"
// * item[=].item[=].text = "Tasakaaluhäired (sh Meniere'i tõbi)"
* item[=].item[=].answer.valueBoolean = true

* item[=].item[=].answer.item[0].linkId = "nervous-system.balance-disorder.specification"
// * item[=].item[=].answer.item[=].text = "Täpsutus"
* item[=].item[=].answer.item[=].answer.valueString = "Meniere'i tõbi diagnoositud"

* item[=].item[+].linkId = "nervous-system.stroke"
// * item[=].item[=].text = "Ajuinfarkt või ajuinsult"
* item[=].item[=].answer.valueBoolean = true

* item[=].item[=].answer.item[0].linkId = "nervous-system.stroke.specification"
// * item[=].item[=].answer.item[=].text = "Täpsutus"
* item[=].item[=].answer.item[=].answer.valueString = "Läbipõetud hemoraagiline ajuinfarkt"

* item[=].item[+].linkId = "nervous-system.seasickness"
// * item[=].item[=].text = "Merehaigus"
* item[=].item[=].answer.valueBoolean = true

* item[=].item[=].answer.item[0].linkId = "nervous-system.seasickness.specification"
// * item[=].item[=].answer.item[=].text = "Täpsutus"
* item[=].item[=].answer.item[=].answer.valueString = "Iiveldus merel sõites"

// * item[=].item[+].linkId = "nervous-system.coordination-disorder"
// // * item[=].item[=].text = "Koordinatsioonihäired (sh. kätega seonduvad)"
// * item[=].item[=].answer.valueBoolean = true

// * item[=].item[=].answer.item[0].linkId = "nervous-system.coordination-disorder.specification"
// // * item[=].item[=].answer.item[=].text = "Täpsutus"
// * item[=].item[=].answer.item[=].answer.valueString = "Treemor kätes tekitab raskuseid koordinatsiooniga"

* item[=].item[+].linkId = "nervous-system.other-disease-condition-symptom"
// * item[=].item[=].text = "Muu haigus/seisund/sümptom (palun täpsustage)"
* item[=].item[=].answer.valueBoolean = true

* item[=].item[=].answer.item[0].linkId = "nervous-system.other-disease-condition-symptom.specification"
// * item[=].item[=].answer.item[=].text = "Täpsutus"
* item[=].item[=].answer.item[=].answer.valueString = "Valu alaseljas füüsilise koormuse ajal"

//jätkata siit
* item[+].linkId = "eyes-vision"
// * item[=].text = "Silmad ja nägemine"

// * item[=].item[0].linkId = "eyes-vision.diagnoses-group"
// * item[=].item[=].text = "Varasemad diagnoosid"

* item[=].item[0].linkId = "eyes-vision.previous-diagnosis"
// * item[=].item[=].text = "Varasem diagnoos"

* item[=].item[=].item[0].linkId = "eyes-vision.previous-diagnosis.diagnosis"
// * item[=].item[=].item[=].text = "Diagnoos"
* item[=].item[=].item[=].answer.valueCoding.system = "https://fhir.ee/CodeSystem/rhk10"
* item[=].item[=].item[=].answer.valueCoding.code = #H27.1
// * item[=].item[=].item[=].answer.valueCoding.display = "Läätse väärasetsus"

* item[=].item[=].item[+].linkId = "eyes-vision.previous-diagnosis.source-reference"
// * item[=].item[=].item[=].text = "Allika viide"
* item[=].item[=].item[=].answer.valueReference.identifier.system = "urn:oid:1.3.6.1.4.1.28284.6.1.1.5.11"
* item[=].item[=].item[=].answer.valueReference.identifier.value = "123456789"
* item[=].item[=].item[=].answer.valueReference.display = "Ambulatoorne epikriis"

* item[=].item[+].linkId = "eyes-vision.no-complaints"
// * item[=].item[=].text = "Kaebused hetkel puuduvad"
* item[=].item[=].answer.valueBoolean = false

* item[=].item[+].linkId = "eyes-vision.myopia"
// * item[=].item[=].text = "Lühinägevus"
* item[=].item[=].answer.valueBoolean = true

* item[=].item[=].answer.item[0].linkId = "eyes-vision.myopia.specification"
// * item[=].item[=].answer.item[=].text = "Täpsutus"
* item[=].item[=].answer.item[=].answer.valueString = "Paremat silmast lühinägelik"

// * item[=].item[+].linkId = "eyes-vision.hyperopia"
// * item[=].item[=].text = "Kaugnägelikkus (hüperoopia)"
// * item[=].item[=].answer.valueBoolean = false

* item[=].item[+].linkId = "eyes-vision.limited-view"
// * item[=].item[=].text = "Kas üles-alla või külgedele vaadates esineb vaatevälja piiratust?"
* item[=].item[=].answer.valueBoolean = true

* item[=].item[=].answer.item[0].linkId = "eyes-vision.limited-view.specification"
// * item[=].item[=].answer.item[=].text = "Täpsutus"
* item[=].item[=].answer.item[=].answer.valueString = "külgedel esineb piiratus"

* item[=].item[+].linkId = "eyes-vision.double-vision"
// * item[=].item[=].text = "Kahelinägemine"
* item[=].item[=].answer.valueBoolean = false

* item[=].item[+].linkId = "eyes-vision.colour-vision-disorder"
// * item[=].item[=].text = "Värvusmeele häired"
* item[=].item[=].answer.valueBoolean = true

* item[=].item[=].answer.item[0].linkId = "eyes-vision.colour-vision-disorder.specification"
// * item[=].item[=].answer.item[=].text = "Täpsutus"
* item[=].item[=].answer.item[=].answer.valueString = "Osaline daltonism"

* item[=].item[+].linkId = "eyes-vision.other-disease-condition-symptom"
// * item[=].item[=].text = "Muu haigus/seisund/sümptom (palun täpsustage)"
* item[=].item[=].answer.valueBoolean = true

* item[=].item[=].answer.item[0].linkId = "eyes-vision.other-disease-condition-symptom.specification"
// * item[=].item[=].answer.item[=].text = "Täpsutus"
* item[=].item[=].answer.item[=].answer.valueString = "Ise-diagnoositud glaukoom"

* item[+].linkId = "ear-nose-throat"
// * item[=].text = "Kõrv, nina, neel"

// * item[=].item[0].linkId = "ear-nose-throat.diagnoses-group"
// * item[=].item[=].text = "Varasemad diagnoosid"

* item[=].item[0].linkId = "ear-nose-throat.previous-diagnosis"
// * item[=].item[=].text = "Varasem diagnoos"

* item[=].item[=].item[0].linkId = "ear-nose-throat.previous-diagnosis.diagnosis"
// * item[=].item[=].item[=].text = "Diagnoos"
* item[=].item[=].item[=].answer.valueCoding.system = "https://fhir.ee/CodeSystem/rhk10"
* item[=].item[=].item[=].answer.valueCoding.code = #J38.5
// * item[=].item[=].item[=].answer.valueCoding.display = "Kõrispasm"

* item[=].item[=].item[+].linkId = "ear-nose-throat.previous-diagnosis.source-reference"
// * item[=].item[=].item[=].text = "Allika viide"
* item[=].item[=].item[=].answer.valueReference.identifier.system = "urn:oid:1.3.6.1.4.1.28284.6.1.1.5.11"
* item[=].item[=].item[=].answer.valueReference.identifier.value = "123456789"
* item[=].item[=].item[=].answer.valueReference.display = "Ambulatoorne epikriis"

* item[=].item[+].linkId = "ear-nose-throat.no-complaints"
// * item[=].item[=].text = "Kaebused hetkel puuduvad"
* item[=].item[=].answer.valueBoolean = true

* item[+].linkId = "respiratory-system"
// * item[=].text = "Hingamissüsteem"

// * item[=].item[0].linkId = "respiratory-system.diagnoses-group"
// * item[=].item[=].text = "Varasemad diagnoosid"

* item[=].item[0].linkId = "respiratory-system.previous-diagnosis"
// * item[=].item[=].text = "Varasem diagnoos"

* item[=].item[=].item[0].linkId = "respiratory-system.previous-diagnosis.diagnosis"
// * item[=].item[=].item[=].text = "Diagnoos"
* item[=].item[=].item[=].answer.valueCoding.system = "https://fhir.ee/CodeSystem/rhk10"
* item[=].item[=].item[=].answer.valueCoding.code = #J65
// * item[=].item[=].item[=].answer.valueCoding.display = "Pneumokonioos koos tuberkuloosiga"

* item[=].item[=].item[+].linkId = "respiratory-system.previous-diagnosis.written-diagnosis"
// * item[=].item[=].item[=].text = "Sõnaline diagnoos"
* item[=].item[=].item[=].answer.valueString = "Krooniline kopsutolmustus"

* item[=].item[=].item[+].linkId = "respiratory-system.previous-diagnosis.source-reference"
// * item[=].item[=].item[=].text = "Allika viide"
* item[=].item[=].item[=].answer.valueReference.identifier.system = "urn:oid:1.3.6.1.4.1.28284.6.1.1.5.11"
* item[=].item[=].item[=].answer.valueReference.identifier.value = "123456789"
* item[=].item[=].item[=].answer.valueReference.display = "Ambulatoorne epikriis"

* item[=].item[+].linkId = "respiratory-system.no-complaints"
// * item[=].item[=].text = "Kaebused hetkel puuduvad"
* item[=].item[=].answer.valueBoolean = false

* item[=].item[+].linkId = "respiratory-system.asthma"
// * item[=].item[=].text = "Astma"
* item[=].item[=].answer.valueBoolean = false

* item[=].item[+].linkId = "respiratory-system.copd"
// * item[=].item[=].text = "Krooniline obstruktiivne kopsuhaigus ehk KOK"
* item[=].item[=].answer.valueBoolean = true

* item[=].item[=].answer.item[0].linkId = "respiratory-system.copd.specification"
// * item[=].item[=].answer.item[=].text = "Täpsutus"
* item[=].item[=].answer.item[=].answer.valueString = "hingamine füüsilisel koormusel raskendatud"

* item[=].item[+].linkId = "respiratory-system.sleep-apnoea"
// * item[=].item[=].text = "Uneapnoe"
* item[=].item[=].answer.valueBoolean = true

* item[=].item[=].answer.item[0].linkId = "respiratory-system.sleep-apnoea.specification"
// * item[=].item[=].answer.item[=].text = "Täpsutus"
* item[=].item[=].answer.item[=].answer.valueString = "Norskan (kasutan ka CPAP maski)"

* item[=].item[+].linkId = "respiratory-system.other-disease-condition-symptom"
// * item[=].item[=].text = "Muu haigus/seisund/sümptom (palun täpsustage)"
* item[=].item[=].answer.valueBoolean = true

* item[=].item[=].answer.item[0].linkId = "respiratory-system.other-disease-condition-symptom.specification"
// * item[=].item[=].answer.item[=].text = "Täpsutus"
* item[=].item[=].answer.item[=].answer.valueString = "Sügavalt hingamine krabisev hääl"

* item[+].linkId = "metabolic-disorder"
// * item[=].text = "Ainevahetuse häired (sh kilpnäärme haigused)"

// * item[=].item[0].linkId = "metabolic-disorder.diagnoses-group"
// * item[=].item[=].text = "Varasemad diagnoosid"

* item[=].item[0].linkId = "metabolic-disorder.previous-diagnosis"
// * item[=].item[=].text = "Varasem diagnoos"

* item[=].item[=].item[0].linkId = "metabolic-disorder.previous-diagnosis.diagnosis"
// * item[=].item[=].item[=].text = "Diagnoos"
* item[=].item[=].item[=].answer.valueCoding.system = "https://fhir.ee/CodeSystem/rhk10"
* item[=].item[=].item[=].answer.valueCoding.code = #E11.9
// * item[=].item[=].item[=].answer.valueCoding.display = "Insuliinisõltumatu suhkurtõbi tüsistusteta"

* item[=].item[=].item[+].linkId = "metabolic-disorder.previous-diagnosis.written-diagnosis"
// * item[=].item[=].item[=].text = "Sõnaline diagnoos"
* item[=].item[=].item[=].answer.valueString = "II tüüpi diabeet"

* item[=].item[=].item[+].linkId = "metabolic-disorder.previous-diagnosis.source-reference"
// * item[=].item[=].item[=].text = "Allika viide"
* item[=].item[=].item[=].answer.valueReference.identifier.system = "urn:oid:1.3.6.1.4.1.28284.6.1.1.5.11"
* item[=].item[=].item[=].answer.valueReference.identifier.value = "123456789"
* item[=].item[=].item[=].answer.valueReference.display = "Ambulatoorne epikriis"

* item[=].item[+].linkId = "metabolic-disorder.no-complaints"
// * item[=].item[=].text = "Kaebused hetkel puuduvad"
* item[=].item[=].answer.valueBoolean = false

* item[=].item[+].linkId = "metabolic-disorder.diabetes"
// * item[=].item[=].text = "Suhkruhaigus"
* item[=].item[=].answer.valueBoolean = true

* item[=].item[=].answer.item[0].linkId = "metabolic-disorder.diabetes.specification"
// * item[=].item[=].answer.item[=].text = "Täpsutus"
* item[=].item[=].answer.item[=].answer.valueString = "II tüüpi diabeet"

* item[=].item[+].linkId = "metabolic-disorder.other-disease-condition-symptom"
// * item[=].item[=].text = "Muu haigus/seisund/sümptom (palun täpsustage)"
* item[=].item[=].answer.valueBoolean = false

* item[+].linkId = "cardiovascular-system"
// * item[=].text = "Süda ja veresoonkond"

// * item[=].item[0].linkId = "cardiovascular-system.diagnoses-group"
// * item[=].item[=].text = "Varasemad diagnoosid"

* item[=].item[0].linkId = "cardiovascular-system.previous-diagnosis"
// * item[=].item[=].text = "Varasem diagnoos"

* item[=].item[=].item[0].linkId = "cardiovascular-system.previous-diagnosis.diagnosis"
// * item[=].item[=].item[=].text = "Diagnoos"
* item[=].item[=].item[=].answer.valueCoding.system = "https://fhir.ee/CodeSystem/rhk10"
* item[=].item[=].item[=].answer.valueCoding.code = #I25.2
// * item[=].item[=].item[=].answer.valueCoding.display = "Varasem müokardiinfarkt"

* item[=].item[=].item[+].linkId = "cardiovascular-system.previous-diagnosis.written-diagnosis"
// * item[=].item[=].item[=].text = "Sõnaline diagnoos"
* item[=].item[=].item[=].answer.valueString = "Pärgarterite 50% ummistus põhjustas MI"

* item[=].item[=].item[+].linkId = "cardiovascular-system.previous-diagnosis.source-reference"
// * item[=].item[=].item[=].text = "Allika viide"
* item[=].item[=].item[=].answer.valueReference.identifier.system = "urn:oid:1.3.6.1.4.1.28284.6.1.1.5.11"
* item[=].item[=].item[=].answer.valueReference.identifier.value = "123456789"
* item[=].item[=].item[=].answer.valueReference.display = "Ambulatoorne epikriis"

* item[=].item[+].linkId = "cardiovascular-system.no-complaints"
// * item[=].item[=].text = "Kaebused hetkel puuduvad"
* item[=].item[=].answer.valueBoolean = false

* item[=].item[+].linkId = "cardiovascular-system.chest-pain-activity"
// * item[=].item[=].text = "Koormusega seonduv valu rinnus"
* item[=].item[=].answer.valueBoolean = true

* item[=].item[=].answer.item[0].linkId = "cardiovascular-system.chest-pain-activity.specification"
// * item[=].item[=].answer.item[=].text = "Täpsutus"
* item[=].item[=].answer.item[=].answer.valueString = "Süda hakkab puperdama füüsilisel koormusel"

* item[=].item[+].linkId = "cardiovascular-system.high-blood-pressure"
// * item[=].item[=].text = "Kõrge vererõhk"
* item[=].item[=].answer.valueBoolean = false

* item[=].item[+].linkId = "cardiovascular-system.heart-attack"
// * item[=].item[=].text = "Läbipõetud südameinfarkt"
* item[=].item[=].answer.valueBoolean = true

* item[=].item[=].answer.item[0].linkId = "cardiovascular-system.heart-attack.specification"
// * item[=].item[=].answer.item[=].text = "Täpsutus"
* item[=].item[=].answer.item[=].answer.valueString = "4 aastat tagasi põdesin läbi südame isheemitõvest tingitud infarkti"

* item[=].item[+].linkId = "cardiovascular-system.arrhythmia"
// * item[=].item[=].text = "Südame rütmihäired"
* item[=].item[=].answer.valueBoolean = false

* item[=].item[+].linkId = "cardiovascular-system.angioplasty-stenting"
// * item[=].item[=].text = "On tehtud südamesondeerimine või stentimine"
* item[=].item[=].answer.valueBoolean = true

* item[=].item[=].answer.item[0].linkId = "cardiovascular-system.angioplasty-stenting.specification"
// * item[=].item[=].answer.item[=].text = "Täpsutus"
* item[=].item[=].answer.item[=].answer.valueString = "Pärast põetud infarkti paigaldatud balloondilatatsiooni stent (reiearteri kaudu)"

* item[=].item[+].linkId = "cardiovascular-system.pacer"
// * item[=].item[=].text = "On paigaldatud südamerütmur"
* item[=].item[=].answer.valueBoolean = false

* item[=].item[+].linkId = "cardiovascular-system.heart-surgery"
// * item[=].item[=].text = "On tehtud südameoperatsioon"
* item[=].item[=].answer.valueBoolean = false

* item[=].item[+].linkId = "cardiovascular-system.other-disease-condition-symptom"
// * item[=].item[=].text = "Muu haigus/seisund/sümptom (palun täpsustage)"
* item[=].item[=].answer.valueBoolean = false

* item[+].linkId = "bones-joints-muscles"
// * item[=].text = "Luud, liigesed ja lihased"

// * item[=].item[0].linkId = "bones-joints-muscles.diagnoses-group"
// * item[=].item[=].text = "Varasemad diagnoosid"

* item[=].item[0].linkId = "bones-joints-muscles.previous-diagnosis"
// * item[=].item[=].text = "Varasem diagnoos"

* item[=].item[=].item[0].linkId = "bones-joints-muscles.previous-diagnosis.diagnosis"
// * item[=].item[=].item[=].text = "Diagnoos"
* item[=].item[=].item[=].answer.valueCoding.system = "https://fhir.ee/CodeSystem/rhk10"
* item[=].item[=].item[=].answer.valueCoding.code = #M47
// * item[=].item[=].item[=].answer.valueCoding.display = "Spondüloos e lülijäikus"

* item[=].item[=].item[+].linkId = "bones-joints-muscles.previous-diagnosis.written-diagnosis"
// * item[=].item[=].item[=].text = "Sõnaline diagnoos"
* item[=].item[=].item[=].answer.valueString = "lülijäikus"

* item[=].item[=].item[+].linkId = "bones-joints-muscles.previous-diagnosis.source-reference"
// * item[=].item[=].item[=].text = "Allika viide"
* item[=].item[=].item[=].answer.valueReference.identifier.system = "urn:oid:1.3.6.1.4.1.28284.6.1.1.5.11"
* item[=].item[=].item[=].answer.valueReference.identifier.value = "123456789"
* item[=].item[=].item[=].answer.valueReference.display = "Ambulatoorne epikriis"

* item[=].item[+].linkId = "bones-joints-muscles.no-complaints"
// * item[=].item[=].text = "Kaebused hetkel puuduvad"
* item[=].item[=].answer.valueBoolean = false

* item[=].item[+].linkId = "bones-joints-muscles.joint-stiffness"
// * item[=].item[=].text = "Liigesejäikus"
* item[=].item[=].answer.valueBoolean = true

* item[=].item[=].answer.item[0].linkId = "bones-joints-muscles.joint-stiffness.specification"
// * item[=].item[=].answer.item[=].text = "Täpsutus"
* item[=].item[=].answer.item[=].answer.valueString = "Hommikuti on kõik liigesed kanged"

* item[=].item[+].linkId = "bones-joints-muscles.limb-paralysis"
// * item[=].item[=].text = "Jäseme osaline või täielik halvatus (palun täpsustage)"
* item[=].item[=].answer.valueBoolean = false

* item[=].item[+].linkId = "bones-joints-muscles.missing-limb"
// * item[=].item[=].text = "Jäseme või selle osa puudumine (palun täpsustage)"
* item[=].item[=].answer.valueBoolean = false

* item[=].item[+].linkId = "bones-joints-muscles.tremor"
// * item[=].item[=].text = "Käte värisemine (treemor)"
* item[=].item[=].answer.valueBoolean = false

* item[=].item[+].linkId = "bones-joints-muscles.joint-pain"
// * item[=].item[=].text = "Liigesevalu"
* item[=].item[=].answer.valueBoolean = true

* item[=].item[=].answer.item[0].linkId = "bones-joints-muscles.joint-pain.specification"
// * item[=].item[=].answer.item[=].text = "Täpsutus"
* item[=].item[=].answer.item[=].answer.valueString = "Hommikuti on kõik liigesed valusad"

* item[=].item[+].linkId = "bones-joints-muscles.neck-pain"
// * item[=].item[=].text = "Kaelavalu"
* item[=].item[=].answer.valueBoolean = false

* item[=].item[+].linkId = "bones-joints-muscles.shoulder-pain"
// * item[=].item[=].text = "Õlavöötmevalu"
* item[=].item[=].answer.valueBoolean = false

* item[=].item[+].linkId = "bones-joints-muscles.lower-back-pain"
// * item[=].item[=].text = "Alaseljavalu"
* item[=].item[=].answer.valueBoolean = false

* item[=].item[+].linkId = "bones-joints-muscles.other-disease-condition-symptom"
// * item[=].item[=].text = "Muu haigus/seisund/sümptom (palun täpsustage)"
* item[=].item[=].answer.valueBoolean = false

* item[+].linkId = "infections"
// * item[=].text = "Nakkushaigused"

// * item[=].item[0].linkId = "infections.diagnoses-group"
// * item[=].item[=].text = "Varasemad diagnoosid"

* item[=].item[0].linkId = "infections.previous-diagnosis"
// * item[=].item[=].text = "Varasem diagnoos"

* item[=].item[=].item[0].linkId = "infections.previous-diagnosis.diagnosis"
// * item[=].item[=].item[=].text = "Diagnoos"
* item[=].item[=].item[=].answer.valueCoding.system = "https://fhir.ee/CodeSystem/rhk10"
* item[=].item[=].item[=].answer.valueCoding.code = #A51.1
// * item[=].item[=].item[=].answer.valueCoding.display = "Primaarne anaalsüüfilis"

* item[=].item[=].item[+].linkId = "infections.previous-diagnosis.source-reference"
// * item[=].item[=].item[=].text = "Allika viide"
* item[=].item[=].item[=].answer.valueReference.identifier.system = "urn:oid:1.3.6.1.4.1.28284.6.1.1.5.11"
* item[=].item[=].item[=].answer.valueReference.identifier.value = "123456789"
* item[=].item[=].item[=].answer.valueReference.display = "Ambulatoorne epikriis"

* item[=].item[+].linkId = "infections.no-known-illness"
// * item[=].item[=].text = "Teadaolevalt ei ole põdenud"
* item[=].item[=].answer.valueBoolean = true

* item[+].linkId = "other-chronic-disorders"
// * item[=].text = "Muud kroonilised haigused, seisundid või sümptomid, mida eespool ei kirjeldatud"

* item[=].item[0].linkId = "other-chronic-disorders.none"
// * item[=].item[=].text = "Puuduvad"
* item[=].item[=].answer.valueBoolean = true

* item[+].linkId = "previous-treatment"
// * item[=].text = "Senine ravi"

* item[=].item[0].linkId = "previous-treatment.treatment-abroad"
// * item[=].item[=].text = "Kas olete viimase 5 aasta jooksul saanud välismaal haiglaravi või käinud arsti vastuvõtul? Palun täpsustage millal, kus, ja millega seoses"
* item[=].item[=].answer.valueBoolean = true

* item[=].item[=].answer.item[0].linkId = "previous-treatment.treatment-abroad.specification"
// * item[=].item[=].answer.item[=].text = "Täpsustus"
* item[=].item[=].answer.item[=].answer.valueString = "Ostsin lätis paratsetamooli"

* item[=].item[+].linkId = "previous-treatment.regular-medication"
// * item[=].item[=].text = "Regulaarsed ravimid"

* item[=].item[=].item[0].linkId = "previous-treatment.regular-medication.regular-medication-women"
// * item[=].item[=].item[=].text = "Kas tarvitate regulaarselt mingeid ravimeid? Palun loetlege, milliseid"
* item[=].item[=].item[=].answer.valueBoolean = true

* item[=].item[=].item[=].answer.item[0].linkId = "previous-treatment.regular-medication.regular-medication-women.specification"
// * item[=].item[=].item[=].answer.item[=].text = "Täpsustus"
* item[=].item[=].item[=].answer.item[=].answer.valueString = "Xymelin, beeta-blokaatorid, hjärtemagnyl (südame aspirin)"

* item[=].item[=].item[+].linkId = "previous-treatment.regular-medication.current-prescription"
// * item[=].item[=].item[=].text = "Viimase 9 kuu jooksul välja kirjutatud retseptid"

// * item[=].item[=].item[=].item[0].linkId = "previous-treatment.regular-medication.current-prescriptions.prescription"
// * item[=].item[=].item[=].item[=].text = "Retsept"

* item[=].item[=].item[=].item[0].linkId = "previous-treatment.regular-medication.current-prescription.date"
// * item[=].item[=].item[=].item[=].text = "Kuupäev"
* item[=].item[=].item[=].item[=].answer.valueDate = "2024-09-01"

* item[=].item[=].item[=].item[+].linkId = "previous-treatment.regular-medication.current-prescription.atc"
// * item[=].item[=].item[=].item[=].text = "ATC"
* item[=].item[=].item[=].item[=].answer.valueCoding.system = "https://fhir.ee/CodeSystem/atc-ee"
* item[=].item[=].item[=].item[=].answer.valueCoding.code = #G03BA03
* item[=].item[=].item[=].item[=].answer.valueCoding.display = "testosteroon"

* item[=].item[=].item[=].item[+].linkId = "previous-treatment.regular-medication.current-prescription.package"
// * item[=].item[=].item[=].item[=].text = "Pakend"
* item[=].item[=].item[=].item[=].answer.valueCoding.system = "http://ravimiregister.ee/pakendid" 
* item[=].item[=].item[=].item[=].answer.valueCoding.code = #1022623
* item[=].item[=].item[=].item[=].answer.valueCoding.display = "mingi pakend"

* item[=].item[=].item[=].item[+].linkId = "previous-treatment.regular-medication.current-prescription.source-reference"
// * item[=].item[=].item[=].item[=].text = "Allika viide"
* item[=].item[=].item[=].item[=].answer.valueReference.identifier.system = "urn:oid:1.3.6.1.4.1.28284.6.1.1.5.11"
* item[=].item[=].item[=].item[=].answer.valueReference.identifier.value = "123456789"
* item[=].item[=].item[=].item[=].answer.valueReference.display = "Ambulatoorne epikriis"

* item[=].item[+].linkId = "previous-treatment.hospitalization"
// * item[=].item[=].text = "Kas olete viimase 5 aasta jooksul viibinud haiglaravil?"
* item[=].item[=].answer.valueBoolean = true

* item[=].item[=].answer.item[0].linkId = "previous-treatment.hospitalization.specification"
// * item[=].item[=].answer.item[=].text = "Täpsustus"
* item[=].item[=].answer.item[=].answer.valueString = "Kopsupõletikuga intensiivravil mõni aeg tagasi"

// * item[=].item[=].item[+].linkId = "previous-treatment.hospitalization.previous-hospitalization"
// * item[=].item[=].item[=].text = "Varasem haiglaravi"

* item[=].item[=].answer.item[+].linkId = "previous-treatment.hospitalization.inpatient-case"
// * item[=].item[=].answer.item[=].text = "Statsionaarne haigusjuhtum"

* item[=].item[=].answer.item[=].item[0].linkId = "previous-treatment.hospitalization.inpatient-case.from"
// * item[=].item[=].answer.item[=].item[=].text = "Alates"
* item[=].item[=].answer.item[=].item[=].answer.valueDate = "2024-05-01"

* item[=].item[=].answer.item[=].item[+].linkId = "previous-treatment.hospitalization.inpatient-case.to"
// * item[=].item[=].answer.item[=].item[=].text = "Kuni"
* item[=].item[=].answer.item[=].item[=].answer.valueDate = "2024-06-01"

* item[=].item[=].answer.item[=].item[+].linkId = "previous-treatment.hospitalization.inpatient-case.provider"
// * item[=].item[=].answer.item[=].item[=].text = "Tervishoiuasutus"
* item[=].item[=].answer.item[=].item[=].answer.valueString = "Lääne-Tallinna Keskhaigla"

* item[=].item[=].answer.item[=].item[+].linkId = "previous-treatment.hospitalization.inpatient-case.source-reference"
// * item[=].item[=].answer.item[=].item[=].text = "Allika viide"
* item[=].item[=].answer.item[=].item[=].answer.valueReference.identifier.system = "urn:oid:1.3.6.1.4.1.28284.6.1.1.5.11"
* item[=].item[=].answer.item[=].item[=].answer.valueReference.identifier.value = "123456789"
* item[=].item[=].answer.item[=].item[=].answer.valueReference.display = "Ambulatoorne epikriis"

* item[=].item[+].linkId = "previous-treatment.surgeries"
// * item[=].item[=].text = "Kas teid on viimase 5 aasta jooksul opereeritud? Palun täpsustage, millal, mille tõttu"
* item[=].item[=].answer.valueBoolean = true

* item[=].item[=].answer.item[0].linkId = "previous-treatment.surgeries.specification"
// * item[=].item[=].answer.item[=].text = "Täpsustus"
* item[=].item[=].answer.item[=].answer.valueString = "Avatud apendektoomia, vist oli 4 2 kuud tagasi. Põhjuseks akuutne pimesoole põletik"

// * item[=].item[=].item[+].linkId = "previous-treatment.surgeries.procedures"
// * item[=].item[=].item[=].text = "Teostatud protseduurid"

* item[=].item[=].answer.item[+].linkId = "previous-treatment.surgeries.surgery"
// * item[=].item[=].answer.item[=].text = "Operatsioon"

* item[=].item[=].answer.item[=].item[0].linkId = "previous-treatment.surgeries.surgery.surgery-date"
// * item[=].item[=].answer.item[=].item[=].text = "Kuupäev"
* item[=].item[=].answer.item[=].item[=].answer.valueDate = "2024-11-20"

* item[=].item[=].answer.item[=].item[+].linkId = "previous-treatment.surgeries.surgery.code"
// * item[=].item[=].answer.item[=].item[=].text = "Operatsioon"
* item[=].item[=].answer.item[=].item[=].answer.valueCoding.system = "https://fhir.ee/CodeSystem/ncsp"
* item[=].item[=].answer.item[=].item[=].answer.valueCoding.code = #JEA01
// * item[=].item[=].answer.item[=].item[=].answer.valueCoding.display = "Laparoskoopiline apendektoomia"

* item[=].item[=].answer.item[=].item[+].linkId = "previous-treatment.surgeries.surgery.surgery-add-code"
// * item[=].item[=].answer.item[=].item[=].text = "Operatsiooni lisakoodid"
* item[=].item[=].answer.item[=].item[=].answer.valueCoding.system = "https://fhir.ee/CodeSystem/ncsp"
* item[=].item[=].answer.item[=].item[=].answer.valueCoding.code = #JEW96
// * item[=].item[=].answer.item[=].item[=].answer.valueCoding.display = "Muu operatsioon apendiksil"

* item[=].item[=].answer.item[=].item[+].linkId = "previous-treatment.surgeries.surgery.source-reference"
// * item[=].item[=].answer.item[=].item[=].text = "Allika viide"
* item[=].item[=].answer.item[=].item[=].answer.valueReference.identifier.system = "urn:oid:1.3.6.1.4.1.28284.6.1.1.5.11"
* item[=].item[=].answer.item[=].item[=].answer.valueReference.identifier.value = "123456789"
* item[=].item[=].answer.item[=].item[=].answer.valueReference.display = "Ambulatoorne epikriis"

* item[+].linkId = "traumas"
// * item[=].text = "Traumad"

// * item[=].item[0].linkId = "traumas.diagnoses-group"
// * item[=].item[=].text = "Varasemad diagnoosid"

* item[=].item[0].linkId = "traumas.previous-diagnosis"
// * item[=].item[=].text = "Varasem diagnoos"

* item[=].item[=].item[0].linkId = "traumas.previous-diagnosis.diagnosis"
// * item[=].item[=].item[=].text = "Diagnoos"
* item[=].item[=].item[=].answer.valueCoding.system = "https://fhir.ee/CodeSystem/rhk10"
* item[=].item[=].item[=].answer.valueCoding.code = #T63.3
// * item[=].item[=].item[=].answer.valueCoding.display = "Amblikumürk"

* item[=].item[=].item[+].linkId = "traumas.previous-diagnosis.written-diagnosis"
// * item[=].item[=].item[=].text = "Sõnaline diagnoos"
* item[=].item[=].item[=].answer.valueString = "Radioaktiivselt ämblikult sai hammustada"

* item[=].item[=].item[+].linkId = "traumas.previous-diagnosis.source-reference"
// * item[=].item[=].item[=].text = "Allika viide"
* item[=].item[=].item[=].answer.valueReference.identifier.system = "urn:oid:1.3.6.1.4.1.28284.6.1.1.5.11"
* item[=].item[=].item[=].answer.valueReference.identifier.value = "123456789"
* item[=].item[=].item[=].answer.valueReference.display = "Ambulatoorne epikriis"

* item[=].item[+].linkId = "traumas.none"
// * item[=].item[=].text = "Hetkel puuduvad"
* item[=].item[=].answer.valueBoolean = false

* item[=].item[+].linkId = "traumas.fractures"
// * item[=].item[=].text = "Luumurrud (palun täpsustage, millised ja millal)"
* item[=].item[=].answer.valueBoolean = true

* item[=].item[=].answer.item[0].linkId = "traumas.fractures.specification"
// * item[=].item[=].answer.item[=].text = "Täpsustus"
* item[=].item[=].answer.item[=].answer.valueString = "Varbaluumurd (juhtus 3 nädalat tagasi)"

// * item[=].item[+].linkId = "traumas.head-traumas"
// * item[=].item[=].text = "Rasked peavigastused"
// * item[=].item[=].answer.valueBoolean = false

* item[=].item[+].linkId = "traumas.other-injuries"
// * item[=].item[=].text = "Muud olulised vigastused (palun täpsustage, millised ja millal)"
* item[=].item[=].answer.valueBoolean = false

* item[+].linkId = "pregnancy"
* item[=].answer.valueBoolean = false

* item[+].linkId = "skin-disorders"
// * item[=].text = "Nahahaigused viimase 5 aasta jooksul: millal põdenud, milliseid?"

// * item[=].item[0].linkId = "skin-disorders.diagnoses-group"
// * item[=].item[=].text = "Varasemad diagnoosid"

* item[=].item[0].linkId = "skin-disorders.previous-diagnosis"
// * item[=].item[=].text = "Varasem diagnoos"

* item[=].item[=].item[0].linkId = "skin-disorders.previous-diagnosis.diagnosis"
// * item[=].item[=].item[=].text = "Diagnoos"
* item[=].item[=].item[=].answer.valueCoding.system = "https://fhir.ee/CodeSystem/rhk10"
* item[=].item[=].item[=].answer.valueCoding.code = #L02.1
// * item[=].item[=].item[=].answer.valueCoding.display = "Kaelanahaabstsess, -furunkul ja -karbunkul"

* item[=].item[=].item[+].linkId = "skin-disorders.previous-diagnosis.source-reference"
// * item[=].item[=].item[=].text = "Allika viide"
* item[=].item[=].item[=].answer.valueReference.identifier.system = "urn:oid:1.3.6.1.4.1.28284.6.1.1.5.11"
* item[=].item[=].item[=].answer.valueReference.identifier.value = "123456789"
* item[=].item[=].item[=].answer.valueReference.display = "Ambulatoorne epikriis"

* item[=].item[+].linkId = "skin-disorders.previous-diagnosis"
// * item[=].item[=].text = "Varasem diagnoos"

* item[=].item[=].item[0].linkId = "skin-disorders.previous-diagnosis.diagnosis"
// * item[=].item[=].item[=].text = "Diagnoos"
* item[=].item[=].item[=].answer.valueCoding.system = "https://fhir.ee/CodeSystem/rhk10"
* item[=].item[=].item[=].answer.valueCoding.code = #A46
// * item[=].item[=].item[=].answer.valueCoding.display = "Erüsiipel e roos"

* item[=].item[=].item[+].linkId = "skin-disorders.previous-diagnosis.written-diagnosis"
// * item[=].item[=].item[=].text = "Sõnaline diagnoos"
* item[=].item[=].item[=].answer.valueString = "Roospõletik tuhara piirkonnas"

* item[=].item[=].item[+].linkId = "skin-disorders.previous-diagnosis.source-reference"
// * item[=].item[=].item[=].text = "Allika viide"
* item[=].item[=].item[=].answer.valueReference.identifier.system = "urn:oid:1.3.6.1.4.1.28284.6.1.1.5.11"
* item[=].item[=].item[=].answer.valueReference.identifier.value = "123456789"
* item[=].item[=].item[=].answer.valueReference.display = "Ambulatoorne epikriis"

* item[=].item[+].linkId = "skin-disorders.skin-conditions"
// * item[=].item[=].text = "Nahahaigused: millal põdenud, milliseid?"
* item[=].item[=].answer.valueBoolean = true

* item[=].item[=].answer.item[0].linkId = "skin-disorders.skin-conditions.specification"
// * item[=].item[=].answer.item[=].text = "Täpsustus"
* item[=].item[=].answer.item[=].answer.valueString = "Roospõletik sügeleb sageli ja nahk on kuiv."

* item[+].linkId = "digestive-organs"
// * item[=].text = "Seedeelundid"

// * item[=].item[0].linkId = "digestive-organs.diagnoses-group"
// * item[=].item[=].text = "Varasemad diagnoosid"

* item[=].item[0].linkId = "digestive-organs.previous-diagnosis"
// * item[=].item[=].text = "Varasem diagnoos"

* item[=].item[=].item[0].linkId = "digestive-organs.previous-diagnosis.diagnosis"
// * item[=].item[=].item[=].text = "Diagnoos"
* item[=].item[=].item[=].answer.valueCoding.system = "https://fhir.ee/CodeSystem/rhk10"
* item[=].item[=].item[=].answer.valueCoding.code = #K70.1
// * item[=].item[=].item[=].answer.valueCoding.display = "Alkoholhepatiit"

* item[=].item[=].item[+].linkId = "digestive-organs.previous-diagnosis.written-diagnosis"
// * item[=].item[=].item[=].text = "Sõnaline diagnoos"
* item[=].item[=].item[=].answer.valueString = "Ikteeriline maksapuudulikkuse tõttu juba"

* item[=].item[=].item[+].linkId = "digestive-organs.previous-diagnosis.source-reference"
// * item[=].item[=].item[=].text = "Allika viide"
* item[=].item[=].item[=].answer.valueReference.identifier.system = "urn:oid:1.3.6.1.4.1.28284.6.1.1.5.11"
* item[=].item[=].item[=].answer.valueReference.identifier.value = "123456789"
* item[=].item[=].item[=].answer.valueReference.display = "Ambulatoorne epikriis"

* item[=].item[+].linkId = "digestive-organs.no-complaints"
// * item[=].item[=].text = "Kaebused hetkel puuduvad"
* item[=].item[=].answer.valueBoolean = false

* item[=].item[+].linkId = "digestive-organs.liver-disease"
// * item[=].item[=].text = "Maksahaigused"
* item[=].item[=].answer.valueBoolean = true

* item[=].item[=].answer.item[0].linkId = "digestive-organs.liver-disease.specification"
// * item[=].item[=].answer.item[=].text = "Täpsustus"
* item[=].item[=].answer.item[=].answer.valueString = "Alkoholi liigtarvitamisest tingitud maksakahjustus"

* item[=].item[+].linkId = "digestive-organs.gallstones"
// * item[=].item[=].text = "Sapikivid"
* item[=].item[=].answer.valueBoolean = true

* item[=].item[=].answer.item[0].linkId = "digestive-organs.gallstones.specification"
// * item[=].item[=].answer.item[=].text = "Täpsustus"
* item[=].item[=].answer.item[=].answer.valueString = "Soola liigtarvitamisest ja vähese vee joomisest sapikivid"

* item[=].item[+].linkId = "digestive-organs.gastric-duodenal-ulcers"
// * item[=].item[=].text = "Mao- ja kaksteistsõrmiksoole haavandid"
* item[=].item[=].answer.valueBoolean = false

* item[=].item[+].linkId = "digestive-organs.colitis-crohns-disease"
// * item[=].item[=].text = "Haavandiline koliit või Crohni tõbi"
* item[=].item[=].answer.valueBoolean = false

* item[=].item[+].linkId = "digestive-organs.other-disease-condition-symptom"
// * item[=].item[=].text = "Muu haigus/seisund/sümptom (palun täpsustage)"
* item[=].item[=].answer.valueBoolean = false

* item[+].linkId = "urogenital-system"
// * item[=].text = "Kuse- ja suguelundid"

// * item[=].item[0].linkId = "urogenital-system.diagnoses-group"
// * item[=].item[=].text = "Varasemad diagnoosid"

* item[=].item[0].linkId = "urogenital-system.previous-diagnosis"
// * item[=].item[=].text = "Varasem diagnoos"

* item[=].item[=].item[0].linkId = "urogenital-system.previous-diagnosis.diagnosis"
// * item[=].item[=].item[=].text = "Diagnoos"
* item[=].item[=].item[=].answer.valueCoding.system = "https://fhir.ee/CodeSystem/rhk10"
* item[=].item[=].item[=].answer.valueCoding.code = #N15.0
// * item[=].item[=].item[=].answer.valueCoding.display = "Balkani nefropaatia"

* item[=].item[=].item[+].linkId = "urogenital-system.previous-diagnosis.written-diagnosis"
// * item[=].item[=].item[=].text = "Sõnaline diagnoos"
* item[=].item[=].item[=].answer.valueString = "Neerupuudulikkus (Albaanias diagnoositud)"

* item[=].item[=].item[+].linkId = "urogenital-system.previous-diagnosis.source-reference"
// * item[=].item[=].item[=].text = "Allika viide"
* item[=].item[=].item[=].answer.valueReference.identifier.system = "urn:oid:1.3.6.1.4.1.28284.6.1.1.5.11"
* item[=].item[=].item[=].answer.valueReference.identifier.value = "123456789"
* item[=].item[=].item[=].answer.valueReference.display = "Ambulatoorne epikriis"

* item[=].item[+].linkId = "urogenital-system.no-complaints"
// * item[=].item[=].text = "Kaebused hetkel puuduvad"
* item[=].item[=].answer.valueBoolean = true

* item[+].linkId = "blood-problems"
// * item[=].text = "Verehaigused"

// * item[=].item[0].linkId = "blood-problems.diagnoses-group"
// * item[=].item[=].text = "Varasemad diagnoosid"

* item[=].item[0].linkId = "blood-problems.previous-diagnosis"
// * item[=].item[=].text = "Varasem diagnoos"

* item[=].item[=].item[0].linkId = "blood-problems.previous-diagnosis.diagnosis"
// * item[=].item[=].item[=].text = "Diagnoos"
* item[=].item[=].item[=].answer.valueCoding.system = "https://fhir.ee/CodeSystem/rhk10"
* item[=].item[=].item[=].answer.valueCoding.code = #D81.9
// * item[=].item[=].item[=].answer.valueCoding.display = "Täpsustamata kombineeritud immuunpuudulikkus"

* item[=].item[=].item[+].linkId = "blood-problems.previous-diagnosis.source-reference"
// * item[=].item[=].item[=].text = "Allika viide"
* item[=].item[=].item[=].answer.valueReference.identifier.system = "urn:oid:1.3.6.1.4.1.28284.6.1.1.5.11"
* item[=].item[=].item[=].answer.valueReference.identifier.value = "123456789"
// * item[=].item[=].item[=].answer.valueReference.display = "Ambulatoorne epikriis"

* item[=].item[+].linkId = "blood-problems.no-complaints"
// * item[=].item[=].text = "Kaebused hetkel puuduvad"
* item[=].item[=].answer.valueBoolean = true

* item[+].linkId = "medical-devices"
// * item[=].text = "Kasutan järgmisi meditsiiniseadmeid/abivahendeid"

* item[=].item[0].linkId = "medical-devices.no-devices"
// * item[=].item[=].text = "Ei kasuta"
* item[=].item[=].answer.valueBoolean = false

* item[=].item[+].linkId = "medical-devices.glasses"
// * item[=].item[=].text = "Prillid"
* item[=].item[=].answer.valueBoolean = true

* item[=].item[=].answer.item[0].linkId = "medical-devices.glasses.specification"
// * item[=].item[=].answer.item[=].text = "Täpsutus"
* item[=].item[=].answer.item[=].answer.valueString = "Kasutan lugemiseks prille"

* item[=].item[+].linkId = "medical-devices.contact-lenses"
// * item[=].item[=].text = "Kontaktläätsed"
* item[=].item[=].answer.valueBoolean = false

* item[=].item[+].linkId = "medical-devices.hearing-aid"
// * item[=].item[=].text = "Kuuldeaparaat/kohleaarimplantaat"
* item[=].item[=].answer.valueBoolean = false

* item[=].item[+].linkId = "medical-devices.arm-prosthesis"
// * item[=].item[=].text = "Käeprotees"
* item[=].item[=].answer.valueBoolean = false

* item[=].item[+].linkId = "medical-devices.leg-prosthesis"
// * item[=].item[=].text = "Jalaprotees"
* item[=].item[=].answer.valueBoolean = false

* item[=].item[+].linkId = "medical-devices.mobility-device"
// * item[=].item[=].text = "Liikumise abivahend"
* item[=].item[=].answer.valueBoolean = false

* item[=].item[+].linkId = "medical-devices.cpap"
// * item[=].item[=].text = "Positiivrõhuaparaat (CPAP) või mitteinvasiivse ventilatsiooni seade"
* item[=].item[=].answer.valueBoolean = true

* item[=].item[+].linkId = "medical-devices.mandibular-splint"
// * item[=].item[=].text = "Intraoraalne uneapnoe seade"
* item[=].item[=].answer.valueBoolean = false

* item[=].item[+].linkId = "medical-devices.other-device"
// * item[=].item[=].text = "Muu abivahend"
* item[=].item[=].answer.valueBoolean = false

* item[+].linkId = "sleep"
// * item[=].text = "Uni"

// * item[=].item[0].linkId = "sleep.diagnoses-group"
// * item[=].item[=].text = "Varasemad diagnoosid"

* item[=].item[0].linkId = "sleep.previous-diagnosis"
// * item[=].item[=].text = "Varasem diagnoos"

* item[=].item[=].item[0].linkId = "sleep.previous-diagnosis.diagnosis"
// * item[=].item[=].item[=].text = "Diagnoos"
* item[=].item[=].item[=].answer.valueCoding.system = "https://fhir.ee/CodeSystem/rhk10"
* item[=].item[=].item[=].answer.valueCoding.code = #G47.4
// * item[=].item[=].item[=].answer.valueCoding.display = "Narkolepsia ja katapleksia"

* item[=].item[=].item[+].linkId = "sleep.previous-diagnosis.written-diagnosis"
// * item[=].item[=].item[=].text = "Sõnaline diagnoos"
* item[=].item[=].item[=].answer.valueString = "Vajun igapäevategevusi tehes lihtsasti unne"

* item[=].item[=].item[+].linkId = "sleep.previous-diagnosis.source-reference"
// * item[=].item[=].item[=].text = "Allika viide"
* item[=].item[=].item[=].answer.valueReference.identifier.system = "urn:oid:1.3.6.1.4.1.28284.6.1.1.5.11"
* item[=].item[=].item[=].answer.valueReference.identifier.value = "123456789"
* item[=].item[=].item[=].answer.valueReference.display = "Ambulatoorne epikriis"

* item[=].item[+].linkId = "sleep.loud-snoring"
// * item[=].item[=].text = "Kas Te norskate valjult (valjemini kui tavaline kõne, või Teie norskamist on kosta kõrvalruumi ka siis, kui magamistoa uks on suletud)?"
* item[=].item[=].answer.valueBoolean = true

* item[=].item[=].answer.item[0].linkId = "sleep.loud-snoring.specification"
// * item[=].item[=].answer.item[=].text = "Täpsustus"
* item[=].item[=].answer.item[=].answer.valueString = "Äratan pidevalt elukaaslase üles norskamisega"

* item[=].item[+].linkId = "sleep.fatigue"
// * item[=].item[=].text = "Kas Te tunnete end sageli mitteväljapuhanuna, väsinuna või unisena päevasel ajal?"
* item[=].item[=].answer.valueBoolean = true

* item[=].item[=].answer.item[0].linkId = "sleep.fatigue.specification"
// * item[=].item[=].answer.item[=].text = "Täpsustus"
* item[=].item[=].answer.item[=].answer.valueString = "Ebakvaliteetsest unest ja norskamisest tingituna olen ka hommikul väsinud"

* item[=].item[+].linkId = "sleep.breath-stop-sleep"
// * item[=].item[=].text = "Kas Teil on täheldatud uneaegseid hingamisseisakuid?"
* item[=].item[=].answer.valueBoolean = false

