Instance: ee-health-declaration-example
InstanceOf: EEHealthDeclaration
Description: "Näidis maksimaalse andmekoosseisuga tervisedeklaratsioonist (töötervishoid)."
Usage: #example

* extension[categories].extension[category].valueCoding = $HDC#military-service
* extension[categories].extension[effectivePeriod].valuePeriod.start = "2025-01-16"
* extension[categories].extension[effectivePeriod].valuePeriod.end = "2025-06-16"

* extension[categories][1].extension[category].valueCoding = $HDC#driver-group-I
* extension[categories][1].extension[effectivePeriod].valuePeriod.start = "2025-01-16"
* extension[categories][1].extension[effectivePeriod].valuePeriod.end = "2025-03-16"

* identifier.system = "http://example.org/fhir/identifiers"
* identifier.value = "1234567"
* language = #et-EE
* questionnaire = "https://fhir.ee/qre/Questionnaire-health-declaration|1.0.0"
* status = #completed
* subject = Reference(Questionnaire-patient)
* authored =  2024-01-01
* author = Reference(Questionnaire-patient)

* item[0].linkId = "category"
* item[=].text = "Kasutusala"
* item[=].answer[+].valueCoding = $HDC#military-service "Kaitseväeteenistuse tervisekontroll"
* item[=].answer[+].valueCoding = $HDC#driver-group-I "I grupi mootorsõidukijuhi tervisekontroll"

* item[+].linkId = "patient-gender"
* item[=].text = "Sugu"
* item[=].answer.valueCoding.system = "http://hl7.org/fhir/administrative-gender"
* item[=].answer.valueCoding.code = #male
* item[=].answer.valueCoding.display = "Male"

* item[+].linkId = "lifestyle"
* item[=].text = "Elustiil"

* item[=].item[0].linkId = "lifestyle.alcohol"
* item[=].item[=].text = "Kas te tarbite alkoholi?"
* item[=].item[=].answer.valueBoolean = true

* item[=].item[=].answer.item[0].linkId = "lifestyle.alcohol.alcohol-units"
* item[=].item[=].answer.item[=].text =  "Mitu ühikut nädalas? (1 ühik = 40 ml 40% kanget alkoholi või 120 ml 12% veini või 250 ml 5,2% õlut)"
* item[=].item[=].answer.item[=].answer.valueDecimal =  3.4

* item[=].item[+].linkId = "lifestyle.smoking"
* item[=].item[=].text = "Kas te suitsetate?"
* item[=].item[=].answer.valueBoolean = true

* item[=].item[=].answer.item[0].linkId = "lifestyle.smoking.smoking-amount"
* item[=].item[=].answer.item[=].text =  "Mitu sigaretti päevas?"
* item[=].item[=].answer.item[=].answer.valueInteger = 20

* item[=].item[=].answer.item[+].linkId = "lifestyle.smoking.smoking-period"
* item[=].item[=].answer.item[=].text =  "Mitu aastat olete järjest suitsetanud?"
* item[=].item[=].answer.item[=].answer.valueDecimal = 45.0

* item[=].item[+].linkId = "lifestyle.narcotics"
* item[=].item[=].text = "Kas tarvitate narkootilisi/psühhotroopseid aineid?"
* item[=].item[=].answer.valueBoolean = true

* item[=].item[=].answer.item[0].linkId = "lifestyle.narcotics.narcotics-frequency"
* item[=].item[=].answer.item[=].text =  "Kirjeldage, kui sageli"
* item[=].item[=].answer.item[=].answer.valueString = "3x nädalas. Narkootilised valuvaigistid kroonilise valu vastu (opiaadid)"

* item[=].item[+].linkId = "lifestyle.medication"
* item[=].item[=].text = "Kas kasutate ravimeid, mis võivad Teie arvates mõjutada Teie keskendumisvõimet ja koordinatsiooni?"
* item[=].item[=].answer.valueBoolean = true

* item[=].item[=].answer.item[0].linkId = "lifestyle.medication.specification"
* item[=].item[=].answer.item[=].text =  "Täpsustus"
* item[=].item[=].answer.item[=].answer.valueString = "Kodeiin ja muud opioidid"

* item[+].linkId = "work-environment"
* item[=].text = "Töökeskkond"

* item[=].item[0].linkId = "work-environment.work-restrictions"
* item[=].item[=].text = "Kas Teile on tervisekontrolli põhjal varem seatud tööpiiranguid? Kui jah, mille tõttu?"
* item[=].item[=].answer.valueBoolean = true

* item[=].item[=].answer.item[0].linkId = "work-environment.work-restrictions.specification"
* item[=].item[=].answer.item[=].text =  "Täpsustus"
* item[=].item[=].answer.item[=].answer.valueString =  "Psühholoogilise stressi tõttu takistatud tööd"

* item[=].item[+].linkId = "work-environment.work-health-problems"
* item[=].item[=].text = "Kas Teil esineb või on esinenud tervisehäireid, mida seostate oma tööülesannete täitmise või töökeskkonnaga?"
* item[=].item[=].answer.valueBoolean = true

* item[=].item[=].answer.item[0].linkId = "work-environment.work-health-problems.specification"
* item[=].item[=].answer.item[=].text =  "Täpsustus"
* item[=].item[=].answer.item[=].answer.valueString =  "Hingamisraskused tingitud töökeskkonnast"

* item[=].item[+].linkId = "work-environment.occupational-disease"
* item[=].item[=].text = "Kas Teil on diagnoositud kutsehaigus?"
* item[=].item[=].answer.valueBoolean = true

* item[=].item[+].linkId = "work-environment.work-related-disease"
* item[=].item[=].text = "Kas Teil on diagnoositud tööst põhjustatud haigus?"
* item[=].item[=].answer.valueBoolean = false

* item[=].item[+].linkId = "work-environment.ppe-problems"
* item[=].item[=].text = "Kas tööl kasutatavad isikukaitsevahendid põhjustavad Teile terviseprobleeme?"
* item[=].item[=].answer.valueBoolean = true

* item[=].item[=].answer.item[0].linkId = "work-environment.ppe-problems.specification"
* item[=].item[=].answer.item[=].text =  "Täpsustus"
* item[=].item[=].answer.item[=].answer.valueString =  "Kiivri kandmine tekitab peavalu"

* item[+].linkId = "allergies"
* item[=].text = "Allergiad"

* item[=].item[0].linkId = "allergies.no-complaints"
* item[=].item[=].text = "Kaebused hetkel puuduvad"
* item[=].item[=].answer.valueBoolean = true

* item[+].linkId = "mental-health"
* item[=].text = "Psüühika"

// * item[=].item[0].linkId = "mental-health.diagnoses-group"
// * item[=].item[=].text = "Varasemad diagnoosid"

* item[=].item[0].linkId = "mental-health.previous-diagnosis"
* item[=].item[=].text = "Varasem diagnoos"

* item[=].item[=].item[0].linkId = "mental-health.previous-diagnosis.diagnosis"
* item[=].item[=].item[=].text = "Diagnoos"
* item[=].item[=].item[=].answer.valueCoding.system = "https://fhir.ee/ValueSet/td-psyyhika"
* item[=].item[=].item[=].answer.valueCoding.code = #F61.0
* item[=].item[=].item[=].answer.valueCoding.display = "Segatüüpi isiksushäired"

* item[=].item[=].item[+].linkId = "mental-health.previous-diagnosis.source-reference"
* item[=].item[=].item[=].text = "Allika viide"
* item[=].item[=].item[=].answer.valueReference.identifier.system = "urn:oid:1.3.6.1.4.1.28284.6.1.1.5.11"
* item[=].item[=].item[=].answer.valueReference.identifier.value = "123456789"
* item[=].item[=].item[=].answer.valueReference.display = "Ambulatoorne epikriis"

* item[=].item[+].linkId = "mental-health.previous-diagnosis"
* item[=].item[=].text = "Varasem diagnoos"

* item[=].item[=].item[0].linkId = "mental-health.previous-diagnosis.diagnosis"
* item[=].item[=].item[=].text = "Diagnoos"
* item[=].item[=].item[=].answer.valueCoding.system = "https://fhir.ee/ValueSet/td-psyyhika"
* item[=].item[=].item[=].answer.valueCoding.code = #R45.4
* item[=].item[=].item[=].answer.valueCoding.display = "Ärrituvus ja viha"

* item[=].item[=].item[+].linkId = "mental-health.previous-diagnosis.written-diagnosis"
* item[=].item[=].item[=].text = "Sõnaline diagnoos"
* item[=].item[=].item[=].answer.valueString = "Liikluses muutun kergesti ärritatavaks"

* item[=].item[=].item[+].linkId = "mental-health.previous-diagnosis.source-reference"
* item[=].item[=].item[=].text = "Allika viide"
* item[=].item[=].item[=].answer.valueReference.identifier.system = "urn:oid:1.3.6.1.4.1.28284.6.1.1.5.11"
* item[=].item[=].item[=].answer.valueReference.identifier.value = "123456789"
* item[=].item[=].item[=].answer.valueReference.display = "Ambulatoorne epikriis"

* item[=].item[+].linkId = "mental-health.no-complaints"
* item[=].item[=].text = "Kaebused hetkel puuduvad"
* item[=].item[=].answer.valueBoolean = false

* item[=].item[+].linkId = "mental-health.depression"
* item[=].item[=].text = "Depressioon"
* item[=].item[=].answer.valueBoolean = true

* item[=].item[=].answer.item[0].linkId = "mental-health.depression.specification"
* item[=].item[=].answer.item[=].text = "Täpsustus"
* item[=].item[=].answer.item[=].answer.valueString = "Pidev apaatsus ja süvenev meeleolulangus"

* item[=].item[+].linkId = "mental-health.schizophrenia"
* item[=].item[=].text = "Skisofreenia"
* item[=].item[=].answer.valueBoolean = false

* item[=].item[+].linkId = "mental-health.fear-working-alone"
* item[=].item[=].text = "Kartus töötada üksinda"
* item[=].item[=].answer.valueBoolean = false

* item[=].item[+].linkId = "mental-health.fear-closed-spaces"
* item[=].item[=].text = "Hirm suletud ruumi ees"
* item[=].item[=].answer.valueBoolean = false

* item[=].item[+].linkId = "mental-health.fear-heights"
* item[=].item[=].text = "Kõrgusekartus"
* item[=].item[=].answer.valueBoolean = false

