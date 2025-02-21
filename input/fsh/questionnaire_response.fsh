Profile: EEHealthDeclaration
Parent: QuestionnaireResponse
Id: EEHealthDeclaration
Description: "Tervisedeklaratsiooni küsimustiku vastuse profiil"
* ^version = "1.0.0"
* ^status = #draft
* ^date = "2024-01-01"
* id 1..1
* meta.profile 1..1
* meta.versionId 1..1
* questionnaire 1..1
* language 0..1
* status 1..1
* basedOn 0..0
* partOf 0..0
* subject 1..1
* encounter 0..0
* authored 1..1
* author 1..1
* extension contains response-expiration named ResponseExpiration 0..1
* extension[ResponseExpiration] 0..1
* item 0..*
  * linkId 1..1
  * definition 0..0
  * text 0..1
  * answer 0..*
    * value[x] 1..1
    * item 0..*
  * item 0..*

Instance: ExampleEEHealthDeclaration
InstanceOf: EEHealthDeclaration
Description: "Näidis andmestik küsimustikust vastusest (töötervishoid)"
Usage: #example
* meta.versionId = "1.0"
* extension[ResponseExpiration].url = "https://fhir.ee/StructureDefinition/response-expiration"
* extension[ResponseExpiration].valueDate = 2025-06-16
* identifier.system = "http://example.org/fhir/identifiers"
* identifier.value = "1234567"
* questionnaire = "https://fhir.ee/StructureDefinition/EEHealthDeclaration"
* status = #completed
* subject = Reference(QuestionnairePatient)
* authored =  2024-01-01
* author = Reference(QuestionnairePatient)

* item[0].linkId = "declaration.category"
* item[=].text = "Kasutusala"
* item[=].answer.valueCoding.system = "https://fhir.ee/ValueSet/tervisetoendi-otsuse-kasutusala"
* item[=].answer.valueCoding.code = #6
* item[=].answer.valueCoding.display = "Töötervishoid"

* item[+].linkId = "lifestyle"
* item[=].text = "Elustiil"

* item[=].item[0].linkId = "lifestyle.alcohol"
* item[=].item[=].text = "Kas te tarbite alkoholi?"
* item[=].item[=].answer.valueBoolean = true

* item[=].item[=].answer.item[0].linkId = "lifestyle.alcohol.amount"
* item[=].item[=].answer.item[=].text =  "Mitu ühikut nädalas? (1 ühik = 40 ml 40% kangusega alkoholi)"
* item[=].item[=].answer.item[=].answer.valueDecimal =  3.4

* item[=].item[+].linkId = "lifestyle.smoking"
* item[=].item[=].text = "Kas te suitsetate?"
* item[=].item[=].answer.valueBoolean = true

* item[=].item[=].answer.item[0].linkId = "lifestyle.smoking.amount"
* item[=].item[=].answer.item[=].text =  "Mitu sigaretti päevas?"
* item[=].item[=].answer.item[=].answer.valueInteger = 20

* item[=].item[=].answer.item[+].linkId = "lifestyle.smoking.period"
* item[=].item[=].answer.item[=].text =  "Mitu aastat olete järjest suitsetanud?"
* item[=].item[=].answer.item[=].answer.valueDecimal = 45.0

* item[=].item[+].linkId = "lifestyle.narcotics"
* item[=].item[=].text = "Kas tarvitate narkootilisi/psühhotroopseid aineid?"
* item[=].item[=].answer.valueBoolean = true

* item[=].item[=].answer.item[0].linkId = "lifestyle.narcotics.how_often"
* item[=].item[=].answer.item[=].text =  "Kirjeldage, kui sageli"
* item[=].item[=].answer.item[=].answer.valueString = "Narkootilised valuvaigistid kroonilise valu vastu (opiaadid)"

* item[=].item[+].linkId = "lifestyle.drugs"
* item[=].item[=].text = "Kas kasutate ravimeid, mis võivad Teie arvates mõjutada Teie keskendumisvõimet ja koordinatsiooni?"
* item[=].item[=].answer.valueBoolean = true

* item[=].item[=].answer.item[0].linkId = "lifestyle.drugs.specify"
* item[=].item[=].answer.item[=].text =  "Täpsustus"
* item[=].item[=].answer.item[=].answer.valueString = "Kodeiin ja muud opioidid"

* item[+].linkId = "work_environment"
* item[=].text = "Töökeskkond"

* item[=].item[0].linkId = "work_environment.restrictions"
* item[=].item[=].text = "Kas Teile on tervisekontrolli põhjal varem seatud tööpiiranguid? Kui jah, mille tõttu?"
* item[=].item[=].answer.valueBoolean = true

* item[=].item[=].answer.item[0].linkId = "work_environment.restrictions.specify"
* item[=].item[=].answer.item[=].text =  "Täpsustus"
* item[=].item[=].answer.item[=].answer.valueString =  "Psühholoogilise stressi tõttu takistatud tööd"

* item[=].item[+].linkId = "work_environment.health_problems"
* item[=].item[=].text = "Kas Teil esineb või on esinenud tervisehäireid, mida seostate oma tööülesannete täitmise või töökeskkonnaga?"
* item[=].item[=].answer.valueBoolean = true

* item[=].item[=].answer.item[0].linkId = "work_environment.health_problems.specify"
* item[=].item[=].answer.item[=].text =  "Täpsustus"
* item[=].item[=].answer.item[=].answer.valueString =  "Hingamisraskused tingitud töökeskkonnast"

* item[=].item[+].linkId = "work_environment.occupational_diagnosis"
* item[=].item[=].text = "Kas Teil on diagnoositud kutsehaigus?"
* item[=].item[=].answer.valueBoolean = true

* item[=].item[+].linkId = "work_environment.general_diagnosis"
* item[=].item[=].text = "Kas Teil on diagnoositud tööst põhjustatud haigus?"
* item[=].item[=].answer.valueBoolean = false

* item[=].item[+].linkId = "work_environment.ppe_problems"
* item[=].item[=].text = "Kas tööl kasutatavad isikukaitsevahendid põhjustavad Teile terviseprobleeme?"
* item[=].item[=].answer.valueBoolean = true

* item[=].item[=].answer.item[0].linkId = "work_environment.ppe_problems.specify"
* item[=].item[=].answer.item[=].text =  "Täpsustus"
* item[=].item[=].answer.item[=].answer.valueString =  "Kiivri kandmine tekitab peavalu"

* item[+].linkId = "allergies"
* item[=].text = "Allergiad"

* item[=].item[0].linkId = "allergies.no_complaints"
* item[=].item[=].text = "Kaebused hetkel puuduvad"
* item[=].item[=].answer.valueBoolean = true

* item[+].linkId = "mental_state"
* item[=].text = "Psüühika"

* item[=].item[0].linkId = "mental_state.diagnoses"
* item[=].item[=].text = "Varasemad diagnoosid"

* item[=].item[=].item[0].linkId = "mental_state.diagnoses.group"
* item[=].item[=].item[=].text = "Varasem diagnoos"

* item[=].item[=].item[=].item[0].linkId = "mental_state.diagnoses.group.diagnosis"
* item[=].item[=].item[=].item[=].text = "Diagnoos"
* item[=].item[=].item[=].item[=].answer.valueCoding.system = "https://fhir.ee/ValueSet/td-psyyhika"
* item[=].item[=].item[=].item[=].answer.valueCoding.code = #F61.0
* item[=].item[=].item[=].item[=].answer.valueCoding.display = "Segatüüpi isiksushäired"

* item[=].item[=].item[=].item[+].linkId = "mental_state.diagnoses.group.source_reference"
* item[=].item[=].item[=].item[=].text = "Allika viide"
* item[=].item[=].item[=].item[=].answer.valueReference.identifier.system = "urn:oid:1.3.6.1.4.1.28284.6.1.1.5.11"
* item[=].item[=].item[=].item[=].answer.valueReference.identifier.value = "123456789" 
* item[=].item[=].item[=].item[=].answer.valueReference.display = "Ambulatoorne epikriis"

* item[=].item[=].item[+].linkId = "mental_state.diagnoses.group"
* item[=].item[=].item[=].text = "Varasem diagnoos"

* item[=].item[=].item[=].item[0].linkId = "mental_state.diagnoses.group.diagnosis"
* item[=].item[=].item[=].item[=].text = "Diagnoos"
* item[=].item[=].item[=].item[=].answer.valueCoding.system = "https://fhir.ee/ValueSet/td-psyyhika"
* item[=].item[=].item[=].item[=].answer.valueCoding.code = #R45.4
* item[=].item[=].item[=].item[=].answer.valueCoding.display = "Ärrituvus ja viha"

