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
* item[=].item[=].item[=].item[=].answer.valueReference = Reference(QuestionnaireConditionSegatyypiHaire)

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
* item[=].item[=].item[=].item[=].answer.valueReference = Reference(QuestionnaireConditionArrituvusViha)

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
* item[=].item[=].item[=].item[=].answer.valueReference = Reference(QuestionnaireConditionKausalgia)

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
* item[=].item[=].item[=].item[=].answer.valueReference = Reference(QuestionnaireConditionKarpaaltunnel)

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

Instance: QuestionnaireConditionKausalgia
InstanceOf: Condition
Description: "Patsiendi diagnoos - kausalgia"
Usage: #example
* clinicalStatus = #active
* verificationStatus = #confirmed
* subject = Reference(QuestionnairePatient)

* code.coding[0].system = "https://fhir.ee/ValueSet/td-narvisusteem"
* code.coding[0].code = #G56.4
* code.coding[0].display = "Kausalgia"

Instance: QuestionnaireConditionKarpaaltunnel
InstanceOf: Condition
Description: "Patsiendi diagnoos - karpaaltunnel"
Usage: #example
* clinicalStatus = #active
* verificationStatus = #confirmed
* subject = Reference(QuestionnairePatient)

* code.coding[0].system = "https://fhir.ee/ValueSet/td-narvisusteem"
* code.coding[0].code = #G56.0
* code.coding[0].display = "Kausalgia"

Instance: QuestionnaireConditionArrituvusViha
InstanceOf: Condition
Description: "Patsiendi diagnoos - ärrituvus ja viha"
Usage: #example
* clinicalStatus = #active
* verificationStatus = #confirmed
* subject = Reference(QuestionnairePatient)

* code.coding[0].system = "https://fhir.ee/ValueSet/td-psyyhika"
* code.coding[0].code = #R45.4
* code.coding[0].display = "Ärrituvus ja viha"

Instance: QuestionnaireConditionSegatyypiHaire
InstanceOf: Condition
Description: "Patsiendi diagnoos - segatüüpi isiksushäire"
Usage: #example
* clinicalStatus = #active
* verificationStatus = #confirmed
* subject = Reference(QuestionnairePatient)

* code.coding[0].system = "https://fhir.ee/ValueSet/td-psyyhika"
* code.coding[0].code = #F61.0
* code.coding[0].display = "Segatüüpi isiksushäired"