* item[=].item[+].linkId = "mental-health.other-disease-condition-symptom"
* item[=].item[=].text = "Muu haigus/seisund/sümptom (palun täpsustage)"
* item[=].item[=].answer.valueBoolean = true

* item[=].item[=].item[0].linkId = "mental-health.other-disease-condition-symptom.specification"
* item[=].item[=].item[=].text = "Täpsustus"
* item[=].item[=].item[=].answer.valueString = "Generaliseerunud äravushoog (1x kuus)"


* item[+].linkId = "nervous-system"
* item[=].text = "Närvisüsteem"

// * item[=].item[0].linkId = "nervous-system.diagnoses-group"
// * item[=].item[=].text = "Varasemad diagnoosid"

* item[=].item[0].linkId = "nervous-system.previous-diagnosis"
* item[=].item[=].text = "Varasem diagnoos"

* item[=].item[=].item[0].linkId = "nervous-system.previous-diagnosis.diagnosis"
* item[=].item[=].item[=].text = "Diagnoos"
* item[=].item[=].item[=].answer.valueCoding.system = "https://fhir.ee/ValueSet/td-narvisusteem"
* item[=].item[=].item[=].answer.valueCoding.code = #G56.4
* item[=].item[=].item[=].answer.valueCoding.display = "Kausalgia"

* item[=].item[=].item[+].linkId = "nervous-system.previous-diagnosis.source-reference"
* item[=].item[=].item[=].text = "Allika viide"
* item[=].item[=].item[=].answer.valueReference.identifier.system = "urn:oid:1.3.6.1.4.1.28284.6.1.1.5.11"
* item[=].item[=].item[=].answer.valueReference.identifier.value = "123456789"
* item[=].item[=].item[=].answer.valueReference.display = "Ambulatoorne epikriis"

* item[=].item[+].linkId = "nervous-system.previous-diagnosis"
* item[=].item[=].text = "Varasem diagnoos"

* item[=].item[=].item[0].linkId = "nervous-system.previous-diagnosis.diagnosis"
* item[=].item[=].item[=].text = "Diagnoos"
* item[=].item[=].item[=].answer.valueCoding.system = "https://fhir.ee/ValueSet/td-narvisusteem"
* item[=].item[=].item[=].answer.valueCoding.code = #G56.0
* item[=].item[=].item[=].answer.valueCoding.display = "Karpaaltunneli sündroom"

* item[=].item[=].item[+].linkId = "nervous-system.previous-diagnosis.written-diagnosis"
* item[=].item[=].item[=].text = "Sõnaline diagnoos"
* item[=].item[=].item[=].answer.valueString = "Arvutis trükkimine ja kirjutamine muutub valulikuks mingil ajahetkel"

* item[=].item[=].item[+].linkId = "nervous-system.previous-diagnosis.source-reference"
* item[=].item[=].item[=].text = "Allika viide"
* item[=].item[=].item[=].answer.valueReference.identifier.system = "urn:oid:1.3.6.1.4.1.28284.6.1.1.5.11"
* item[=].item[=].item[=].answer.valueReference.identifier.value = "123456789"
* item[=].item[=].item[=].answer.valueReference.display = "Ambulatoorne epikriis"

* item[=].item[+].linkId = "nervous-system.no-complaints"
* item[=].item[=].text = "Kaebused hetkel puuduvad"
* item[=].item[=].answer.valueBoolean = false

* item[=].item[+].linkId = "nervous-system.syncope"
* item[=].item[=].text = "Teadvuse kaotuse hood"
* item[=].item[=].answer.valueBoolean = true

* item[=].item[=].item[0].linkId = "nervous-system.syncope.specification"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].answer.valueString = "aeg-ajalt minestan"

* item[=].item[+].linkId = "nervous-system.seizures"
* item[=].item[=].text = "Krambihood (epilepsia ehk langetõbi)"
* item[=].item[=].answer.valueBoolean = true

* item[=].item[=].item[0].linkId = "nervous-system.seizures.specification"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].answer.valueString = "Vilkuv valgustus tekitab epilepsia hoogu"

* item[=].item[+].linkId = "nervous-system.balance-disorder"
* item[=].item[=].text = "Tasakaaluhäired (sh Meniere'i tõbi)"
* item[=].item[=].answer.valueBoolean = true

* item[=].item[=].item[0].linkId = "nervous-system.balance-disorder.specification"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].answer.valueString = "Meniere'i tõbi diagnoositud"

* item[=].item[+].linkId = "nervous-system.stroke"
* item[=].item[=].text = "Ajuinfarkt või ajuinsult"
* item[=].item[=].answer.valueBoolean = true

* item[=].item[=].item[0].linkId = "nervous-system.stroke.specification"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].answer.valueString = "Läbipõetud hemoraagiline ajuinfarkt"

* item[=].item[+].linkId = "nervous-system.seasickness"
* item[=].item[=].text = "Merehaigus"
* item[=].item[=].answer.valueBoolean = true

* item[=].item[=].item[0].linkId = "nervous-system.seasickness.specification"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].answer.valueString = "Iiveldus merel sõites"

* item[=].item[+].linkId = "nervous-system.coordination-disorder"
* item[=].item[=].text = "Koordinatsioonihäired (sh. kätega seonduvad)"
* item[=].item[=].answer.valueBoolean = true

* item[=].item[=].item[0].linkId = "nervous-system.coordination-disorder.specification"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].answer.valueString = "Treemor kätes tekitab raskuseid koordinatsiooniga"

* item[=].item[+].linkId = "nervous-system.other-disease-condition-symptom"
* item[=].item[=].text = "Muu haigus/seisund/sümptom (palun täpsustage)"
* item[=].item[=].answer.valueBoolean = true

* item[=].item[=].item[0].linkId = "nervous-system.other-disease-condition-symptom.specification"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].answer.valueString = "Valu alaseljas füüsilise koormuse ajal"

//jätkata siit
* item[+].linkId = "eyes-vision"
* item[=].text = "Silmad ja nägemine"

// * item[=].item[0].linkId = "eyes-vision.diagnoses-group"
// * item[=].item[=].text = "Varasemad diagnoosid"

* item[=].item[0].linkId = "eyes-vision.previous-diagnosis"
* item[=].item[=].text = "Varasem diagnoos"

* item[=].item[=].item[0].linkId = "eyes-vision.previous-diagnosis.diagnosis"
* item[=].item[=].item[=].text = "Diagnoos"
* item[=].item[=].item[=].answer.valueCoding.system = "https://fhir.ee/ValueSet/td-silmad-ja-nagemine"
* item[=].item[=].item[=].answer.valueCoding.code = #H27.1
* item[=].item[=].item[=].answer.valueCoding.display = "Läätse väärasetsus"

* item[=].item[=].item[+].linkId = "eyes-vision.previous-diagnosis.source-reference"
* item[=].item[=].item[=].text = "Allika viide"
* item[=].item[=].item[=].answer.valueReference.identifier.system = "urn:oid:1.3.6.1.4.1.28284.6.1.1.5.11"
* item[=].item[=].item[=].answer.valueReference.identifier.value = "123456789"
* item[=].item[=].item[=].answer.valueReference.display = "Ambulatoorne epikriis"

* item[=].item[+].linkId = "eyes-vision.no-complaints"
* item[=].item[=].text = "Kaebused hetkel puuduvad"
* item[=].item[=].answer.valueBoolean = false

* item[=].item[+].linkId = "eyes-vision.myopia"
* item[=].item[=].text = "Lühinägevus"
* item[=].item[=].answer.valueBoolean = true

* item[=].item[=].item[0].linkId = "eyes-vision.myopia.specification"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].answer.valueString = "Paremat silmast lühinägelik"

* item[=].item[+].linkId = "eyes-vision.hyperopia"
* item[=].item[=].text = "Kaugnägelikkus (hüperoopia)"
* item[=].item[=].answer.valueBoolean = false

* item[=].item[+].linkId = "eyes-vision.limited-view"
* item[=].item[=].text = "Kas üles-alla või külgedele vaadates esineb vaatevälja piiratust?"
* item[=].item[=].answer.valueBoolean = true

* item[=].item[=].item[0].linkId = "eyes-vision.limited-view.specification"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].answer.valueString = "külgedel esineb piiratus"

* item[=].item[+].linkId = "eyes-vision.double-vision"
* item[=].item[=].text = "Kahelinägemine"
* item[=].item[=].answer.valueBoolean = false

* item[=].item[+].linkId = "eyes-vision.colour-vision-disorder"
* item[=].item[=].text = "Värvusmeele häired"
* item[=].item[=].answer.valueBoolean = true

* item[=].item[=].item[0].linkId = "eyes-vision.colour-vision-disorder.specification"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].answer.valueString = "Osaline daltonism"

* item[=].item[+].linkId = "eyes-vision.other-disease-condition-symptom"
* item[=].item[=].text = "Muu haigus/seisund/sümptom (palun täpsustage)"
* item[=].item[=].answer.valueBoolean = true

* item[=].item[=].item[0].linkId = "eyes-vision.other-disease-condition-symptom.specification"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].answer.valueString = "Ise-diagnoositud glaukoom"

* item[+].linkId = "ear-nose-throat"
* item[=].text = "Kõrv, nina, neel"

// * item[=].item[0].linkId = "ear-nose-throat.diagnoses-group"
// * item[=].item[=].text = "Varasemad diagnoosid"

* item[=].item[0].linkId = "ear-nose-throat.previous-diagnosis"
* item[=].item[=].text = "Varasem diagnoos"

* item[=].item[=].item[0].linkId = "ear-nose-throat.previous-diagnosis.diagnosis"
* item[=].item[=].item[=].text = "Diagnoos"
* item[=].item[=].item[=].answer.valueCoding.system = "https://fhir.ee/ValueSet/td-korv-nina-neel"
* item[=].item[=].item[=].answer.valueCoding.code = #J38.5
* item[=].item[=].item[=].answer.valueCoding.display = "Kõrispasm"

* item[=].item[=].item[+].linkId = "ear-nose-throat.previous-diagnosis.source-reference"
* item[=].item[=].item[=].text = "Allika viide"
* item[=].item[=].item[=].answer.valueReference.identifier.system = "urn:oid:1.3.6.1.4.1.28284.6.1.1.5.11"
* item[=].item[=].item[=].answer.valueReference.identifier.value = "123456789"
* item[=].item[=].item[=].answer.valueReference.display = "Ambulatoorne epikriis"