* item[=].item[=].item[=].item[+].linkId = "mental_state.diagnoses.group.description"
* item[=].item[=].item[=].item[=].text = "Sõnaline diagnoos"
* item[=].item[=].item[=].item[=].answer.valueString = "Liikluses muutun kergesti ärritatavaks"

* item[=].item[=].item[=].item[+].linkId = "mental_state.diagnoses.group.source_reference"
* item[=].item[=].item[=].item[=].text = "Allika viide"
* item[=].item[=].item[=].item[=].answer.valueReference.identifier.system = "urn:oid:1.3.6.1.4.1.28284.6.1.1.5.11"
* item[=].item[=].item[=].item[=].answer.valueReference.identifier.value = "123456789" 
* item[=].item[=].item[=].item[=].answer.valueReference.display = "Ambulatoorne epikriis"

* item[=].item[+].linkId = "mental_state.no_complaints"
* item[=].item[=].text = "Kaebused hetkel puuduvad"
* item[=].item[=].answer.valueBoolean = false

* item[=].item[+].linkId = "mental_state.depression"
* item[=].item[=].text = "Depressioon"
* item[=].item[=].answer.valueBoolean = true

* item[=].item[=].item[0].linkId = "mental_state.depression.specify"
* item[=].item[=].item[=].text = "Täpsustus"
* item[=].item[=].item[=].answer.valueString = "Pidev apaatsus ja süvenev meeleolulangus"

* item[=].item[+].linkId = "mental_state.schizophrenia"
* item[=].item[=].text = "Skisofreenia"
* item[=].item[=].answer.valueBoolean = false

* item[=].item[+].linkId = "mental_state.work_alone"
* item[=].item[=].text = "Kartus töötada üksinda"
* item[=].item[=].answer.valueBoolean = false

* item[=].item[+].linkId = "mental_state.claustrophobia"
* item[=].item[=].text = "Hirm suletud ruumi ees"
* item[=].item[=].answer.valueBoolean = false

* item[=].item[+].linkId = "mental_state.fear_of_heights"
* item[=].item[=].text = "Kõrgusekartus"
* item[=].item[=].answer.valueBoolean = false

* item[=].item[+].linkId = "mental_state.other_condition"
* item[=].item[=].text = "Muu haigus/seisund/sümptom (palun täpsustage)"
* item[=].item[=].answer.valueBoolean = true

* item[=].item[=].item[0].linkId = "mental_state.other_condition.specify"
* item[=].item[=].item[=].text = "Täpsustus"
* item[=].item[=].item[=].answer.valueString = "Generaliseerunud äravushoog (1x kuus)"

* item[+].linkId = "nervous_system"
* item[=].text = "Närvisüsteem"

* item[=].item[0].linkId = "nervous_system.diagnoses"
* item[=].item[=].text = "Varasemad diagnoosid"

* item[=].item[=].item[0].linkId = "nervous_system.diagnoses.group"
* item[=].item[=].item[=].text = "Varasem diagnoos"

* item[=].item[=].item[=].item[0].linkId = "nervous_system.diagnoses.group.diagnosis"
* item[=].item[=].item[=].item[=].text = "Diagnoos"
* item[=].item[=].item[=].item[=].answer.valueCoding.system = "https://fhir.ee/ValueSet/td-narvisusteem"
* item[=].item[=].item[=].item[=].answer.valueCoding.code = #G56.4
* item[=].item[=].item[=].item[=].answer.valueCoding.display = "Kausalgia"

* item[=].item[=].item[=].item[+].linkId = "nervous_system.diagnoses.group.source_reference"
* item[=].item[=].item[=].item[=].text = "Allika viide"
* item[=].item[=].item[=].item[=].answer.valueReference.identifier.system = "urn:oid:1.3.6.1.4.1.28284.6.1.1.5.11"
* item[=].item[=].item[=].item[=].answer.valueReference.identifier.value = "123456789" 
* item[=].item[=].item[=].item[=].answer.valueReference.display = "Ambulatoorne epikriis"

* item[=].item[=].item[+].linkId = "nervous_system.diagnoses.group"
* item[=].item[=].item[=].text = "Varasem diagnoos"

* item[=].item[=].item[=].item[0].linkId = "nervous_system.diagnoses.group.diagnosis"
* item[=].item[=].item[=].item[=].text = "Diagnoos"
* item[=].item[=].item[=].item[=].answer.valueCoding.system = "https://fhir.ee/ValueSet/td-narvisusteem"
* item[=].item[=].item[=].item[=].answer.valueCoding.code = #G56.0
* item[=].item[=].item[=].item[=].answer.valueCoding.display = "Karpaaltunneli sündroom"

* item[=].item[=].item[=].item[+].linkId = "nervous_system.diagnoses.group.description"
* item[=].item[=].item[=].item[=].text = "Sõnaline diagnoos"
* item[=].item[=].item[=].item[=].answer.valueString = "Arvutis trükkimine ja kirjutamine muutub valulikuks mingil ajahetkel"

* item[=].item[=].item[=].item[+].linkId = "nervous_system.diagnoses.group.source_reference"
* item[=].item[=].item[=].item[=].text = "Allika viide"
* item[=].item[=].item[=].item[=].answer.valueReference.identifier.system = "urn:oid:1.3.6.1.4.1.28284.6.1.1.5.11"
* item[=].item[=].item[=].item[=].answer.valueReference.identifier.value = "123456789" 
* item[=].item[=].item[=].item[=].answer.valueReference.display = "Ambulatoorne epikriis"

* item[=].item[+].linkId = "nervous_system.no_complaints"
* item[=].item[=].text = "Kaebused hetkel puuduvad"
* item[=].item[=].answer.valueBoolean = false

* item[=].item[+].linkId = "nervous_system.syncope"
* item[=].item[=].text = "Teadvuse kaotuse hood"
* item[=].item[=].answer.valueBoolean = true

* item[=].item[=].item[0].linkId = "nervous_system.syncope.specify"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].answer.valueString = "aeg-ajalt minestan"

* item[=].item[+].linkId = "nervous_system.seizures"
* item[=].item[=].text = "Krambihood (epilepsia ehk langetõbi)"
* item[=].item[=].answer.valueBoolean = true

* item[=].item[=].item[0].linkId = "nervous_system.seizures.specify"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].answer.valueString = "Vilkuv valgustus tekitab epilepsia hoogu"

* item[=].item[+].linkId = "nervous_system.balance_disorder"
* item[=].item[=].text = "Tasakaaluhäired (sh Meniere'i tõbi)"
* item[=].item[=].answer.valueBoolean = true

* item[=].item[=].item[0].linkId = "nervous_system.balance_disorder.specify"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].answer.valueString = "Meniere'i tõbi diagnoositud"

* item[=].item[+].linkId = "nervous_system.stroke"
* item[=].item[=].text = "Ajuinfarkt või ajuinsult"
* item[=].item[=].answer.valueBoolean = true

* item[=].item[=].item[0].linkId = "nervous_system.stroke.specify"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].answer.valueString = "Läbipõetud hemoraagiline ajuinfarkt"

* item[=].item[+].linkId = "nervous_system.sea_sickness"
* item[=].item[=].text = "Merehaigus"
* item[=].item[=].answer.valueBoolean = true

* item[=].item[=].item[0].linkId = "nervous_system.sea_sickness.specify"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].answer.valueString = "Iiveldus merel sõites"

* item[=].item[+].linkId = "nervous_system.coordination_disorder"
* item[=].item[=].text = "Koordinatsioonihäired (sh. kätega seonduvad)"
* item[=].item[=].answer.valueBoolean = true

* item[=].item[=].item[0].linkId = "nervous_system.coordination_disorder.specify"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].answer.valueString = "Treemor kätes tekitab raskuseid koordinatsiooniga"

* item[=].item[+].linkId = "nervous_system.other_condition"
* item[=].item[=].text = "Muu haigus/seisund/sümptom (palun täpsustage)"
* item[=].item[=].answer.valueBoolean = true

* item[=].item[=].item[0].linkId = "nervous_system.other_condition.specify"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].answer.valueString = "Valu alaseljas füüsilise koormuse ajal"

* item[+].linkId = "eyesight"
* item[=].text = "Silmad ja nägemine"

* item[=].item[0].linkId = "eyesight.diagnoses"
* item[=].item[=].text = "Varasemad diagnoosid"

* item[=].item[=].item[0].linkId = "eyesight.diagnoses.group"
* item[=].item[=].item[=].text = "Varasem diagnoos"

* item[=].item[=].item[=].item[0].linkId = "eyesight.diagnoses.group.diagnosis"
* item[=].item[=].item[=].item[=].text = "Diagnoos"
* item[=].item[=].item[=].item[=].answer.valueCoding.system = "https://fhir.ee/ValueSet/td-silmad-ja-nagemine"
* item[=].item[=].item[=].item[=].answer.valueCoding.code = #H27.1
* item[=].item[=].item[=].item[=].answer.valueCoding.display = "Läätse väärasetsus"