* item[=].item[+].linkId = "ear-nose-throat.no-complaints"
* item[=].item[=].text = "Kaebused hetkel puuduvad"
* item[=].item[=].answer.valueBoolean = true

* item[+].linkId = "respiratory-system"
* item[=].text = "Hingamissüsteem"

// * item[=].item[0].linkId = "respiratory-system.diagnoses-group"
// * item[=].item[=].text = "Varasemad diagnoosid"

* item[=].item[0].linkId = "respiratory-system.previous-diagnosis"
* item[=].item[=].text = "Varasem diagnoos"

* item[=].item[=].item[0].linkId = "respiratory-system.previous-diagnosis.diagnosis"
* item[=].item[=].item[=].text = "Diagnoos"
* item[=].item[=].item[=].answer.valueCoding.system = "https://fhir.ee/ValueSet/td-hingamissusteem"
* item[=].item[=].item[=].answer.valueCoding.code = #J65
* item[=].item[=].item[=].answer.valueCoding.display = "Pneumokonioos koos tuberkuloosiga"

* item[=].item[=].item[+].linkId = "respiratory-system.previous-diagnosis.written-diagnosis"
* item[=].item[=].item[=].text = "Sõnaline diagnoos"
* item[=].item[=].item[=].answer.valueString = "Krooniline kopsutolmustus"

* item[=].item[=].item[+].linkId = "respiratory-system.previous-diagnosis.source-reference"
* item[=].item[=].item[=].text = "Allika viide"
* item[=].item[=].item[=].answer.valueReference.identifier.system = "urn:oid:1.3.6.1.4.1.28284.6.1.1.5.11"
* item[=].item[=].item[=].answer.valueReference.identifier.value = "123456789"
* item[=].item[=].item[=].answer.valueReference.display = "Ambulatoorne epikriis"

* item[=].item[+].linkId = "respiratory-system.no-complaints"
* item[=].item[=].text = "Kaebused hetkel puuduvad"
* item[=].item[=].answer.valueBoolean = false

* item[=].item[+].linkId = "respiratory-system.asthma"
* item[=].item[=].text = "Astma"
* item[=].item[=].answer.valueBoolean = false

* item[=].item[+].linkId = "respiratory-system.copd"
* item[=].item[=].text = "Krooniline obstruktiivne kopsuhaigus ehk KOK"
* item[=].item[=].answer.valueBoolean = true

* item[=].item[=].item[0].linkId = "respiratory-system.copd.specification"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].answer.valueString = "hingamine füüsilisel koormusel raskendatud"

* item[=].item[+].linkId = "respiratory-system.other-disease-condition-symptom"
* item[=].item[=].text = "Muu haigus/seisund/sümptom (palun täpsustage)"
* item[=].item[=].answer.valueBoolean = true

* item[=].item[=].item[0].linkId = "respiratory-system.other-disease-condition-symptom.specification"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].answer.valueString = "Sügavalt hingamine krabisev hääl"

* item[=].item[+].linkId = "respiratory-system.sleep-apnoea"
* item[=].item[=].text = "Uneapnoe"
* item[=].item[=].answer.valueBoolean = true

* item[=].item[=].item[0].linkId = "respiratory-system.sleep-apnoea.specification"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].answer.valueString = "Norskan (kasutan ka CPAP maski)"

* item[+].linkId = "metabolic-disorder"
* item[=].text = "Ainevahetuse häired (sh kilpnäärme haigused)"

// * item[=].item[0].linkId = "metabolic-disorder.diagnoses-group"
// * item[=].item[=].text = "Varasemad diagnoosid"

* item[=].item[0].linkId = "metabolic-disorder.previous-diagnosis"
* item[=].item[=].text = "Varasem diagnoos"

* item[=].item[=].item[0].linkId = "metabolic-disorder.previous-diagnosis.diagnosis"
* item[=].item[=].item[=].text = "Diagnoos"
* item[=].item[=].item[=].answer.valueCoding.system = "https://fhir.ee/ValueSet/td-ainevahetuse-haired"
* item[=].item[=].item[=].answer.valueCoding.code = #E11.9
* item[=].item[=].item[=].answer.valueCoding.display = "Insuliinisõltumatu suhkurtõbi tüsistusteta"

* item[=].item[=].item[+].linkId = "metabolic-disorder.previous-diagnosis.written-diagnosis"
* item[=].item[=].item[=].text = "Sõnaline diagnoos"
* item[=].item[=].item[=].answer.valueString = "II tüüpi diabeet"

* item[=].item[=].item[+].linkId = "metabolic-disorder.previous-diagnosis.source-reference"
* item[=].item[=].item[=].text = "Allika viide"
* item[=].item[=].item[=].answer.valueReference.identifier.system = "urn:oid:1.3.6.1.4.1.28284.6.1.1.5.11"
* item[=].item[=].item[=].answer.valueReference.identifier.value = "123456789"
* item[=].item[=].item[=].answer.valueReference.display = "Ambulatoorne epikriis"

* item[=].item[+].linkId = "metabolic-disorder.no-complaints"
* item[=].item[=].text = "Kaebused hetkel puuduvad"
* item[=].item[=].answer.valueBoolean = false

* item[=].item[+].linkId = "metabolic-disorder.diabetes"
* item[=].item[=].text = "Suhkruhaigus"
* item[=].item[=].answer.valueBoolean = true

* item[=].item[=].item[0].linkId = "metabolic-disorder.diabetes.specification"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].answer.valueString = "II tüüpi diabeet"

* item[=].item[+].linkId = "metabolic-disorder.other-disease-condition-symptom"
* item[=].item[=].text = "Muu haigus/seisund/sümptom (palun täpsustage)"
* item[=].item[=].answer.valueBoolean = false

* item[+].linkId = "cardiovascular-system"
* item[=].text = "Süda ja veresoonkond"

// * item[=].item[0].linkId = "cardiovascular-system.diagnoses-group"
// * item[=].item[=].text = "Varasemad diagnoosid"

* item[=].item[0].linkId = "cardiovascular-system.previous-diagnosis"
* item[=].item[=].text = "Varasem diagnoos"

* item[=].item[=].item[0].linkId = "cardiovascular-system.previous-diagnosis.diagnosis"
* item[=].item[=].item[=].text = "Diagnoos"
* item[=].item[=].item[=].answer.valueCoding.system = "https://fhir.ee/ValueSet/td-suda-ja-veresoonkond"
* item[=].item[=].item[=].answer.valueCoding.code = #I25.2
* item[=].item[=].item[=].answer.valueCoding.display = "Varasem müokardiinfarkt"

* item[=].item[=].item[+].linkId = "cardiovascular-system.previous-diagnosis.written-diagnosis"
* item[=].item[=].item[=].text = "Sõnaline diagnoos"
* item[=].item[=].item[=].answer.valueString = "Pärgarterite 50% ummistus põhjustas MI"

* item[=].item[=].item[+].linkId = "cardiovascular-system.previous-diagnosis.source-reference"
* item[=].item[=].item[=].text = "Allika viide"
* item[=].item[=].item[=].answer.valueReference.identifier.system = "urn:oid:1.3.6.1.4.1.28284.6.1.1.5.11"
* item[=].item[=].item[=].answer.valueReference.identifier.value = "123456789"
* item[=].item[=].item[=].answer.valueReference.display = "Ambulatoorne epikriis"

* item[=].item[+].linkId = "cardiovascular-system.no-complaints"
* item[=].item[=].text = "Kaebused hetkel puuduvad"
* item[=].item[=].answer.valueBoolean = false

* item[=].item[+].linkId = "cardiovascular-system.chest-pain-activity"
* item[=].item[=].text = "Koormusega seonduv valu rinnus"
* item[=].item[=].answer.valueBoolean = true

* item[=].item[=].item[0].linkId = "cardiovascular-system.chest-pain-activity.specification"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].answer.valueString = "Süda hakkab puperdama füüsilisel koormusel"

* item[=].item[+].linkId = "cardiovascular-system.high-blood-pressure"
* item[=].item[=].text = "Kõrge vererõhk"
* item[=].item[=].answer.valueBoolean = false

* item[=].item[+].linkId = "cardiovascular-system.heart-attack"
* item[=].item[=].text = "Läbipõetud südameinfarkt"
* item[=].item[=].answer.valueBoolean = true

* item[=].item[=].item[0].linkId = "cardiovascular-system.heart-attack.specification"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].answer.valueString = "4 aastat tagasi põdesin läbi südame isheemitõvest tingitud infarkti"

* item[=].item[+].linkId = "cardiovascular-system.arrhythmia"
* item[=].item[=].text = "Südame rütmihäired"
* item[=].item[=].answer.valueBoolean = false

* item[=].item[+].linkId = "cardiovascular-system.angioplasty-stenting"
* item[=].item[=].text = "On tehtud südamesondeerimine või stentimine"
* item[=].item[=].answer.valueBoolean = true

* item[=].item[=].item[0].linkId = "cardiovascular-system.angioplasty-stenting.specification"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].answer.valueString = "Pärast põetud infarkti paigaldatud balloondilatatsiooni stent (reiearteri kaudu)"

* item[=].item[+].linkId = "cardiovascular-system.pacer"
* item[=].item[=].text = "On paigaldatud südamerütmur"
* item[=].item[=].answer.valueBoolean = false

* item[=].item[+].linkId = "cardiovascular-system.heart-surgery"
* item[=].item[=].text = "On tehtud südameoperatsioon"
* item[=].item[=].answer.valueBoolean = false

* item[=].item[+].linkId = "cardiovascular-system.other-disease-condition-symptom"
* item[=].item[=].text = "Muu haigus/seisund/sümptom (palun täpsustage)"
* item[=].item[=].answer.valueBoolean = false

* item[+].linkId = "bones-joints-muscles"
* item[=].text = "Luud, liigesed ja lihased"

// * item[=].item[0].linkId = "bones-joints-muscles.diagnoses-group"
// * item[=].item[=].text = "Varasemad diagnoosid"

* item[=].item[0].linkId = "bones-joints-muscles.previous-diagnosis"
* item[=].item[=].text = "Varasem diagnoos"

* item[=].item[=].item[0].linkId = "bones-joints-muscles.previous-diagnosis.diagnosis"
* item[=].item[=].item[=].text = "Diagnoos"
* item[=].item[=].item[=].answer.valueCoding.system = "https://fhir.ee/ValueSet/td-luud-liigesed-ja-lihased"
* item[=].item[=].item[=].answer.valueCoding.code = #M47
* item[=].item[=].item[=].answer.valueCoding.display = "Spondüloos e lülijäikus"