* item[=].item[=].item[=].item[+].linkId = "eyesight.diagnoses.group.source_reference"
* item[=].item[=].item[=].item[=].text = "Allika viide"
* item[=].item[=].item[=].item[=].answer.valueReference.identifier.system = "urn:oid:1.3.6.1.4.1.28284.6.1.1.5.11"
* item[=].item[=].item[=].item[=].answer.valueReference.identifier.value = "123456789" 
* item[=].item[=].item[=].item[=].answer.valueReference.display = "Ambulatoorne epikriis"

* item[=].item[+].linkId = "eyesight.no_complaints"
* item[=].item[=].text = "Kaebused hetkel puuduvad"
* item[=].item[=].answer.valueBoolean = false

* item[=].item[+].linkId = "eyesight.myopia"
* item[=].item[=].text = "Lühinägevus"
* item[=].item[=].answer.valueBoolean = true

* item[=].item[=].item[0].linkId = "eyesight.myopia.specify"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].answer.valueString = "Paremat silmast lühinägelik"

* item[=].item[+].linkId = "eyesight.limited_field_of_view"
* item[=].item[=].text = "Kas üles-alla või külgedele vaadates esineb vaatevälja piiratust?"
* item[=].item[=].answer.valueBoolean = true

* item[=].item[=].item[0].linkId = "eyesight.limited_field_of_view.specify"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].answer.valueString = "külgedel esineb piiratus"

* item[=].item[+].linkId = "eyesight.double_vision"
* item[=].item[=].text = "Kahelinägemine"
* item[=].item[=].answer.valueBoolean = false

* item[=].item[+].linkId = "eyesight.problems_seeing_color"
* item[=].item[=].text = "Värvusmeele häired"
* item[=].item[=].answer.valueBoolean = true

* item[=].item[=].item[0].linkId = "eyesight.problems_seeing_color.specify"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].answer.valueString = "Osaline daltonism"

* item[=].item[+].linkId = "eyesight.other_condition"
* item[=].item[=].text = "Muu haigus/seisund/sümptom (palun täpsustage)"
* item[=].item[=].answer.valueBoolean = true

* item[=].item[=].item[0].linkId = "eyesight.other_condition.specify"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].answer.valueString = "Ise-diagnoositud glaukoom"

* item[+].linkId = "ear_nose_throat"
* item[=].text = "Kõrv, nina, neel"

* item[=].item[0].linkId = "ear_nose_throat.diagnoses"
* item[=].item[=].text = "Varasemad diagnoosid"

* item[=].item[=].item[0].linkId = "ear_nose_throat.diagnoses.group"
* item[=].item[=].item[=].text = "Varasem diagnoos"

* item[=].item[=].item[=].item[0].linkId = "ear_nose_throat.diagnoses.group.diagnosis"
* item[=].item[=].item[=].item[=].text = "Diagnoos"
* item[=].item[=].item[=].item[=].answer.valueCoding.system = "https://fhir.ee/ValueSet/td-korv-nina-neel"
* item[=].item[=].item[=].item[=].answer.valueCoding.code = #J38.5
* item[=].item[=].item[=].item[=].answer.valueCoding.display = "Kõrispasm"

* item[=].item[=].item[=].item[+].linkId = "ear_nose_throat.diagnoses.group.source_reference"
* item[=].item[=].item[=].item[=].text = "Allika viide"
* item[=].item[=].item[=].item[=].answer.valueReference.identifier.system = "urn:oid:1.3.6.1.4.1.28284.6.1.1.5.11"
* item[=].item[=].item[=].item[=].answer.valueReference.identifier.value = "123456789" 
* item[=].item[=].item[=].item[=].answer.valueReference.display = "Ambulatoorne epikriis"

* item[=].item[+].linkId = "ear_nose_throat.no_complaints"
* item[=].item[=].text = "Kaebused hetkel puuduvad"
* item[=].item[=].answer.valueBoolean = true

* item[+].linkId = "respiratory_system"
* item[=].text = "Hingamissüsteem"

* item[=].item[0].linkId = "respiratory_system.diagnoses"
* item[=].item[=].text = "Varasemad diagnoosid"

* item[=].item[=].item[0].linkId = "respiratory_system.diagnoses.group"
* item[=].item[=].item[=].text = "Varasem diagnoos"

* item[=].item[=].item[=].item[0].linkId = "respiratory_system.diagnoses.group.diagnosis"
* item[=].item[=].item[=].item[=].text = "Diagnoos"
* item[=].item[=].item[=].item[=].answer.valueCoding.system = "https://fhir.ee/ValueSet/td-hingamissusteem"
* item[=].item[=].item[=].item[=].answer.valueCoding.code = #J65
* item[=].item[=].item[=].item[=].answer.valueCoding.display = "Pneumokonioos koos tuberkuloosiga"

* item[=].item[=].item[=].item[+].linkId = "respiratory_system.diagnoses.group.description"
* item[=].item[=].item[=].item[=].text = "Sõnaline diagnoos"
* item[=].item[=].item[=].item[=].answer.valueString = "Krooniline kopsutolmustus"

* item[=].item[=].item[=].item[+].linkId = "respiratory_system.diagnoses.group.source_reference"
* item[=].item[=].item[=].item[=].text = "Allika viide"
* item[=].item[=].item[=].item[=].answer.valueReference.identifier.system = "urn:oid:1.3.6.1.4.1.28284.6.1.1.5.11"
* item[=].item[=].item[=].item[=].answer.valueReference.identifier.value = "123456789" 
* item[=].item[=].item[=].item[=].answer.valueReference.display = "Ambulatoorne epikriis"

* item[=].item[+].linkId = "respiratory_system.no_complaints"
* item[=].item[=].text = "Kaebused hetkel puuduvad"
* item[=].item[=].answer.valueBoolean = false

* item[=].item[+].linkId = "respiratory_system.asthma"
* item[=].item[=].text = "Astma"
* item[=].item[=].answer.valueBoolean = false

* item[=].item[+].linkId = "respiratory_system.copd"
* item[=].item[=].text = "Krooniline obstruktiivne kopsuhaigus ehk KOK"
* item[=].item[=].answer.valueBoolean = true

* item[=].item[=].item[0].linkId = "respiratory_system.copd.specify"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].answer.valueString = "hingamine füüsilisel koormusel raskendatud"

* item[=].item[+].linkId = "respiratory_system.other_condition"
* item[=].item[=].text = "Muu haigus/seisund/sümptom (palun täpsustage)"
* item[=].item[=].answer.valueBoolean = true

* item[=].item[=].item[0].linkId = "respiratory_system.other_condition.specify"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].answer.valueString = "Sügavalt hingamine krabisev hääl"

* item[=].item[+].linkId = "respiratory_system.sleep_apnoe"
* item[=].item[=].text = "Uneapnoe"
* item[=].item[=].answer.valueBoolean = true

* item[=].item[=].item[0].linkId = "respiratory_system.sleep_apnoe.specify"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].answer.valueString = "Norskan (kasutan ka CPAP maski)"

* item[+].linkId = "metabolism_disorder"
* item[=].text = "Ainevahetuse häired (sh kilpnäärme haigused)"

* item[=].item[0].linkId = "metabolism_disorder.diagnoses"
* item[=].item[=].text = "Varasemad diagnoosid"

* item[=].item[=].item[0].linkId = "metabolism_disorder.diagnoses.group"
* item[=].item[=].item[=].text = "Varasem diagnoos"

* item[=].item[=].item[=].item[0].linkId = "metabolism_disorder.diagnoses.group.diagnosis"
* item[=].item[=].item[=].item[=].text = "Diagnoos"
* item[=].item[=].item[=].item[=].answer.valueCoding.system = "https://fhir.ee/ValueSet/td-ainevahetuse-haired"
* item[=].item[=].item[=].item[=].answer.valueCoding.code = #E11.9
* item[=].item[=].item[=].item[=].answer.valueCoding.display = "Insuliinisõltumatu suhkurtõbi tüsistusteta"

* item[=].item[=].item[=].item[+].linkId = "metabolism_disorder.diagnoses.group.description"
* item[=].item[=].item[=].item[=].text = "Sõnaline diagnoos"
* item[=].item[=].item[=].item[=].answer.valueString = "II tüüpi diabeet"

* item[=].item[=].item[=].item[+].linkId = "metabolism_disorder.diagnoses.group.source_reference"
* item[=].item[=].item[=].item[=].text = "Allika viide"
* item[=].item[=].item[=].item[=].answer.valueReference.identifier.system = "urn:oid:1.3.6.1.4.1.28284.6.1.1.5.11"
* item[=].item[=].item[=].item[=].answer.valueReference.identifier.value = "123456789" 
* item[=].item[=].item[=].item[=].answer.valueReference.display = "Ambulatoorne epikriis"