* item[=].item[=].item[+].linkId = "bones-joints-muscles.previous-diagnosis.written-diagnosis"
* item[=].item[=].item[=].text = "Sõnaline diagnoos"
* item[=].item[=].item[=].answer.valueString = "lülijäikus"

* item[=].item[=].item[+].linkId = "bones-joints-muscles.previous-diagnosis.source-reference"
* item[=].item[=].item[=].text = "Allika viide"
* item[=].item[=].item[=].answer.valueReference.identifier.system = "urn:oid:1.3.6.1.4.1.28284.6.1.1.5.11"
* item[=].item[=].item[=].answer.valueReference.identifier.value = "123456789"
* item[=].item[=].item[=].answer.valueReference.display = "Ambulatoorne epikriis"

* item[=].item[+].linkId = "bones-joints-muscles.no-complaints"
* item[=].item[=].text = "Kaebused hetkel puuduvad"
* item[=].item[=].answer.valueBoolean = false

* item[=].item[+].linkId = "bones-joints-muscles.joint-stiffness"
* item[=].item[=].text = "Liigesejäikus"
* item[=].item[=].answer.valueBoolean = true

* item[=].item[=].item[0].linkId = "bones-joints-muscles.joint-stiffness.specification"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].answer.valueString = "Hommikuti on kõik liigesed kanged"

* item[=].item[+].linkId = "bones-joints-muscles.limb-paralysis"
* item[=].item[=].text = "Jäseme osaline või täielik halvatus (palun täpsustage)"
* item[=].item[=].answer.valueBoolean = false

* item[=].item[+].linkId = "bones-joints-muscles.missing-limb"
* item[=].item[=].text = "Jäseme või selle osa puudumine (palun täpsustage)"
* item[=].item[=].answer.valueBoolean = false

* item[=].item[+].linkId = "bones-joints-muscles.tremor"
* item[=].item[=].text = "Käte värisemine (treemor)"
* item[=].item[=].answer.valueBoolean = false

* item[=].item[+].linkId = "bones-joints-muscles.joint-pain"
* item[=].item[=].text = "Liigesevalu"
* item[=].item[=].answer.valueBoolean = true

* item[=].item[=].item[0].linkId = "bones-joints-muscles.joint-pain.specification"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].answer.valueString = "Hommikuti on kõik liigesed valusad"

* item[=].item[+].linkId = "bones-joints-muscles.neck-pain"
* item[=].item[=].text = "Kaelavalu"
* item[=].item[=].answer.valueBoolean = false

* item[=].item[+].linkId = "bones-joints-muscles.shoulder-pain"
* item[=].item[=].text = "Õlavöötmevalu"
* item[=].item[=].answer.valueBoolean = false

* item[=].item[+].linkId = "bones-joints-muscles.lower-back-pain"
* item[=].item[=].text = "Alaseljavalu"
* item[=].item[=].answer.valueBoolean = false

* item[=].item[+].linkId = "bones-joints-muscles.other-disease-condition-symptom"
* item[=].item[=].text = "Muu haigus/seisund/sümptom (palun täpsustage)"
* item[=].item[=].answer.valueBoolean = false

* item[+].linkId = "infections"
* item[=].text = "Nakkushaigused"

// * item[=].item[0].linkId = "infections.diagnoses-group"
// * item[=].item[=].text = "Varasemad diagnoosid"

* item[=].item[0].linkId = "infections.previous-diagnosis"
* item[=].item[=].text = "Varasem diagnoos"

* item[=].item[=].item[0].linkId = "infections.previous-diagnosis.diagnosis"
* item[=].item[=].item[=].text = "Diagnoos"
* item[=].item[=].item[=].answer.valueCoding.system = "https://fhir.ee/ValueSet/td-nakkushaigused"
* item[=].item[=].item[=].answer.valueCoding.code = #A51.1
* item[=].item[=].item[=].answer.valueCoding.display = "Primaarne anaalsüüfilis"

* item[=].item[=].item[+].linkId = "infections.previous-diagnosis.source-reference"
* item[=].item[=].item[=].text = "Allika viide"
* item[=].item[=].item[=].answer.valueReference.identifier.system = "urn:oid:1.3.6.1.4.1.28284.6.1.1.5.11"
* item[=].item[=].item[=].answer.valueReference.identifier.value = "123456789"
* item[=].item[=].item[=].answer.valueReference.display = "Ambulatoorne epikriis"

* item[=].item[+].linkId = "infections.no-known-illness"
* item[=].item[=].text = "Teadaolevalt ei ole põdenud"
* item[=].item[=].answer.valueBoolean = true

* item[+].linkId = "other-chronic-disorders"
* item[=].text = "Muud kroonilised haigused, seisundid või sümptomid, mida eespool ei kirjeldatud"

* item[=].item[0].linkId = "other-chronic-disorders.none"
* item[=].item[=].text = "Puuduvad"
* item[=].item[=].answer.valueBoolean = true

* item[+].linkId = "previous-treatment"
* item[=].text = "Senine ravi"

* item[=].item[0].linkId = "previous-treatment.treatment-abroad"
* item[=].item[=].text = "Kas olete viimase 5 aasta jooksul saanud välismaal haiglaravi või käinud arsti vastuvõtul? Palun täpsustage millal, kus, ja millega seoses"
* item[=].item[=].answer.valueBoolean = true

* item[=].item[=].item[0].linkId = "previous-treatment.treatment-abroad.specification"
* item[=].item[=].item[=].text = "Täpsustus"
* item[=].item[=].item[=].answer.valueString = "Ostsin lätis paratsetamooli"

* item[=].item[+].linkId = "previous-treatment.regular-medication"
* item[=].item[=].text = "Regulaarsed ravimid"

* item[=].item[=].item[0].linkId = "previous-treatment.regular-medication.regular-medication-men"
* item[=].item[=].item[=].text = "Kas tarvitate regulaarselt mingeid ravimeid? Palun loetlege, milliseid"
// sellega on validatsiooni probleem: Constraint failed: qrs-1: 'Item cannot contain both item and answer' (defined in http://hl7.org/fhir/StructureDefinition/QuestionnaireResponse)
* item[=].item[=].item[=].answer.valueBoolean = true

* item[=].item[=].item[=].item[0].linkId = "previous-treatment.regular-medication.regular-medication-men.specification"
* item[=].item[=].item[=].item[=].text = "Täpsustus"
* item[=].item[=].item[=].item[=].answer.valueString = "Xymelin, beeta-blokaatorid, hjärtemagnyl (südame aspirin)"

* item[=].item[=].item[+].linkId = "previous-treatment.regular-medication.current-prescriptions"
* item[=].item[=].item[=].text = "Viimase 9 kuu jooksul välja kirjutatud retseptid"

// * item[=].item[=].item[=].item[0].linkId = "previous-treatment.regular-medication.current-prescriptions.prescription"
// * item[=].item[=].item[=].item[=].text = "Retsept"

* item[=].item[=].item[=].item[0].linkId = "previous-treatment.regular-medication.current-prescriptions.date"
* item[=].item[=].item[=].item[=].text = "Kuupäev"
* item[=].item[=].item[=].item[=].answer.valueDate = 2024-09-01

* item[=].item[=].item[=].item[+].linkId = "previous-treatment.regular-medication.current-prescriptions.atc"
* item[=].item[=].item[=].item[=].text = "ATC"
* item[=].item[=].item[=].item[=].answer.valueCoding.system = "https://fhir.ee/CodeSystem/atc-ee"
* item[=].item[=].item[=].item[=].answer.valueCoding.code = #G03BA03
* item[=].item[=].item[=].item[=].answer.valueCoding.display = "testosteroon"

* item[=].item[=].item[=].item[+].linkId = "previous-treatment.regular-medication.current-prescriptions.package"
* item[=].item[=].item[=].item[=].text = "Pakend"
* item[=].item[=].item[=].item[=].answer.valueCoding.system = "https://fhir.ee/CodeSystem/pakend" //Vale
* item[=].item[=].item[=].item[=].answer.valueCoding.code = #mingi_pakend
* item[=].item[=].item[=].item[=].answer.valueCoding.display = "mingi pakend"

* item[=].item[=].item[=].item[+].linkId = "previous-treatment.regular-medication.current-prescriptions.source-reference"
* item[=].item[=].item[=].item[=].text = "Allika viide"
* item[=].item[=].item[=].item[=].answer.valueReference.identifier.system = "urn:oid:1.3.6.1.4.1.28284.6.1.1.5.11"
* item[=].item[=].item[=].item[=].answer.valueReference.identifier.value = "123456789"
* item[=].item[=].item[=].item[=].answer.valueReference.display = "Ambulatoorne epikriis"

* item[=].item[+].linkId = "previous-treatment.hospitalization"
* item[=].item[=].text = "Kas olete viimase 5 aasta jooksul viibinud haiglaravil?"
* item[=].item[=].answer.valueBoolean = true

* item[=].item[=].item[0].linkId = "previous-treatment.hospitalization.specification"
* item[=].item[=].item[=].text = "Täpsustus"
* item[=].item[=].item[=].answer.valueString = "Kopsupõletikuga intensiivravil mõni aeg tagasi"

// * item[=].item[=].item[+].linkId = "previous-treatment.hospitalization.previous-hospitalization"
// * item[=].item[=].item[=].text = "Varasem haiglaravi"

* item[=].item[=].item[0].linkId = "previous-treatment.hospitalization.inpatient-case"
* item[=].item[=].item[=].text = "Statsionaarne haigusjuhtum"

* item[=].item[=].item[=].item[0].linkId = "previous-treatment.hospitalization.inpatient-case.from"
* item[=].item[=].item[=].item[=].text = "Alates"
* item[=].item[=].item[=].item[=].answer.valueDate = 2024-05-01

* item[=].item[=].item[=].item[+].linkId = "previous-treatment.hospitalization.inpatient-case.to"
* item[=].item[=].item[=].item[=].text = "Kuni"
* item[=].item[=].item[=].item[=].answer.valueDate = 2024-06-01

* item[=].item[=].item[=].item[+].linkId = "previous-treatment.hospitalization.inpatient-case.provider"
* item[=].item[=].item[=].item[=].text = "Tervishoiuasutus"
* item[=].item[=].item[=].item[=].answer.valueString = "Lääne-Tallinna Keskhaigla"