* item[=].item[+].linkId = "metabolism_disorder.no_complaints"
* item[=].item[=].text = "Kaebused hetkel puuduvad"
* item[=].item[=].answer.valueBoolean = false

* item[=].item[+].linkId = "metabolism_disorder.diabetes"
* item[=].item[=].text = "Suhkruhaigus"
* item[=].item[=].answer.valueBoolean = true

* item[=].item[=].item[0].linkId = "metabolism_disorder.diabetes.specify"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].answer.valueString = "II tüüpi diabeet"

* item[=].item[+].linkId = "metabolism_disorder.other_condition"
* item[=].item[=].text = "Muu haigus/seisund/sümptom (palun täpsustage)"
* item[=].item[=].answer.valueBoolean = false

* item[+].linkId = "cardiovascular_system"
* item[=].text = "Süda ja veresoonkond"

* item[=].item[0].linkId = "cardiovascular_system.diagnoses"
* item[=].item[=].text = "Varasemad diagnoosid"

* item[=].item[=].item[0].linkId = "cardiovascular_system.diagnoses.group"
* item[=].item[=].item[=].text = "Varasem diagnoos"

* item[=].item[=].item[=].item[0].linkId = "cardiovascular_system.diagnoses.group.diagnosis"
* item[=].item[=].item[=].item[=].text = "Diagnoos"
* item[=].item[=].item[=].item[=].answer.valueCoding.system = "https://fhir.ee/ValueSet/td-suda-ja-veresoonkond"
* item[=].item[=].item[=].item[=].answer.valueCoding.code = #I25.2
* item[=].item[=].item[=].item[=].answer.valueCoding.display = "Varasem müokardiinfarkt"

* item[=].item[=].item[=].item[+].linkId = "cardiovascular_system.diagnoses.group.description"
* item[=].item[=].item[=].item[=].text = "Sõnaline diagnoos"
* item[=].item[=].item[=].item[=].answer.valueString = "Pärgarterite 50% ummistus põhjustas MI"

* item[=].item[=].item[=].item[+].linkId = "cardiovascular_system.diagnoses.group.source_reference"
* item[=].item[=].item[=].item[=].text = "Allika viide"
* item[=].item[=].item[=].item[=].answer.valueReference.identifier.system = "urn:oid:1.3.6.1.4.1.28284.6.1.1.5.11"
* item[=].item[=].item[=].item[=].answer.valueReference.identifier.value = "123456789" 
* item[=].item[=].item[=].item[=].answer.valueReference.display = "Ambulatoorne epikriis"

* item[=].item[+].linkId = "cardiovascular_system.no_complaints"
* item[=].item[=].text = "Kaebused hetkel puuduvad"
* item[=].item[=].answer.valueBoolean = false

* item[=].item[+].linkId = "cardiovascular_system.physical_activity_stenocardia"
* item[=].item[=].text = "Koormusega seonduv valu rinnus"
* item[=].item[=].answer.valueBoolean = true

* item[=].item[=].item[0].linkId = "cardiovascular_system.physical_activity_stenocardia.specify"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].answer.valueString = "Süda hakkab puperdama füüsilisel koormusel"

* item[=].item[+].linkId = "cardiovascular_system.high_bp"
* item[=].item[=].text = "Kõrge vererõhk"
* item[=].item[=].answer.valueBoolean = false

* item[=].item[+].linkId = "cardiovascular_system.previous_mi"
* item[=].item[=].text = "Läbipõetud südameinfarkt"
* item[=].item[=].answer.valueBoolean = true

* item[=].item[=].item[0].linkId = "cardiovascular_system.previous_mi.specify"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].answer.valueString = "4 aastat tagasi põdesin läbi südame isheemitõvest tingitud infarkti"

* item[=].item[+].linkId = "cardiovascular_system.heart_arrhythmia"
* item[=].item[=].text = "Südame rütmihäired"
* item[=].item[=].answer.valueBoolean = false

* item[=].item[+].linkId = "cardiovascular_system.heart_stenting"
* item[=].item[=].text = "On tehtud südamesondeerimine või stentimine"
* item[=].item[=].answer.valueBoolean = true

* item[=].item[=].item[0].linkId = "cardiovascular_system.heart_stenting.specify"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].answer.valueString = "Pärast põetud infarkti paigaldatud balloondilatatsiooni stent (reiearteri kaudu)"

* item[=].item[+].linkId = "cardiovascular_system.pacer"
* item[=].item[=].text = "On paigaldatud südamerütmur"
* item[=].item[=].answer.valueBoolean = false

* item[=].item[+].linkId = "cardiovascular_system.heart_operation"
* item[=].item[=].text = "On tehtud südameoperatsioon"
* item[=].item[=].answer.valueBoolean = false

* item[=].item[+].linkId = "cardiovascular_system.other_condition"
* item[=].item[=].text = "Muu haigus/seisund/sümptom (palun täpsustage)"
* item[=].item[=].answer.valueBoolean = false

* item[+].linkId = "skeletal_system"
* item[=].text = "Luud, liigesed ja lihased"

* item[=].item[0].linkId = "skeletal_system.diagnoses"
* item[=].item[=].text = "Varasemad diagnoosid"

* item[=].item[=].item[0].linkId = "skeletal_system.diagnoses.group"
* item[=].item[=].item[=].text = "Varasem diagnoos"

* item[=].item[=].item[=].item[0].linkId = "skeletal_system.diagnoses.group.diagnosis"
* item[=].item[=].item[=].item[=].text = "Diagnoos"
* item[=].item[=].item[=].item[=].answer.valueCoding.system = "https://fhir.ee/ValueSet/td-luud-liigesed-ja-lihased"
* item[=].item[=].item[=].item[=].answer.valueCoding.code = #M47
* item[=].item[=].item[=].item[=].answer.valueCoding.display = "Spondüloos e lülijäikus"

* item[=].item[=].item[=].item[+].linkId = "skeletal_system.diagnoses.group.description"
* item[=].item[=].item[=].item[=].text = "Sõnaline diagnoos"
* item[=].item[=].item[=].item[=].answer.valueString = "lülijäikus"

* item[=].item[=].item[=].item[+].linkId = "skeletal_system.diagnoses.group.source_reference"
* item[=].item[=].item[=].item[=].text = "Allika viide"
* item[=].item[=].item[=].item[=].answer.valueReference.identifier.system = "urn:oid:1.3.6.1.4.1.28284.6.1.1.5.11"
* item[=].item[=].item[=].item[=].answer.valueReference.identifier.value = "123456789" 
* item[=].item[=].item[=].item[=].answer.valueReference.display = "Ambulatoorne epikriis"

* item[=].item[+].linkId = "skeletal_system.no_complaints"
* item[=].item[=].text = "Kaebused hetkel puuduvad"
* item[=].item[=].answer.valueBoolean = false

* item[=].item[+].linkId = "skeletal_system.stiff_joints"
* item[=].item[=].text = "Liigesejäikus"
* item[=].item[=].answer.valueBoolean = true

* item[=].item[=].item[0].linkId = "skeletal_system.stiff_joints.specify"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].answer.valueString = "Hommikuti on kõik liigesed kanged"

* item[=].item[+].linkId = "skeletal_system.paresis_plegia"
* item[=].item[=].text = "Jäseme osaline või täielik halvatus (palun täpsustage)"
* item[=].item[=].answer.valueBoolean = false

* item[=].item[+].linkId = "skeletal_system.amputee"
* item[=].item[=].text = "Jäseme või selle osa puudumine (palun täpsustage)"
* item[=].item[=].answer.valueBoolean = false

* item[=].item[+].linkId = "skeletal_system.tremor"
* item[=].item[=].text = "Käte värisemine (treemor)"
* item[=].item[=].answer.valueBoolean = false

* item[=].item[+].linkId = "skeletal_system.joint_pain"
* item[=].item[=].text = "Liigesevalu"
* item[=].item[=].answer.valueBoolean = true

* item[=].item[=].item[0].linkId = "skeletal_system.joint_pain.specify"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].answer.valueString = "Hommikuti on kõik liigesed valusad"

* item[=].item[+].linkId = "skeletal_system.neck_pain"
* item[=].item[=].text = "Kaelavalu"
* item[=].item[=].answer.valueBoolean = false

* item[=].item[+].linkId = "skeletal_system.shoulder_pain"
* item[=].item[=].text = "Õlavöötmevalu"
* item[=].item[=].answer.valueBoolean = false

* item[=].item[+].linkId = "skeletal_system.lower_back_pain"
* item[=].item[=].text = "Alaseljavalu"
* item[=].item[=].answer.valueBoolean = false

* item[=].item[+].linkId = "skeletal_system.other_condition"
* item[=].item[=].text = "Muu haigus/seisund/sümptom (palun täpsustage)"
* item[=].item[=].answer.valueBoolean = false

* item[+].linkId = "infections"
* item[=].text = "Nakkushaigused"

* item[=].item[0].linkId = "infections.diagnoses"
* item[=].item[=].text = "Varasemad diagnoosid"

* item[=].item[=].item[0].linkId = "infections.diagnoses.group"
* item[=].item[=].item[=].text = "Varasem diagnoos"

* item[=].item[=].item[=].item[0].linkId = "infections.diagnoses.group.diagnosis"
* item[=].item[=].item[=].item[=].text = "Diagnoos"
* item[=].item[=].item[=].item[=].answer.valueCoding.system = "https://fhir.ee/ValueSet/td-nakkushaigused"
* item[=].item[=].item[=].item[=].answer.valueCoding.code = #A51.1
* item[=].item[=].item[=].item[=].answer.valueCoding.display = "Primaarne anaalsüüfilis"

* item[=].item[=].item[=].item[+].linkId = "infections.diagnoses.group.source_reference"
* item[=].item[=].item[=].item[=].text = "Allika viide"
* item[=].item[=].item[=].item[=].answer.valueReference.identifier.system = "urn:oid:1.3.6.1.4.1.28284.6.1.1.5.11"
* item[=].item[=].item[=].item[=].answer.valueReference.identifier.value = "123456789" 
* item[=].item[=].item[=].item[=].answer.valueReference.display = "Ambulatoorne epikriis"

* item[=].item[+].linkId = "infections.no_complaints"
* item[=].item[=].text = "Kaebused hetkel puuduvad"
* item[=].item[=].answer.valueBoolean = true

* item[+].linkId = "other_chronic_illnesses"
* item[=].text = "Muud kroonilised haigused, seisundid või sümptomid, mida eespool ei kirjeldatud"

* item[=].item[0].linkId = "other_chronic_illnesses.none"
* item[=].item[=].text = "Puuduvad"
* item[=].item[=].answer.valueBoolean = true

* item[+].linkId = "treatment_done"
* item[=].text = "Senine ravi"

* item[=].item[0].linkId = "treatment_done.foreign_treatment"
* item[=].item[=].text = "Kas olete välismaal saanud  haiglaravi või käinud arsti vastuvõtul? Palun täpsustage millal, kus, ja millega seoses"
* item[=].item[=].answer.valueBoolean = true

* item[=].item[=].item[0].linkId = "treatment_done.foreign_treatment.specify"
* item[=].item[=].item[=].text = "Täpsustus"
* item[=].item[=].item[=].answer.valueString = "Ostsin lätis paratsetamooli"

* item[=].item[+].linkId = "treatment_done.regular_medication"
* item[=].item[=].text = "Regulaarsed ravimid"

* item[=].item[=].item[0].linkId = "treatment_done.regular_medication.regular_medication_men"
* item[=].item[=].item[=].text = "Kas tarvitate regulaarselt mingeid ravimeid? Palun loetlege, milliseid"
* item[=].item[=].item[=].answer.valueBoolean = true

* item[=].item[=].item[=].item[0].linkId = "treatment_done.regular_medication.regular_medication_men.specify"
* item[=].item[=].item[=].item[=].text = "Täpsustus"
* item[=].item[=].item[=].item[=].answer.valueString = "Xymelin, beeta-blokaatorid, hjärtemagnyl (südame aspirin)"

* item[=].item[=].item[+].linkId = "treatment_done.regular_medication.current_prescriptions"
* item[=].item[=].item[=].text = "Viimase 9 kuu jooksul välja kirjutatud retseptid"

* item[=].item[=].item[=].item[0].linkId = "treatment_done.regular_medication.current_prescriptions.prescription"
* item[=].item[=].item[=].item[=].text = "Retsept"

* item[=].item[=].item[=].item[=].item[0].linkId = "treatment_done.regular_medication.current_prescriptions.prescription.date"
* item[=].item[=].item[=].item[=].item[=].text = "Kuupäev"
* item[=].item[=].item[=].item[=].item[=].answer.valueDate = 2024-09-01

//Mis loendist s4ee info peaks tulema
* item[=].item[=].item[=].item[=].item[+].linkId = "treatment_done.regular_medication.current_prescriptions.prescription.atc"
* item[=].item[=].item[=].item[=].item[=].text = "ATC"
* item[=].item[=].item[=].item[=].item[=].answer.valueCoding.system = "https://fhir.ee/CodeSystem/atc-ee"
* item[=].item[=].item[=].item[=].item[=].answer.valueCoding.code = #G03BA03
* item[=].item[=].item[=].item[=].item[=].answer.valueCoding.display = "testosteroon"

// Pakendi info tuleb alles välja kui ravim välja ostetakse (puudub konkreetne meie loend ja välja kirjutatud ravimite juures seda infot ei ole, mis pakendiga tegu)
* item[=].item[=].item[=].item[=].item[+].linkId = "treatment_done.regular_medication.current_prescriptions.prescription.package"
* item[=].item[=].item[=].item[=].item[=].text = "Pakend"
* item[=].item[=].item[=].item[=].item[=].answer.valueCoding.system = "https://fhir.ee/CodeSystem/pakend" //Vale
* item[=].item[=].item[=].item[=].item[=].answer.valueCoding.code = #mingi_pakend
* item[=].item[=].item[=].item[=].item[=].answer.valueCoding.display = "mingi pakend"

* item[=].item[=].item[=].item[=].item[+].linkId = "treatment_done.regular_medication.current_prescriptions.prescription.source_reference"
* item[=].item[=].item[=].item[=].item[=].text = "Allika viide"
* item[=].item[=].item[=].item[=].item[=].answer.valueReference.identifier.system = "urn:oid:1.3.6.1.4.1.28284.6.1.1.5.11"
* item[=].item[=].item[=].item[=].item[=].answer.valueReference.identifier.value = "123456789"
* item[=].item[=].item[=].item[=].item[=].answer.valueReference.display = "Ambulatoorne epikriis"

* item[=].item[+].linkId = "treatment_done.hospitalization"
* item[=].item[=].text = "Kas olete viibinud haiglaravil?"
* item[=].item[=].answer.valueBoolean = true

* item[=].item[=].item[0].linkId = "treatment_done.hospitalization.specify"
* item[=].item[=].item[=].text = "Täpsustus"
* item[=].item[=].item[=].answer.valueString = "Kopsupõletikuga intensiivravil mõni aeg tagasi"

* item[=].item[=].item[+].linkId = "treatment_done.hospitalization.previous_hospitalization"
* item[=].item[=].item[=].text = "Varasem haiglaravi"

* item[=].item[=].item[=].item[0].linkId = "treatment_done.hospitalization.previous_hospitalization.stationary_ce"
* item[=].item[=].item[=].item[=].text = "Statsionaarne haigusjuhtum"

* item[=].item[=].item[=].item[=].item[0].linkId = "treatment_done.hospitalization.previous_hospitalization.stationary_ce.from"
* item[=].item[=].item[=].item[=].item[=].text = "Alates"
* item[=].item[=].item[=].item[=].item[=].answer.valueDate = 2024-05-01

* item[=].item[=].item[=].item[=].item[+].linkId = "treatment_done.hospitalization.previous_hospitalization.stationary_ce.to"
* item[=].item[=].item[=].item[=].item[=].text = "Kuni"
* item[=].item[=].item[=].item[=].item[=].answer.valueDate = 2024-06-01

* item[=].item[=].item[=].item[=].item[+].linkId = "treatment_done.hospitalization.previous_hospitalization.stationary_ce.provider"
* item[=].item[=].item[=].item[=].item[=].text = "Tervishoiuasutus"
* item[=].item[=].item[=].item[=].item[=].answer.valueString = "Lääne-Tallinna Keskhaigla"

* item[=].item[=].item[=].item[=].item[+].linkId = "treatment_done.hospitalization.previous_hospitalization.stationary_ce.source_reference"
* item[=].item[=].item[=].item[=].item[=].text = "Allika viide"
* item[=].item[=].item[=].item[=].item[=].answer.valueReference.identifier.system = "urn:oid:1.3.6.1.4.1.28284.6.1.1.5.11"
* item[=].item[=].item[=].item[=].item[=].answer.valueReference.identifier.value = "123456789" 
* item[=].item[=].item[=].item[=].item[=].answer.valueReference.display = "Ambulatoorne epikriis"

* item[=].item[+].linkId = "treatment_done.operations"
* item[=].item[=].text = "Kas teid on opereeritud? Palun täpsustage, millal, mille tõttu"
* item[=].item[=].answer.valueBoolean = true