* item[=].item[=].item[=].item[+].linkId = "previous-treatment.hospitalization.inpatient-case.source-reference"
* item[=].item[=].item[=].item[=].text = "Allika viide"
* item[=].item[=].item[=].item[=].answer.valueReference.identifier.system = "urn:oid:1.3.6.1.4.1.28284.6.1.1.5.11"
* item[=].item[=].item[=].item[=].answer.valueReference.identifier.value = "123456789"
* item[=].item[=].item[=].item[=].answer.valueReference.display = "Ambulatoorne epikriis"

* item[=].item[+].linkId = "previous-treatment.surgeries"
* item[=].item[=].text = "Kas teid on viimase 5 aasta jooksul opereeritud? Palun täpsustage, millal, mille tõttu"
* item[=].item[=].answer.valueBoolean = true

* item[=].item[=].item[0].linkId = "previous-treatment.surgeries.specification"
* item[=].item[=].item[=].text = "Täpsustus"
* item[=].item[=].item[=].answer.valueString = "Avatud apendektoomia, vist oli 4 2 kuud tagasi. Põhjuseks akuutne pimesoole põletik"

// * item[=].item[=].item[+].linkId = "previous-treatment.surgeries.procedures"
// * item[=].item[=].item[=].text = "Teostatud protseduurid"

* item[=].item[=].item[+].linkId = "previous-treatment.surgeries.surgery"
* item[=].item[=].item[=].text = "Operatsioon"

* item[=].item[=].item[=].item[0].linkId = "previous-treatment.surgeries.surgery.surgery-date"
* item[=].item[=].item[=].item[=].text = "Kuupäev"
* item[=].item[=].item[=].item[=].answer.valueDate = 2024-11-20

* item[=].item[=].item[=].item[+].linkId = "previous-treatment.surgeries.surgery.code"
* item[=].item[=].item[=].item[=].text = "Operatsioon"
* item[=].item[=].item[=].item[=].answer.valueCoding.system = "https://fhir.ee/CodeSystem/ncsp"
* item[=].item[=].item[=].item[=].answer.valueCoding.code = #JEA01
* item[=].item[=].item[=].item[=].answer.valueCoding.display = "Laparoskoopiline apendektoomia"

* item[=].item[=].item[=].item[+].linkId = "previous-treatment.surgeries.surgery.surgery-add-code"
* item[=].item[=].item[=].item[=].text = "Operatsiooni lisakoodid"
* item[=].item[=].item[=].item[=].answer.valueCoding.system = "https://fhir.ee/CodeSystem/ncsp"
* item[=].item[=].item[=].item[=].answer.valueCoding.code = #JEW96
* item[=].item[=].item[=].item[=].answer.valueCoding.display = "Muu operatsioon apendiksil"

* item[=].item[=].item[=].item[+].linkId = "previous-treatment.surgeries.surgery.source-reference"
* item[=].item[=].item[=].item[=].text = "Allika viide"
* item[=].item[=].item[=].item[=].answer.valueReference.identifier.system = "urn:oid:1.3.6.1.4.1.28284.6.1.1.5.11"
* item[=].item[=].item[=].item[=].answer.valueReference.identifier.value = "123456789"
* item[=].item[=].item[=].item[=].answer.valueReference.display = "Ambulatoorne epikriis"

* item[+].linkId = "traumas"
* item[=].text = "Traumad"

// * item[=].item[0].linkId = "traumas.diagnoses-group"
// * item[=].item[=].text = "Varasemad diagnoosid"

* item[=].item[0].linkId = "traumas.previous-diagnosis"
* item[=].item[=].text = "Varasem diagnoos"

* item[=].item[=].item[0].linkId = "traumas.previous-diagnosis.diagnosis"
* item[=].item[=].item[=].text = "Diagnoos"
* item[=].item[=].item[=].answer.valueCoding.system = "https://fhir.ee/ValueSet/td-traumad"
* item[=].item[=].item[=].answer.valueCoding.code = #T63.3
* item[=].item[=].item[=].answer.valueCoding.display = "Amblikumürk"

* item[=].item[=].item[+].linkId = "traumas.previous-diagnosis.written-diagnosis"
* item[=].item[=].item[=].text = "Sõnaline diagnoos"
* item[=].item[=].item[=].answer.valueString = "Radioaktiivselt ämblikult sai hammustada"

* item[=].item[=].item[+].linkId = "traumas.previous-diagnosis.source-reference"
* item[=].item[=].item[=].text = "Allika viide"
* item[=].item[=].item[=].answer.valueReference.identifier.system = "urn:oid:1.3.6.1.4.1.28284.6.1.1.5.11"
* item[=].item[=].item[=].answer.valueReference.identifier.value = "123456789"
* item[=].item[=].item[=].answer.valueReference.display = "Ambulatoorne epikriis"

* item[=].item[+].linkId = "traumas.none"
* item[=].item[=].text = "Hetkel puuduvad"
* item[=].item[=].answer.valueBoolean = false

* item[=].item[+].linkId = "traumas.fractures"
* item[=].item[=].text = "Luumurrud (palun täpsustage, millised ja millal)"
* item[=].item[=].answer.valueBoolean = true

* item[=].item[=].item[0].linkId = "traumas.fractures.specification"
* item[=].item[=].item[=].text = "Täpsustus"
* item[=].item[=].item[=].answer.valueString = "Varbaluumurd (juhtus 3 nädalat tagasi)"

* item[=].item[+].linkId = "traumas.head-traumas"
* item[=].item[=].text = "Rasked peavigastused"
* item[=].item[=].answer.valueBoolean = false

* item[=].item[+].linkId = "traumas.other-injuries"
* item[=].item[=].text = "Muud olulised vigastused (palun täpsustage, millised ja millal)"
* item[=].item[=].answer.valueBoolean = false

* item[+].linkId = "skin-disorders"
* item[=].text = "Nahahaigused viimase 5 aasta jooksul: millal põdenud, milliseid?"

// * item[=].item[0].linkId = "skin-disorders.diagnoses-group"
// * item[=].item[=].text = "Varasemad diagnoosid"

* item[=].item[0].linkId = "skin-disorders.previous-diagnosis"
* item[=].item[=].text = "Varasem diagnoos"

* item[=].item[=].item[0].linkId = "skin-disorders.previous-diagnosis.diagnosis"
* item[=].item[=].item[=].text = "Diagnoos"
* item[=].item[=].item[=].answer.valueCoding.system = "https://fhir.ee/ValueSet/td-nahahaigused"
* item[=].item[=].item[=].answer.valueCoding.code = #L02.1
* item[=].item[=].item[=].answer.valueCoding.display = "Kaelanahaabstsess, -furunkul ja -karbunkul"

* item[=].item[=].item[+].linkId = "skin-disorders.previous-diagnosis.source-reference"
* item[=].item[=].item[=].text = "Allika viide"
* item[=].item[=].item[=].answer.valueReference.identifier.system = "urn:oid:1.3.6.1.4.1.28284.6.1.1.5.11"
* item[=].item[=].item[=].answer.valueReference.identifier.value = "123456789"
* item[=].item[=].item[=].answer.valueReference.display = "Ambulatoorne epikriis"

* item[=].item[+].linkId = "skin-disorders.previous-diagnosis"
* item[=].item[=].text = "Varasem diagnoos"

* item[=].item[=].item[0].linkId = "skin-disorders.previous-diagnosis.diagnosis"
* item[=].item[=].item[=].text = "Diagnoos"
* item[=].item[=].item[=].answer.valueCoding.system = "https://fhir.ee/ValueSet/td-nahahaigused"
* item[=].item[=].item[=].answer.valueCoding.code = #A46
* item[=].item[=].item[=].answer.valueCoding.display = "Erüsiipel e roos"

* item[=].item[=].item[+].linkId = "skin-disorders.previous-diagnosis.written-diagnosis"
* item[=].item[=].item[=].text = "Sõnaline diagnoos"
* item[=].item[=].item[=].answer.valueString = "Roospõletik tuhara piirkonnas"

* item[=].item[=].item[+].linkId = "skin-disorders.previous-diagnosis.source-reference"
* item[=].item[=].item[=].text = "Allika viide"
* item[=].item[=].item[=].answer.valueReference.identifier.system = "urn:oid:1.3.6.1.4.1.28284.6.1.1.5.11"
* item[=].item[=].item[=].answer.valueReference.identifier.value = "123456789"
* item[=].item[=].item[=].answer.valueReference.display = "Ambulatoorne epikriis"

* item[=].item[+].linkId = "skin-disorders.skin-conditions"
* item[=].item[=].text = "Nahahaigused: millal põdenud, milliseid?"
* item[=].item[=].answer.valueBoolean = true

* item[=].item[=].item[0].linkId = "skin-disorders.skin-conditions.specification"
* item[=].item[=].item[=].text = "Täpsustus"
* item[=].item[=].item[=].answer.valueString = "Roospõletik sügeleb sageli ja nahk on kuiv."

* item[+].linkId = "digestive-organs"
* item[=].text = "Seedeelundid"

// * item[=].item[0].linkId = "digestive-organs.diagnoses-group"
// * item[=].item[=].text = "Varasemad diagnoosid"

* item[=].item[0].linkId = "digestive-organs.previous-diagnosis"
* item[=].item[=].text = "Varasem diagnoos"

* item[=].item[=].item[0].linkId = "digestive-organs.previous-diagnosis.diagnosis"
* item[=].item[=].item[=].text = "Diagnoos"
* item[=].item[=].item[=].answer.valueCoding.system = "https://fhir.ee/ValueSet/td-seedeelundid"
* item[=].item[=].item[=].answer.valueCoding.code = #K70.1
* item[=].item[=].item[=].answer.valueCoding.display = "Alkoholhepatiit"

* item[=].item[=].item[+].linkId = "digestive-organs.previous-diagnosis.written-diagnosis"
* item[=].item[=].item[=].text = "Sõnaline diagnoos"
* item[=].item[=].item[=].answer.valueString = "Ikteeriline maksapuudulikkuse tõttu juba"

* item[=].item[=].item[+].linkId = "digestive-organs.previous-diagnosis.source-reference"
* item[=].item[=].item[=].text = "Allika viide"
* item[=].item[=].item[=].answer.valueReference.identifier.system = "urn:oid:1.3.6.1.4.1.28284.6.1.1.5.11"
* item[=].item[=].item[=].answer.valueReference.identifier.value = "123456789"
* item[=].item[=].item[=].answer.valueReference.display = "Ambulatoorne epikriis"