* item[=].item[=].item[0].linkId = "treatment_done.operations.specify"
* item[=].item[=].item[=].text = "Täpsustus"
* item[=].item[=].item[=].answer.valueString = "Avatud apendektoomia, vist oli 4 2 kuud tagasi. Põhjuseks akuutne pimesoole põletik"

* item[=].item[=].item[+].linkId = "treatment_done.operations.procedures"
* item[=].item[=].item[=].text = "Teostatud protseduurid"

* item[=].item[=].item[=].item[0].linkId = "treatment_done.operations.procedures.operation"
* item[=].item[=].item[=].item[=].text = "Operatsioon"

* item[=].item[=].item[=].item[=].item[0].linkId = "treatment_done.operations.procedures.operation.date"
* item[=].item[=].item[=].item[=].item[=].text = "Kuupäev"
* item[=].item[=].item[=].item[=].item[=].answer.valueDate = 2024-11-20

* item[=].item[=].item[=].item[=].item[+].linkId = "treatment_done.operations.procedures.operation.specific_operation"
* item[=].item[=].item[=].item[=].item[=].text = "Operatsioon"
* item[=].item[=].item[=].item[=].item[=].answer.valueCoding.system = "https://fhir.ee/CodeSystem/ncsp"
* item[=].item[=].item[=].item[=].item[=].answer.valueCoding.code.value = #JEA01
* item[=].item[=].item[=].item[=].item[=].answer.valueCoding.display = "Laparoskoopiline apendektoomia"

* item[=].item[=].item[=].item[=].item[+].linkId = "treatment_done.operations.procedures.operation.add_codes"
* item[=].item[=].item[=].item[=].item[=].text = "Operatsiooni lisakoodid"
* item[=].item[=].item[=].item[=].item[=].answer.valueCoding.system = "https://fhir.ee/CodeSystem/ncsp"
* item[=].item[=].item[=].item[=].item[=].answer.valueCoding.code.value = #JEW96
* item[=].item[=].item[=].item[=].item[=].answer.valueCoding.display = "Muu operatsioon apendiksil"

* item[=].item[=].item[=].item[=].item[+].linkId = "treatment_done.operations.procedures.operation.source_reference"
* item[=].item[=].item[=].item[=].item[=].text = "Allika viide"
* item[=].item[=].item[=].item[=].item[=].answer.valueReference.identifier.system = "urn:oid:1.3.6.1.4.1.28284.6.1.1.5.11"
* item[=].item[=].item[=].item[=].item[=].answer.valueReference.identifier.value = "123456789" 
* item[=].item[=].item[=].item[=].item[=].answer.valueReference.display = "Ambulatoorne epikriis"

* item[+].linkId = "traumas"
* item[=].text = "Traumad"

* item[=].item[0].linkId = "traumas.diagnoses"
* item[=].item[=].text = "Varasemad diagnoosid"

* item[=].item[=].item[0].linkId = "traumas.diagnoses.group"
* item[=].item[=].item[=].text = "Varasem diagnoos"

* item[=].item[=].item[=].item[0].linkId = "traumas.diagnoses.group.diagnosis"
* item[=].item[=].item[=].item[=].text = "Diagnoos"
* item[=].item[=].item[=].item[=].answer.valueCoding.system = "https://fhir.ee/ValueSet/td-traumad"
* item[=].item[=].item[=].item[=].answer.valueCoding.code = #T63.3
* item[=].item[=].item[=].item[=].answer.valueCoding.display = "Amblikumürk"

* item[=].item[=].item[=].item[+].linkId = "traumas.diagnoses.group.description"
* item[=].item[=].item[=].item[=].text = "Sõnaline diagnoos"
* item[=].item[=].item[=].item[=].answer.valueString = "Radioaktiivselt ämblikult sai hammustada"

* item[=].item[=].item[=].item[+].linkId = "traumas.diagnoses.group.source_reference"
* item[=].item[=].item[=].item[=].text = "Allika viide"
* item[=].item[=].item[=].item[=].answer.valueReference.identifier.system = "urn:oid:1.3.6.1.4.1.28284.6.1.1.5.11"
* item[=].item[=].item[=].item[=].answer.valueReference.identifier.value = "123456789" 
* item[=].item[=].item[=].item[=].answer.valueReference.display = "Ambulatoorne epikriis"

* item[=].item[+].linkId = "traumas.none"
* item[=].item[=].text = "Puuduvad"
* item[=].item[=].answer.valueBoolean = false

* item[=].item[+].linkId = "traumas.fractures"
* item[=].item[=].text = "Luumurrud (palun täpsustage, millised ja millal)"
* item[=].item[=].answer.valueBoolean = true

* item[=].item[=].item[0].linkId = "traumas.fractures.specify"
* item[=].item[=].item[=].text = "Täpsustus"
* item[=].item[=].item[=].answer.valueString = "Varbaluumurd (juhtus 3 nädalat tagasi)"

* item[=].item[+].linkId = "traumas.concussion"
* item[=].item[=].text = "Rasked peavigastused"
* item[=].item[=].answer.valueBoolean = false

* item[=].item[+].linkId = "traumas.other_injuries"
* item[=].item[=].text = "Muud olulised vigastused (palun täpsustage, millised ja millal)"
* item[=].item[=].answer.valueBoolean = false

* item[+].linkId = "skin_disease"
* item[=].text = "Nahahaigused"

* item[=].item[0].linkId = "skin_disease.diagnoses"
* item[=].item[=].text = "Varasemad diagnoosid"

* item[=].item[=].item[0].linkId = "skin_disease.diagnoses.group"
* item[=].item[=].item[=].text = "Varasem diagnoos"

* item[=].item[=].item[=].item[0].linkId = "skin_disease.diagnoses.group.diagnosis"
* item[=].item[=].item[=].item[=].text = "Diagnoos"
* item[=].item[=].item[=].item[=].answer.valueCoding.system = "https://fhir.ee/ValueSet/td-nahahaigused"
* item[=].item[=].item[=].item[=].answer.valueCoding.code = #L02.1
* item[=].item[=].item[=].item[=].answer.valueCoding.display = "Kaelanahaabstsess, -furunkul ja -karbunkul"

* item[=].item[=].item[=].item[+].linkId = "skin_disease.diagnoses.group.source_reference"
* item[=].item[=].item[=].item[=].text = "Allika viide"
* item[=].item[=].item[=].item[=].answer.valueReference.identifier.system = "urn:oid:1.3.6.1.4.1.28284.6.1.1.5.11"
* item[=].item[=].item[=].item[=].answer.valueReference.identifier.value = "123456789" 
* item[=].item[=].item[=].item[=].answer.valueReference.display = "Ambulatoorne epikriis"

* item[=].item[=].item[+].linkId = "skin_disease.diagnoses.group"
* item[=].item[=].item[=].text = "Varasem diagnoos"

* item[=].item[=].item[=].item[0].linkId = "skin_disease.diagnoses.group.diagnosis"
* item[=].item[=].item[=].item[=].text = "Diagnoos"
* item[=].item[=].item[=].item[=].answer.valueCoding.system = "https://fhir.ee/ValueSet/td-nahahaigused"
* item[=].item[=].item[=].item[=].answer.valueCoding.code = #A46
* item[=].item[=].item[=].item[=].answer.valueCoding.display = "Erüsiipel e roos"

* item[=].item[=].item[=].item[+].linkId = "skin_disease.diagnoses.group.description"
* item[=].item[=].item[=].item[=].text = "Sõnaline diagnoos"
* item[=].item[=].item[=].item[=].answer.valueString = "Roospõletik tuhara piirkonnas"

* item[=].item[=].item[=].item[+].linkId = "skin_disease.diagnoses.group.source_reference"
* item[=].item[=].item[=].item[=].text = "Allika viide"
* item[=].item[=].item[=].item[=].answer.valueReference.identifier.system = "urn:oid:1.3.6.1.4.1.28284.6.1.1.5.11"
* item[=].item[=].item[=].item[=].answer.valueReference.identifier.value = "123456789" 
* item[=].item[=].item[=].item[=].answer.valueReference.display = "Ambulatoorne epikriis"

* item[=].item[+].linkId = "skin_disease.skin_conditions"
* item[=].item[=].text = "Nahahaigused: millal põdenud, milliseid?"
* item[=].item[=].answer.valueBoolean = false

* item[=].item[=].item[0].linkId = "skin_disease.skin_conditions.specify"
* item[=].item[=].item[=].text = "Täpsustus"
* item[=].item[=].item[=].answer.valueString = "Roospõletik sügeleb sageli ja nahk on kuiv."

* item[+].linkId = "digestive_organs"
* item[=].text = "Seedeelundid"

* item[=].item[0].linkId = "digestive_organs.diagnoses"
* item[=].item[=].text = "Varasemad diagnoosid"

* item[=].item[=].item[0].linkId = "digestive_organs.diagnoses.group"
* item[=].item[=].item[=].text = "Varasem diagnoos"