* item[=].item[+].linkId = "digestive-organs.no-complaints"
* item[=].item[=].text = "Kaebused hetkel puuduvad"
* item[=].item[=].answer.valueBoolean = false

* item[=].item[+].linkId = "digestive-organs.liver-disease"
* item[=].item[=].text = "Maksahaigused"
* item[=].item[=].answer.valueBoolean = true

* item[=].item[=].item[0].linkId = "digestive-organs.liver-disease.specification"
* item[=].item[=].item[=].text = "Täpsustus"
* item[=].item[=].item[=].answer.valueString = "Alkoholi liigtarvitamisest tingitud maksakahjustus"

* item[=].item[=].linkId = "digestive-organs.gallstones"
* item[=].item[=].text = "Sapikivid"
* item[=].item[=].answer.valueBoolean = true

* item[=].item[=].item[0].linkId = "digestive-organs.gallstones.specification"
* item[=].item[=].item[=].text = "Täpsustus"
* item[=].item[=].item[=].answer.valueString = "Soola liigtarvitamisest ja vähese vee joomisest sapikivid"

* item[=].item[+].linkId = "digestive-organs.gastric-duodenal-ulcers"
* item[=].item[=].text = "Mao- ja kaksteistsõrmiksoole haavandid"
* item[=].item[=].answer.valueBoolean = false

* item[=].item[+].linkId = "digestive-organs.colitis-crohns-disease"
* item[=].item[=].text = "Haavandiline koliit või Crohni tõbi"
* item[=].item[=].answer.valueBoolean = false

* item[=].item[+].linkId = "digestive-organs.other-disease-condition-symptom"
* item[=].item[=].text = "Muu haigus/seisund/sümptom (palun täpsustage)"
* item[=].item[=].answer.valueBoolean = false

* item[+].linkId = "urogenital-system"
* item[=].text = "Kuse- ja suguelundid"

// * item[=].item[0].linkId = "urogenital-system.diagnoses-group"
// * item[=].item[=].text = "Varasemad diagnoosid"

* item[=].item[0].linkId = "urogenital-system.previous-diagnosis"
* item[=].item[=].text = "Varasem diagnoos"

* item[=].item[=].item[0].linkId = "urogenital-system.previous-diagnosis.diagnosis"
* item[=].item[=].item[=].text = "Diagnoos"
* item[=].item[=].item[=].answer.valueCoding.system = "https://fhir.ee/ValueSet/td-kuse-ja-suguelundid"
* item[=].item[=].item[=].answer.valueCoding.code = #N15.0
* item[=].item[=].item[=].answer.valueCoding.display = "Balkani nefropaatia"

* item[=].item[=].item[+].linkId = "urogenital-system.previous-diagnosis.written-diagnosis"
* item[=].item[=].item[=].text = "Sõnaline diagnoos"
* item[=].item[=].item[=].answer.valueString = "Neerupuudulikkus (Albaanias diagnoositud)"

* item[=].item[=].item[+].linkId = "urogenital-system.previous-diagnosis.source-reference"
* item[=].item[=].item[=].text = "Allika viide"
* item[=].item[=].item[=].answer.valueReference.identifier.system = "urn:oid:1.3.6.1.4.1.28284.6.1.1.5.11"
* item[=].item[=].item[=].answer.valueReference.identifier.value = "123456789"
* item[=].item[=].item[=].answer.valueReference.display = "Ambulatoorne epikriis"

* item[=].item[+].linkId = "urogenital-system.no-complaints"
* item[=].item[=].text = "Kaebused hetkel puuduvad"
* item[=].item[=].answer.valueBoolean = true

* item[+].linkId = "blood-problems"
* item[=].text = "Verehaigused"

// * item[=].item[0].linkId = "blood-problems.diagnoses-group"
// * item[=].item[=].text = "Varasemad diagnoosid"

* item[=].item[0].linkId = "blood-problems.previous-diagnosis"
* item[=].item[=].text = "Varasem diagnoos"

* item[=].item[=].item[0].linkId = "blood-problems.previous-diagnosis.diagnosis"
* item[=].item[=].item[=].text = "Diagnoos"
* item[=].item[=].item[=].answer.valueCoding.system = "https://fhir.ee/ValueSet/td-verehaigused"
* item[=].item[=].item[=].answer.valueCoding.code = #D81.9
* item[=].item[=].item[=].answer.valueCoding.display = "Täpsustamata kombineeritud immuunpuudulikkus"

* item[=].item[=].item[+].linkId = "blood-problems.previous-diagnosis.source-reference"
* item[=].item[=].item[=].text = "Allika viide"
* item[=].item[=].item[=].answer.valueReference.identifier.system = "urn:oid:1.3.6.1.4.1.28284.6.1.1.5.11"
* item[=].item[=].item[=].answer.valueReference.identifier.value = "123456789"
* item[=].item[=].item[=].answer.valueReference.display = "Ambulatoorne epikriis"

* item[=].item[+].linkId = "blood-problems.no-complaints"
* item[=].item[=].text = "Kaebused hetkel puuduvad"
* item[=].item[=].answer.valueBoolean = true

* item[+].linkId = "medical-devices"
* item[=].text = "Kasutan järgmisi meditsiiniseadmeid/abivahendeid"

* item[=].item[0].linkId = "medical-devices.no-devices"
* item[=].item[=].text = "Ei kasuta"
* item[=].item[=].answer.valueBoolean = false

* item[=].item[+].linkId = "medical-devices.glasses"
* item[=].item[=].text = "Prillid"
* item[=].item[=].answer.valueBoolean = true

* item[=].item[=].item[0].linkId = "medical-devices.glasses.specification"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].answer.valueString = "Kasutan lugemiseks prille"

* item[=].item[+].linkId = "medical-devices.contact-lenses"
* item[=].item[=].text = "Kontaktläätsed"
* item[=].item[=].answer.valueBoolean = false

* item[=].item[+].linkId = "medical-devices.hearing-aid"
* item[=].item[=].text = "Kuuldeaparaat/kohleaarimplantaat"
* item[=].item[=].answer.valueBoolean = false

* item[=].item[+].linkId = "medical-devices.arm-prosthesis"
* item[=].item[=].text = "Käeprotees"
* item[=].item[=].answer.valueBoolean = false

* item[=].item[+].linkId = "medical-devices.leg-prosthesis"
* item[=].item[=].text = "Jalaprotees"
* item[=].item[=].answer.valueBoolean = false

* item[=].item[+].linkId = "medical-devices.mobility-device"
* item[=].item[=].text = "Liikumise abivahend"
* item[=].item[=].answer.valueBoolean = false

* item[=].item[+].linkId = "medical-devices.other-device"
* item[=].item[=].text = "Muu abivahend"
* item[=].item[=].answer.valueBoolean = false

* item[=].item[+].linkId = "medical-devices.cpap"
* item[=].item[=].text = "Positiivrõhuaparaat (CPAP) või mitteinvasiivse ventilatsiooni seade"
* item[=].item[=].answer.valueBoolean = true

* item[=].item[+].linkId = "medical-devices.mandibular-splint"
* item[=].item[=].text = "Intraoraalne uneapnoe seade"
* item[=].item[=].answer.valueBoolean = false

* item[+].linkId = "sleep"
* item[=].text = "Uni"

// * item[=].item[0].linkId = "sleep.diagnoses-group"
// * item[=].item[=].text = "Varasemad diagnoosid"

* item[=].item[0].linkId = "sleep.previous-diagnosis"
* item[=].item[=].text = "Varasem diagnoos"

* item[=].item[=].item[0].linkId = "sleep.previous-diagnosis.diagnosis"
* item[=].item[=].item[=].text = "Diagnoos"
* item[=].item[=].item[=].answer.valueCoding.system = "https://fhir.ee/ValueSet/td-uni"
* item[=].item[=].item[=].answer.valueCoding.code = #G47.4
* item[=].item[=].item[=].answer.valueCoding.display = "Narkolepsia ja katapleksia"

* item[=].item[=].item[+].linkId = "sleep.previous-diagnosis.written-diagnosis"
* item[=].item[=].item[=].text = "Sõnaline diagnoos"
* item[=].item[=].item[=].answer.valueString = "Vajun igapäevategevusi tehes lihtsasti unne"

* item[=].item[=].item[+].linkId = "sleep.previous-diagnosis.source-reference"
* item[=].item[=].item[=].text = "Allika viide"
* item[=].item[=].item[=].answer.valueReference.identifier.system = "urn:oid:1.3.6.1.4.1.28284.6.1.1.5.11"
* item[=].item[=].item[=].answer.valueReference.identifier.value = "123456789"
* item[=].item[=].item[=].answer.valueReference.display = "Ambulatoorne epikriis"

* item[=].item[+].linkId = "sleep.loud-snoring"
* item[=].item[=].text = "Kas Te norskate valjult (valjemini kui tavaline kõne, või Teie norskamist on kosta kõrvalruumi ka siis, kui magamistoa uks on suletud)?"
* item[=].item[=].answer.valueBoolean = true

* item[=].item[=].item[0].linkId = "sleep.snoring.specification"
* item[=].item[=].item[=].text = "Täpsustus"
* item[=].item[=].item[=].answer.valueString = "Äratan pidevalt elukaaslase üles norskamisega"

* item[=].item[=].linkId = "sleep.fatigue"
* item[=].item[=].text = "Kas Te tunnete end sageli mitteväljapuhanuna, väsinuna või unisena päevasel ajal?"
* item[=].item[=].answer.valueBoolean = true

* item[=].item[=].item[0].linkId = "sleep.fatigue.specification"
* item[=].item[=].item[=].text = "Täpsustus"
* item[=].item[=].item[=].answer.valueString = "Ebakvaliteetsest unest ja norskamisest tingituna olen ka hommikul väsinud"

* item[=].item[+].linkId = "sleep.breath-stop-sleep"
* item[=].item[=].text = "Kas Teil on täheldatud uneaegseid hingamisseisakuid?"
* item[=].item[=].answer.valueBoolean = false

* item[+].linkId = "health-assessment"
* item[=].text = "Hinnang enda terviseseisundile"

//Vajab õiget loendit
* item[=].item[0].linkId = "health-assessment.patient-health-assessment"
* item[=].item[=].text = "Milline on Teie hinnang oma tervisele?"
* item[=].item[=].answer.valueCoding.system = "https://fhir.ee/ValueSet/td-hinnang-tervisele"
* item[=].item[=].answer.valueCoding.code = #1
* item[=].item[=].answer.valueCoding.display = "Hea"

* item[=].item[=].item[0].linkId = "health-assessment.patient-health-assessment.specification"
* item[=].item[=].item[=].text = "Täpsustus"
* item[=].item[=].item[=].answer.valueString = "Kuigi muresid on palju, siis olen üldiselt positiivselt meelestatud"

* item[=].item[+].linkId = "health-assessment.illness-past-year"
* item[=].item[=].text = "Kas olete viimase aasta jooksul olnud haige?"
* item[=].item[=].answer.valueBoolean = true

* item[=].item[=].item[0].linkId = "health-assessment.illness-past-year.specification"
* item[=].item[=].item[=].text = "Täpsustus"
* item[=].item[=].item[=].answer.valueString = "Palavik eelmisel kuul (vist oli COVID-19)"

* item[=].item[+].linkId = "health-assessment.complaints"
* item[=].item[=].text = "Kas Teil on enda tervise osas kaebusi?"
* item[=].item[=].answer.valueBoolean = false

* item[=].item[+].linkId = "health-assessment.sick-leave-certs"
* item[=].item[=].text = "Haiguslehed"

* item[=].item[=].item[0].linkId = "health-assessment.sick-leave-certs.foreign-sick-leave-cert-length"
* item[=].item[=].item[=].text = "Viimase 5 aasta jooksul välisriigis väljastatud haiguslehtede alguse kuupäev ja kestvus päevades"
* item[=].item[=].item[=].answer.valueString = "Ei ole käinud reisil"

// * item[=].item[=].item[+].linkId = "health-assessment.sick-leave-certs.sick-leave-cert-five-years"
// * item[=].item[=].item[=].text = "Haiguslehed (viimase 5 aasta andmed Tervisekassast)"

* item[=].item[=].item[+].linkId = "health-assessment.sick-leave-certs.sick-leave-cert"
* item[=].item[=].item[=].text = "Haigusleht"

* item[=].item[=].item[=].item[0].linkId = "health-assessment.sick-leave-certs.sick-leave-cert.from"
* item[=].item[=].item[=].item[=].text = "Alates"
* item[=].item[=].item[=].item[=].answer.valueDate = 2024-07-01

* item[=].item[=].item[=].item[+].linkId = "health-assessment.sick-leave-certs.sick-leave-cert.duration"
* item[=].item[=].item[=].item[=].text = "Kestus päevades"
* item[=].item[=].item[=].item[=].answer.valueInteger = 8

* item[=].item[=].item[=].item[+].linkId = "health-assessment.sick-leave-certs.sick-leave-cert.diagnosis"
* item[=].item[=].item[=].item[=].text = "Diagnoos"
* item[=].item[=].item[=].item[=].answer.valueCoding.system = "https://fhir.ee/ValueSet/td-traumad"
* item[=].item[=].item[=].item[=].answer.valueCoding.code = #T63.2
* item[=].item[=].item[=].item[=].answer.valueCoding.display = "Skorpionimürk"

* item[=].item[+].linkId = "health-assessment.partial-work-capacity-loss"
* item[=].item[=].text = "Osaline töövõime"

* item[=].item[=].item[0].linkId = "health-assessment.partial-work-capacity-loss.partial-work-capacity-loss-abroad"
* item[=].item[=].item[=].text = "Kas Teile on välisriigis määratud töövõime osaline kaotus?"
* item[=].item[=].item[=].answer.valueBoolean = false

* item[=].item[=].item[+].linkId = "health-assessment.partial-work-capacity-loss.partial-work-disability"
* item[=].item[=].item[=].text = "Osaline töövõimetus (andmed Sotsiaalkindlustusametist)"

* item[=].item[=].item[=].item[0].linkId = "health-assessment.partial-work-capacity-loss.partial-work-disability.from"
* item[=].item[=].item[=].item[=].text = "Alates"
* item[=].item[=].item[=].item[=].answer.valueDate = 2024-10-01

* item[=].item[=].item[=].item[+].linkId = "health-assessment.partial-work-capacity-loss.partial-work-disability.to"
* item[=].item[=].item[=].item[=].text = "Kuni"
* item[=].item[=].item[=].item[=].answer.valueDate = 2025-10-01

* item[=].item[=].item[=].item[+].linkId = "health-assessment.partial-work-capacity-loss.partial-work-disability.work-capacity-type"
* item[=].item[=].item[=].item[=].text = "Töövõimeliik"
* item[=].item[=].item[=].item[=].answer.valueCoding.system = "https://fhir.ee/CodeSystem/toovoime-liik"
* item[=].item[=].item[=].item[=].answer.valueCoding.code = #Osaline
* item[=].item[=].item[=].item[=].answer.valueCoding.display =	"Osaline töövõime"

* item[=].item[+].linkId = "health-assessment.disability"
* item[=].item[=].text = "Puue"

* item[=].item[=].item[0].linkId = "health-assessment.disability.disability-abroad"
* item[=].item[=].item[=].text = "Kas Teil on välisriigis tuvastatud puue?"
* item[=].item[=].item[=].answer.valueBoolean = false

* item[+].linkId = "immunization"
* item[=].text = "Immuniseerimine"

* item[=].item[0].linkId = "immunization.b-hepatitis"
* item[=].item[=].text = "B-viirushepatiit"

* item[=].item[=].item[0].linkId = "immunization.b-hepatitis.vac-done"
* item[=].item[=].item[=].text = "Kas Teile on tehtud B-viirushepatiidi vaktsiin?"
* item[=].item[=].item[=].answer.valueBoolean = true

* item[=].item[=].item[+].linkId = "immunization.b-hepatitis.immunization-his-data"
* item[=].item[=].item[=].text = "Immuniseerimine"

* item[=].item[=].item[=].item[0].linkId = "immunization.b-hepatitis.immunization-his-data.date"
* item[=].item[=].item[=].item[=].text = "Kuupäev"
* item[=].item[=].item[=].item[=].answer.valueDate = 2022-10-10

* item[=].item[=].item[=].item[+].linkId = "immunization.b-hepatitis.immunization-his-data.source-reference"
* item[=].item[=].item[=].item[=].text = "Allika viide"
* item[=].item[=].item[=].item[=].answer.valueReference.identifier.system = "urn:oid:1.3.6.1.4.1.28284.6.1.1.5.11"
* item[=].item[=].item[=].item[=].answer.valueReference.identifier.value = "123456789"
* item[=].item[=].item[=].item[=].answer.valueReference.display = "Ambulatoorne epikriis"

* item[=].item[=].item[+].linkId = "immunization.b-hepatitis.date"
* item[=].item[=].item[=].text = "Kuupäev"
* item[=].item[=].item[=].answer.valueDate = 2022-10-01


* item[=].item[+].linkId = "immunization.tuberculosis"
* item[=].item[=].text = "Tuberkuloos"

* item[=].item[=].item[0].linkId = "immunization.tuberculosis.vac-done"
* item[=].item[=].item[=].text = "Kas Teile on tehtud tuberkuloosi vaktsiin?"
* item[=].item[=].item[=].answer.valueBoolean = true

* item[=].item[=].item[+].linkId = "immunization.tuberculosis.immunization-his-data"
* item[=].item[=].item[=].text = "Immuniseerimine"

* item[=].item[=].item[=].item[0].linkId = "immunization.tuberculosis.immunization-his-data.date"
* item[=].item[=].item[=].item[=].text = "Kuupäev"
* item[=].item[=].item[=].item[=].answer.valueDate = 1996-03-16

* item[=].item[=].item[=].item[+].linkId = "immunization.tuberculosis.immunization-his-data.source-reference"
* item[=].item[=].item[=].item[=].text = "Allika viide"
* item[=].item[=].item[=].item[=].answer.valueReference.identifier.system = "urn:oid:1.3.6.1.4.1.28284.6.1.1.5.11"
* item[=].item[=].item[=].item[=].answer.valueReference.identifier.value = "123456789"
* item[=].item[=].item[=].item[=].answer.valueReference.display = "Ambulatoorne epikriis"

* item[=].item[=].item[+].linkId = "immunization.tuberculosis.date"
* item[=].item[=].item[=].text = "Kuupäev"
* item[=].item[=].item[=].answer.valueDate = 1996-03-16

* item[=].item[+].linkId = "immunization.rotavirus"
* item[=].item[=].text = "Rotaviirus"

* item[=].item[=].item[0].linkId = "immunization.rotavirus.vac-done"
* item[=].item[=].item[=].text = "Kas Teile on tehtud rotaviirusnakkuse vaktsiin?"
* item[=].item[=].item[=].answer.valueBoolean = true

* item[=].item[=].item[+].linkId = "immunization.rotavirus.immunization-his-data"
* item[=].item[=].item[=].text = "Immuniseerimine"

* item[=].item[=].item[=].item[0].linkId = "immunization.rotavirus.immunization-his-data.date"
* item[=].item[=].item[=].item[=].text = "Kuupäev"
* item[=].item[=].item[=].item[=].answer.valueDate = 1996-03-16

* item[=].item[=].item[=].item[+].linkId = "immunization.rotavirus.immunization-his-data.source-reference"
* item[=].item[=].item[=].item[=].text = "Allika viide"
* item[=].item[=].item[=].item[=].answer.valueReference.identifier.system = "urn:oid:1.3.6.1.4.1.28284.6.1.1.5.11"
* item[=].item[=].item[=].item[=].answer.valueReference.identifier.value = "123456789"
* item[=].item[=].item[=].item[=].answer.valueReference.display = "Ambulatoorne epikriis"

* item[=].item[=].item[+].linkId = "immunization.rotavirus.date"
* item[=].item[=].item[=].text = "Kuupäev"
* item[=].item[=].item[=].answer.valueDate = 1996-03-16

* item[=].item[+].linkId = "immunization.diphteria"
* item[=].item[=].text = "Difteeria"

* item[=].item[=].item[0].linkId = "immunization.diphteria.vac-done"
* item[=].item[=].item[=].text = "Kas Teile on tehtud difteeria vaktsiin?"
* item[=].item[=].item[=].answer.valueBoolean = true

* item[=].item[=].item[+].linkId = "immunization.diphteria.immunization-his-data"
* item[=].item[=].item[=].text = "Immuniseerimine"