* item[=].item[=].item[=].item[0].linkId = "digestive_organs.diagnoses.group.diagnosis"
* item[=].item[=].item[=].item[=].text = "Diagnoos"
* item[=].item[=].item[=].item[=].answer.valueCoding.system = "https://fhir.ee/ValueSet/td-seedeelundid"
* item[=].item[=].item[=].item[=].answer.valueCoding.code = #K70.1
* item[=].item[=].item[=].item[=].answer.valueCoding.display = "Alkoholhepatiit"

* item[=].item[=].item[=].item[+].linkId = "digestive_organs.diagnoses.group.description"
* item[=].item[=].item[=].item[=].text = "Sõnaline diagnoos"
* item[=].item[=].item[=].item[=].answer.valueString = "Ikteeriline maksapuudulikkuse tõttu juba"

* item[=].item[=].item[=].item[+].linkId = "digestive_organs.diagnoses.group.source_reference"
* item[=].item[=].item[=].item[=].text = "Allika viide"
* item[=].item[=].item[=].item[=].answer.valueReference.identifier.system = "urn:oid:1.3.6.1.4.1.28284.6.1.1.5.11"
* item[=].item[=].item[=].item[=].answer.valueReference.identifier.value = "123456789" 
* item[=].item[=].item[=].item[=].answer.valueReference.display = "Ambulatoorne epikriis"

* item[=].item[+].linkId = "digestive_organs.no_complaints"
* item[=].item[=].text = "Kaebused hetkel puuduvad"
* item[=].item[=].answer.valueBoolean = false

* item[=].item[+].linkId = "digestive_organs.liver_disease"
* item[=].item[=].text = "Maksahaigused"
* item[=].item[=].answer.valueBoolean = true

* item[=].item[=].item[0].linkId = "digestive_organs.liver_disease.specify"
* item[=].item[=].item[=].text = "Täpsustus"
* item[=].item[=].item[=].answer.valueString = "Alkoholi liigtarvitamisest tingitud maksakahjustus"

* item[=].item[=].linkId = "digestive_organs.gall_stones"
* item[=].item[=].text = "Sapikivid"
* item[=].item[=].answer.valueBoolean = true

* item[=].item[=].item[0].linkId = "digestive_organs.gall_stones.specify"
* item[=].item[=].item[=].text = "Täpsustus"
* item[=].item[=].item[=].answer.valueString = "Soola liigtarvitamisest ja vähese vee joomisest sapikivid"

* item[=].item[+].linkId = "digestive_organs.gastric_duodenal_ulcers"
* item[=].item[=].text = "Mao- ja kaksteistsõrmiksoole haavandid"
* item[=].item[=].answer.valueBoolean = false

* item[=].item[+].linkId = "digestive_organs.crohn_colitis"
* item[=].item[=].text = "Haavandiline koliit või Crohni tõbi"
* item[=].item[=].answer.valueBoolean = false

* item[=].item[+].linkId = "digestive_organs.other_condition"
* item[=].item[=].text = "Muu haigus/seisund/sümptom (palun täpsustage)"
* item[=].item[=].answer.valueBoolean = false

* item[+].linkId = "urogenital_system"
* item[=].text = "Kuse- ja suguelundid"

* item[=].item[0].linkId = "urogenital_system.diagnoses"
* item[=].item[=].text = "Varasemad diagnoosid"

* item[=].item[=].item[0].linkId = "urogenital_system.diagnoses.group"
* item[=].item[=].item[=].text = "Varasem diagnoos"

* item[=].item[=].item[=].item[0].linkId = "urogenital_system.diagnoses.group.diagnosis"
* item[=].item[=].item[=].item[=].text = "Diagnoos"
* item[=].item[=].item[=].item[=].answer.valueCoding.system = "https://fhir.ee/ValueSet/td-kuse-ja-suguelundid"
* item[=].item[=].item[=].item[=].answer.valueCoding.code = #N15.0
* item[=].item[=].item[=].item[=].answer.valueCoding.display = "Balkani nefropaatia"

* item[=].item[=].item[=].item[+].linkId = "urogenital_system.diagnoses.group.description"
* item[=].item[=].item[=].item[=].text = "Sõnaline diagnoos"
* item[=].item[=].item[=].item[=].answer.valueString = "Neerupuudulikkus (Albaanias diagnoositud)"

* item[=].item[=].item[=].item[+].linkId = "urogenital_system.diagnoses.group.source_reference"
* item[=].item[=].item[=].item[=].text = "Allika viide"
* item[=].item[=].item[=].item[=].answer.valueReference.identifier.system = "urn:oid:1.3.6.1.4.1.28284.6.1.1.5.11"
* item[=].item[=].item[=].item[=].answer.valueReference.identifier.value = "123456789" 
* item[=].item[=].item[=].item[=].answer.valueReference.display = "Ambulatoorne epikriis"

* item[=].item[+].linkId = "urogenital_system.no_complaints"
* item[=].item[=].text = "Kaebused hetkel puuduvad"
* item[=].item[=].answer.valueBoolean = true

* item[+].linkId = "blood_problems"
* item[=].text = "Verehaigused"

* item[=].item[0].linkId = "blood_problems.diagnoses"
* item[=].item[=].text = "Varasemad diagnoosid"

* item[=].item[=].item[0].linkId = "blood_problems.diagnoses.group"
* item[=].item[=].item[=].text = "Varasem diagnoos"

* item[=].item[=].item[=].item[0].linkId = "blood_problems.diagnoses.group.diagnosis"
* item[=].item[=].item[=].item[=].text = "Diagnoos"
* item[=].item[=].item[=].item[=].answer.valueCoding.system = "https://fhir.ee/ValueSet/td-verehaigused"
* item[=].item[=].item[=].item[=].answer.valueCoding.code = #D81.9
* item[=].item[=].item[=].item[=].answer.valueCoding.display = "Täpsustamata kombineeritud immuunpuudulikkus"

* item[=].item[=].item[=].item[+].linkId = "blood_problems.diagnoses.group.source_reference"
* item[=].item[=].item[=].item[=].text = "Allika viide"
* item[=].item[=].item[=].item[=].answer.valueReference.identifier.system = "urn:oid:1.3.6.1.4.1.28284.6.1.1.5.11"
* item[=].item[=].item[=].item[=].answer.valueReference.identifier.value = "123456789" 
* item[=].item[=].item[=].item[=].answer.valueReference.display = "Ambulatoorne epikriis"

* item[=].item[+].linkId = "blood_problems.no_complaints"
* item[=].item[=].text = "Kaebused hetkel puuduvad"
* item[=].item[=].answer.valueBoolean = true

* item[+].linkId = "medical_device"
* item[=].text = "Kasutan järgmisi meditsiiniseadmeid/abivahendeid"

* item[=].item[0].linkId = "medical_device.nothing_used"
* item[=].item[=].text = "Ei kasuta"
* item[=].item[=].answer.valueBoolean = false

* item[=].item[+].linkId = "medical_device.eye_glasses"
* item[=].item[=].text = "Prillid"
* item[=].item[=].answer.valueBoolean = true

* item[=].item[=].item[0].linkId = "medical_device.eye_glasses.specify"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].answer.valueString = "Kasutan lugemiseks prille"

* item[=].item[+].linkId = "medical_device.eye_lenses"
* item[=].item[=].text = "Kontaktläätsed"
* item[=].item[=].answer.valueBoolean = false

* item[=].item[+].linkId = "medical_device.hearing_aid"
* item[=].item[=].text = "Kuuldeaparaat/kohleaarimplantaat"
* item[=].item[=].answer.valueBoolean = false

* item[=].item[+].linkId = "medical_device.arm_prosthestis"
* item[=].item[=].text = "Käeprotees"
* item[=].item[=].answer.valueBoolean = false

* item[=].item[+].linkId = "medical_device.leg_prosthestis"
* item[=].item[=].text = "Jalaprotees"
* item[=].item[=].answer.valueBoolean = false

* item[=].item[+].linkId = "medical_device.mobility_support"
* item[=].item[=].text = "Liikumise abivahend"
* item[=].item[=].answer.valueBoolean = false

* item[=].item[+].linkId = "medical_device.other_support"
* item[=].item[=].text = "Muu abivahend"
* item[=].item[=].answer.valueBoolean = false

* item[=].item[+].linkId = "medical_device.cpap"
* item[=].item[=].text = "Positiivrõhuaparaat (CPAP) või mitteinvasiivse ventilatsiooni seade"
* item[=].item[=].answer.valueBoolean = true

* item[=].item[+].linkId = "medical_device.intraoral_sleep_apnoea"
* item[=].item[=].text = "Intraoraalne uneapnoe seade"
* item[=].item[=].answer.valueBoolean = false

* item[+].linkId = "sleep"
* item[=].text = "Uni"