* item[=].item[=].item[=].item[0].linkId = "immunization.diphteria.immunization-his-data.date"
* item[=].item[=].item[=].item[=].text = "Kuupäev"
* item[=].item[=].item[=].item[=].answer.valueDate = 1996-05-16

* item[=].item[=].item[=].item[+].linkId = "immunization.diphteria.immunization-his-data.source-reference"
* item[=].item[=].item[=].item[=].text = "Allika viide"
* item[=].item[=].item[=].item[=].answer.valueReference.identifier.system = "urn:oid:1.3.6.1.4.1.28284.6.1.1.5.11"
* item[=].item[=].item[=].item[=].answer.valueReference.identifier.value = "123456789"
* item[=].item[=].item[=].item[=].answer.valueReference.display = "Ambulatoorne epikriis"

* item[=].item[=].item[+].linkId = "immunization.diphteria.date"
* item[=].item[=].item[=].text = "Kuupäev"
* item[=].item[=].item[=].answer.valueDate = 1996-04-16

* item[=].item[+].linkId = "immunization.tetanus"
* item[=].item[=].text = "Teetanus"

* item[=].item[=].item[0].linkId = "immunization.tetanus.vac-done"
* item[=].item[=].item[=].text = "Kas Teile on tehtud teetanuse vaktsiin?"
* item[=].item[=].item[=].answer.valueBoolean = true

* item[=].item[=].item[+].linkId = "immunization.tetanus.immunization-his-data"
* item[=].item[=].item[=].text = "Immuniseerimine"

* item[=].item[=].item[=].item[0].linkId = "immunization.tetanus.immunization-his-data.date"
* item[=].item[=].item[=].item[=].text = "Kuupäev"
* item[=].item[=].item[=].item[=].answer.valueDate = 2000-01-01

* item[=].item[=].item[=].item[+].linkId = "immunization.tetanus.immunization-his-data.source-reference"
* item[=].item[=].item[=].item[=].text = "Allika viide"
* item[=].item[=].item[=].item[=].answer.valueReference.identifier.system = "urn:oid:1.3.6.1.4.1.28284.6.1.1.5.11"
* item[=].item[=].item[=].item[=].answer.valueReference.identifier.value = "123456789"
* item[=].item[=].item[=].item[=].answer.valueReference.display = "Ambulatoorne epikriis"

* item[=].item[=].item[+].linkId = "immunization.tetanus.date"
* item[=].item[=].item[=].text = "Kuupäev"
* item[=].item[=].item[=].answer.valueDate = 2000-01-01


* item[=].item[+].linkId = "immunization.pertussis"
* item[=].item[=].text = "Läkaköha"

* item[=].item[=].item[0].linkId = "immunization.pertussis.vac-done"
* item[=].item[=].item[=].text = "Kas Teile on tehtud atsellulaarse läkaköha vaktsiin?"
* item[=].item[=].item[=].answer.valueBoolean = false

* item[=].item[+].linkId = "immunization.polio"
* item[=].item[=].text = "Poliomüeliit"

* item[=].item[=].item[0].linkId = "immunization.polio.vac-done"
* item[=].item[=].item[=].text = "Kas Teile on tehtud inaktiveeritud poliomüeliidi vaktsiin?"
* item[=].item[=].item[=].answer.valueBoolean = false

* item[=].item[+].linkId = "immunization.hemo-influenza"
* item[=].item[=].text = "Influensa"

* item[=].item[=].item[0].linkId = "immunization.hemo-influenza.vac-done"
* item[=].item[=].item[=].text = "Kas Teile on tehtud Haemophilus influenzae tüüp b nakkuse vaktsiin?"
* item[=].item[=].item[=].answer.valueBoolean = false

* item[=].item[+].linkId = "immunization.measles"
* item[=].item[=].text = "Leetrid"

* item[=].item[=].item[0].linkId = "immunization.measles.vac-done"
* item[=].item[=].item[=].text = "Kas Teile on tehtud leetrite vaktsiin?"
* item[=].item[=].item[=].answer.valueBoolean = false

* item[=].item[+].linkId = "immunization.mumps"
* item[=].item[=].text = "Mumps"

* item[=].item[=].item[0].linkId = "immunization.mumps.vac-done"
* item[=].item[=].item[=].text = "Kas Teile on tehtud mumpsi vaktsiin?"
* item[=].item[=].item[=].answer.valueBoolean = false

* item[=].item[+].linkId = "immunization.rubella"
* item[=].item[=].text = "Punetised"

* item[=].item[=].item[0].linkId = "immunization.rubella.vac-done"
* item[=].item[=].item[=].text = "Kas Teile on tehtud punetiste vaktsiin?"
* item[=].item[=].item[=].answer.valueBoolean = false

* item[=].item[+].linkId = "immunization.hpv"
* item[=].item[=].text = "HPV"

* item[=].item[=].item[0].linkId = "immunization.hpv.vac-done"
* item[=].item[=].item[=].text = "Kas Teile on tehtud papilloomiviirusnakkuse vaktsiin?"
* item[=].item[=].item[=].answer.valueBoolean = false

* item[=].item[+].linkId = "immunization.covid"
* item[=].item[=].text = "COVID"

* item[=].item[=].item[0].linkId = "immunization.covid.vac-done"
* item[=].item[=].item[=].text = "Kas Teile on tehtud COVID vaktsiin?"
* item[=].item[=].item[=].answer.valueBoolean = false

* item[=].item[+].linkId = "immunization.flu"
* item[=].item[=].text = "Gripiviirus"

* item[=].item[=].item[0].linkId = "immunization.flu.vac-done"
* item[=].item[=].item[=].text = "Kas Teile on tehtud gripivaktsiin?"
* item[=].item[=].item[=].answer.valueBoolean = false

* item[=].item[+].linkId = "immunization.pneumococcus"
* item[=].item[=].text = "Pneumokokk"

* item[=].item[=].item[0].linkId = "immunization.pneumococcus.vac-done"
* item[=].item[=].item[=].text = "Kas Teile on tehtud pneumokoki vaktsiin?"
* item[=].item[=].item[=].answer.valueBoolean = false

* item[=].item[+].linkId = "immunization.a-hepatitis"
* item[=].item[=].text = "A-hepatiit"

* item[=].item[=].item[0].linkId = "immunization.a-hepatitis.vac-done"
* item[=].item[=].item[=].text = "Kas Teile on tehtud A-hepatiidi vaktsiin?"
* item[=].item[=].item[=].answer.valueBoolean = false

* item[=].item[+].linkId = "immunization.varicella"
* item[=].item[=].text = "Tuulerõuged"

* item[=].item[=].item[0].linkId = "immunization.varicella.vac-done"
* item[=].item[=].item[=].text = "Kas Teile on tehtud tuulerõugete vaktsiin?"
* item[=].item[=].item[=].answer.valueBoolean = false

* item[=].item[+].linkId = "immunization.shingles"
* item[=].item[=].text = "Vöötohatis"

* item[=].item[=].item[0].linkId = "immunization.shingles.vac-done"
* item[=].item[=].item[=].text = "Kas Teile on tehtud vöötohatise vaktsiin?"
* item[=].item[=].item[=].answer.valueBoolean = false

* item[=].item[+].linkId = "immunization.meningococcus"
* item[=].item[=].text = "Meningokokk"

* item[=].item[=].item[0].linkId = "immunization.meningococcus.vac-done"
* item[=].item[=].item[=].text = "Kas Teile on tehtud meningokokk-nakkuse vaktsiin?"
* item[=].item[=].item[=].answer.valueBoolean = false

* item[=].item[+].linkId = "immunization.yellow-fever"
* item[=].item[=].text = "Kollapalavik"

* item[=].item[=].item[0].linkId = "immunization.yellow-fever.vac-done"
* item[=].item[=].item[=].text = "Kas Teile on tehtud kollapalaviku vaktsiin?"
* item[=].item[=].item[=].answer.valueBoolean = false

* item[=].item[+].linkId = "immunization.typhoid-fever"
* item[=].item[=].text = "Kõhutüüfus"

* item[=].item[=].item[0].linkId = "immunization.typhoid-fever.vac-done"
* item[=].item[=].item[=].text = "Kas Teile on tehtud kõhutüüfuse vaktsiin?"
* item[=].item[=].item[=].answer.valueBoolean = false

* item[=].item[+].linkId = "immunization.tick-encephalitis"
* item[=].item[=].text = "Puukentsefaliit"

* item[=].item[=].item[0].linkId = "immunization.tick-encephalitis.vac-done"
* item[=].item[=].item[=].text = "Kas Teile on tehtud puukentsefaliidi vaktsiin?"
* item[=].item[=].item[=].answer.valueBoolean = false

* item[=].item[+].linkId = "immunization.other-vac"
* item[=].item[=].text = "Muud vaktsiinid"

* item[=].item[=].item[0].linkId = "immunization.other-vac.vac-done"
* item[=].item[=].item[=].text = "Kas Teile on tehtud muid vaktsiine?"
* item[=].item[=].item[=].answer.valueBoolean = false

* item[+].linkId = "work-risk-factors"
* item[=].text = "Töökohal esinevad ohutegurid"

* item[=].item[0].linkId = "work-risk-factors.risk-factor"
* item[=].item[=].text = "Ohutegur"
* item[=].item[=].answer.valueCoding.system = "https://fhir.ee/ValueSet/td-ohutegurid"
* item[=].item[=].answer.valueCoding.code = #1
* item[=].item[=].answer.valueCoding.display = "Asbestirohke keskkond"

* item[=].item[=].item[0].linkId = "work-risk-factors.risk-factor.specification"
* item[=].item[=].item[=].text = "Täpsustus"
* item[=].item[=].item[=].answer.valueString = "Hästi tolmune on töö"

* item[=].item[+].linkId = "work-risk-factors.risk-factor"
* item[=].item[=].text = "Ohutegur"
* item[=].item[=].answer.valueCoding.system = "https://fhir.ee/ValueSet/td-ohutegurid"
* item[=].item[=].answer.valueCoding.code = #3
* item[=].item[=].answer.valueCoding.display = "Päevavalguse vähesus"

* item[=].item[=].item[0].linkId = "work-risk-factors.risk-factor.specification"
* item[=].item[=].item[=].text = "Täpsustus"
* item[=].item[=].item[=].answer.valueString = "Hästi pime on ka"