* item[=].item[0].linkId = "sleep.diagnoses"
* item[=].item[=].text = "Varasemad diagnoosid"

* item[=].item[=].item[0].linkId = "v.diagnoses.group"
* item[=].item[=].item[=].text = "Varasem diagnoos"

* item[=].item[=].item[=].item[0].linkId = "sleep.diagnoses.group.diagnosis"
* item[=].item[=].item[=].item[=].text = "Diagnoos"
* item[=].item[=].item[=].item[=].answer.valueCoding.system = "https://fhir.ee/ValueSet/td-uni"
* item[=].item[=].item[=].item[=].answer.valueCoding.code = #G47.4
* item[=].item[=].item[=].item[=].answer.valueCoding.display = "Narkolepsia ja katapleksia"

* item[=].item[=].item[=].item[+].linkId = "sleep.diagnoses.group.description"
* item[=].item[=].item[=].item[=].text = "Sõnaline diagnoos"
* item[=].item[=].item[=].item[=].answer.valueString = "Vajun igapäevategevusi tehes lihtsasti unne"

* item[=].item[=].item[=].item[+].linkId = "sleep.diagnoses.group.source_reference"
* item[=].item[=].item[=].item[=].text = "Allika viide"
* item[=].item[=].item[=].item[=].answer.valueReference.identifier.system = "urn:oid:1.3.6.1.4.1.28284.6.1.1.5.11"
* item[=].item[=].item[=].item[=].answer.valueReference.identifier.value = "123456789" 
* item[=].item[=].item[=].item[=].answer.valueReference.display = "Ambulatoorne epikriis"

* item[=].item[+].linkId = "sleep.snoring"
* item[=].item[=].text = "Kas Te norskate valjult (valjemini kui tavaline kõne, või Teie norskamist on kosta kõrvalruumi ka siis, kui magamistoa uks on suletud)?"
* item[=].item[=].answer.valueBoolean = true

* item[=].item[=].item[0].linkId = "sleep.snoring.specify"
* item[=].item[=].item[=].text = "Täpsustus"
* item[=].item[=].item[=].answer.valueString = "Äratan pidevalt elukaaslase üles norskamisega"

* item[=].item[=].linkId = "sleep.fatigue"
* item[=].item[=].text = "Kas Te tunnete end sageli mitteväljapuhanuna, väsinuna või unisena päevasel ajal?"
* item[=].item[=].answer.valueBoolean = true

* item[=].item[=].item[0].linkId = "sleep.fatigue.specify"
* item[=].item[=].item[=].text = "Täpsustus"
* item[=].item[=].item[=].answer.valueString = "Ebakvaliteetsest unest ja norskamisest tingituna olen ka hommikul väsinud"

* item[=].item[+].linkId = "sleep.breath_stop_during_sleep"
* item[=].item[=].text = "Kas Teil on täheldatud uneaegseid hingamisseisakuid?"
* item[=].item[=].answer.valueBoolean = false

* item[+].linkId = "health_assessment"
* item[=].text = "Hinnang enda terviseseisundile"

//Vajab õiget loendit
* item[=].item[0].linkId = "health_assessment.patient_evaluation"
* item[=].item[=].text = "Milline on Teie hinnang oma tervisele?"
* item[=].item[=].answer.valueCoding.system = "https://fhir.ee/ValueSet/td-hinnang-tervisele"
* item[=].item[=].answer.valueCoding.code = #1
* item[=].item[=].answer.valueCoding.display = "Hea"

* item[=].item[=].item[0].linkId = "health_assessment.patient_evaluation.specify"
* item[=].item[=].item[=].text = "Täpsustus"
* item[=].item[=].item[=].answer.valueString = "Kuigi muresid on palju, siis olen üldiselt positiivselt meelestatud"

* item[=].item[+].linkId = "health_assessment.last_year_illness"
* item[=].item[=].text = "Kas olete viimase aasta jooksul olnud haige?"
* item[=].item[=].answer.valueBoolean = true

* item[=].item[=].item[0].linkId = "health_assessment.last_year_illness.specify"
* item[=].item[=].item[=].text = "Täpsustus"
* item[=].item[=].item[=].answer.valueString = "Palavik eelmisel kuul (vist oli COVID-19)"

* item[=].item[+].linkId = "health_assessment.complaints"
* item[=].item[=].text = "Kas Teil on enda tervise osas kaebusi?"
* item[=].item[=].answer.valueBoolean = false

* item[=].item[+].linkId = "health_assessment.sick_days"
* item[=].item[=].text = "Haiguslehed"

* item[=].item[=].item[0].linkId = "health_assessment.sick_days.foreign_country_sick_days_duration"
* item[=].item[=].item[=].text = "Viimase 5 aasta jooksul välisriigis väljastatud haiguslehtede alguse kuupäev ja kestvus päevades"
* item[=].item[=].item[=].answer.valueString = "Ei ole käinud reisil"

* item[=].item[=].item[+].linkId = "health_assessment.sick_days.five_year_sick_days"
* item[=].item[=].item[=].text = "Haiguslehed (viimase 5 aasta andmed Tervisekassast)"

* item[=].item[=].item[=].item[0].linkId = "health_assessment.sick_days.five_year_sick_days.sick_day"
* item[=].item[=].item[=].item[=].text = "Haigusleht"

* item[=].item[=].item[=].item[=].item[0].linkId = "health_assessment.sick_days.five_year_sick_days.sick_day.from"
* item[=].item[=].item[=].item[=].item[=].text = "Alates"
* item[=].item[=].item[=].item[=].item[=].answer.valueDate = 2024-07-01

* item[=].item[=].item[=].item[=].item[+].linkId = "health_assessment.sick_days.five_year_sick_days.sick_day.duration"
* item[=].item[=].item[=].item[=].item[=].text = "Kestus päevades"
* item[=].item[=].item[=].item[=].item[=].answer.valueInteger = 8

* item[=].item[=].item[=].item[=].item[+].linkId = "health_assessment.sick_days.five_year_sick_days.sick_day.diagnosis"
* item[=].item[=].item[=].item[=].item[=].text = "Diagnoos"
* item[=].item[=].item[=].item[=].item[=].answer.valueCoding.system = "https://fhir.ee/ValueSet/td-traumad"
* item[=].item[=].item[=].item[=].item[=].answer.valueCoding.code = #T63.2
* item[=].item[=].item[=].item[=].item[=].answer.valueCoding.display = "Skorpionimürk"

* item[=].item[+].linkId = "health_assessment.work_disability"
* item[=].item[=].text = "Töövõimetus"

* item[=].item[=].item[0].linkId = "health_assessment.work_disability.foreign_work_disability_given"
* item[=].item[=].item[=].text = "Kas Teile on välisriigis määratud töövõime osaline kaotus?"
* item[=].item[=].item[=].answer.valueBoolean = false

* item[=].item[=].item[+].linkId = "health_assessment.work_disability.partial_work_disability"
* item[=].item[=].item[=].text = "Osaline töövõimetus (andmed Sotsiaalkindlustusametist)"

* item[=].item[=].item[=].item[0].linkId = "health_assessment.work_disability.partial_work_disability.from"
* item[=].item[=].item[=].item[=].text = "Alates"
* item[=].item[=].item[=].item[=].answer.valueDate = 2024-10-01

* item[=].item[=].item[=].item[+].linkId = "health_assessment.work_disability.partial_work_disability.to"
* item[=].item[=].item[=].item[=].text = "Kuni"
* item[=].item[=].item[=].item[=].answer.valueDate = 2025-10-01

* item[=].item[=].item[=].item[+].linkId = "health_assessment.work_disability.partial_work_disability.work_disability_type"
* item[=].item[=].item[=].item[=].text = "Töövõimeliik"
* item[=].item[=].item[=].item[=].answer.valueCoding.system = "https://fhir.ee/CodeSystem/toovoime-liik"
* item[=].item[=].item[=].item[=].answer.valueCoding.code = #Osaline
* item[=].item[=].item[=].item[=].answer.valueCoding.display =	"Osaline töövõime"

* item[=].item[+].linkId = "health_assessment.disability"
* item[=].item[=].text = "Puue"

* item[=].item[=].item[0].linkId = "health_assessment.disability.foreign_disability_given"
* item[=].item[=].item[=].text = "Kas Teil on välisriigis tuvastatud puue?"
* item[=].item[=].item[=].answer.valueBoolean = false


































Instance: QuestionnairePatient
InstanceOf: Patient
Description: "Patsient erinevate identifikaatoritega"
Usage: #example
* id = "katipiiriylene"
* active = true
* identifier[0]
  * system = "https://fhir.ee/sid/pid/est/ni"
  * value = "49406240016"
* name
  * use = #official
  * given = "Kati"
  * family = "Piiriülene"
* gender = #female

