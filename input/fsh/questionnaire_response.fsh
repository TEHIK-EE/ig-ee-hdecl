Profile: EEHealthDeclarationResponse
Parent: QuestionnaireResponse
Id: EEHealthDeclarationResponse
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

Instance: ExampleEEHealthDeclarationResponse
InstanceOf: EEHealthDeclarationResponse
Description: "Näidis andmestik küsimustikust vastusest"
Usage: #example
* status = #completed
* meta.versionId = "1.0"
* questionnaire = "https://fhir.ee/StructureDefinition/EEHealthDeclaration"
* subject = Reference(QuestionnairePatient)
* authored =  2024-01-01
* author = Reference(QuestionnairePatient)
* item[0].linkId = "1"
* item[=].text = "Elustiil"
* item[=].item[0].linkId = "1.1"
* item[=].item[=].text = "Kas te tarbite alkoholi?"
* item[=].item[=].answer.valueBoolean = true
* item[=].item[=].answer.item[0].linkId = "1.1.1"
* item[=].item[=].answer.item[=].text =  "Mitu ühikut nädalas? (1 ühik = 40 ml 40% kangusega alkoholi)"
* item[=].item[=].answer.item[=].answer.valueDecimal =  3.4
* item[=].item[+].linkId = "1.2"
* item[=].item[=].text = "Kas te suitsetate?"
* item[=].item[=].answer.valueBoolean = true
* item[=].item[=].answer.item[0].linkId = "1.2.1"
* item[=].item[=].answer.item[=].text =  "Mitu sigaretti päevas?"
* item[=].item[=].answer.item[=].answer.valueInteger = 20
* item[=].item[=].answer.item[+].linkId = "1.2.2"
* item[=].item[=].answer.item[=].text =  "Mitu aastat olete järjest suitsetanud?"
* item[=].item[=].answer.item[=].answer.valueDecimal = 45.0
* item[=].item[+].linkId = "1.3"
* item[=].item[=].text = "Kas tarvitate narkootilisi/psühhotroopseid aineid?"
* item[=].item[=].answer.valueBoolean = true
* item[=].item[=].answer.item[0].linkId = "1.3.1"
* item[=].item[=].answer.item[=].text =  "Kirjeldage, kui sageli"
* item[=].item[=].answer.item[=].answer.valueString = "Igapäevaselt tarvitan narkot"
* item[=].item[+].linkId = "1.4"
* item[=].item[=].text = "Kas kasutate ravimeid, mis võivad Teie arvates mõjutada Teie keskendumisvõimet ja koordinatsiooni?"
* item[=].item[=].answer.valueBoolean = true
* item[=].item[=].answer.item[0].linkId = "1.4.1"
* item[=].item[=].answer.item[=].text =  "Täpsustus"
* item[=].item[=].answer.item[=].answer.valueString = "Kodeiin ja muud opioidid"
* item[+].linkId = "2"
* item[=].text = "Töökeskkond"
* item[=].item[0].linkId = "2.1"
* item[=].item[=].text = "Kas Teile on tervisekontrolli põhjal varem seatud tööpiiranguid? Kui jah, mille tõttu?"
* item[=].item[=].answer.valueBoolean = true
* item[=].item[=].answer.item[0].linkId = "2.1.1"
* item[=].item[=].answer.item[=].text =  "Täpsustus"
* item[=].item[=].answer.item[=].answer.valueString =  "Psühholoogilise stressi tõttu takistatud tööd"
* item[=].item[+].linkId = "2.2"
* item[=].item[=].text = "Kas Teil esineb või on esinenud tervisehäireid, mida seostate oma tööülesannete täitmise või töökeskkonnaga?"
* item[=].item[=].answer.valueBoolean = true
* item[=].item[=].answer.item[0].linkId = "2.2.1"
* item[=].item[=].answer.item[=].text =  "Täpsustus"
* item[=].item[=].answer.item[=].answer.valueString =  "Hingamisraskused tingitud töökeskkonnast"
* item[=].item[+].linkId = "2.3"
* item[=].item[=].text = "Kas Teil on diagnoositud kutsehaigus?"
* item[=].item[=].answer.valueBoolean = true
* item[=].item[+].linkId = "2.4"
* item[=].item[=].text = "Kas Teil on diagnoositud tööst põhjustatud haigus?"
* item[=].item[=].answer.valueBoolean = false
* item[=].item[+].linkId = "2.5"
* item[=].item[=].text = "Kas tööl kasutatavad isikukaitsevahendid põhjustavad Teile terviseprobleeme?"
* item[=].item[=].answer.valueBoolean = true
* item[=].item[=].answer.item[0].linkId = "2.5.1"
* item[=].item[=].answer.item[=].text =  "Täpsustus"
* item[=].item[=].answer.item[=].answer.valueString =  "Kiivri kandmine tekitab peavalu"
* item[+].linkId = "3"
* item[=].text = "Allergiad"
* item[=].item[0].linkId = "3.1"
* item[=].item[=].text = "Kaebused hetkel puuduvad"
* item[=].item[=].answer.valueBoolean = true
* item[+].linkId = "4"
* item[=].text = "Psüühika"
* item[=].item[0].linkId = "4.0"
* item[=].item[=].text = "Varasemad diagnoosid"
* item[=].item[=].item[0].linkId = "4.0.1"
* item[=].item[=].item[=].item[0].linkId = "4.0.1.1"
* item[=].item[=].item[=].item[=].text = "Diagnoos"
* item[=].item[=].item[=].item[=].answer.valueCoding.system = "https://fhir.ee/ValueSet/td-psyyhika"
* item[=].item[=].item[=].item[=].answer.valueCoding.code = #F61.0
* item[=].item[=].item[=].item[=].answer.valueCoding.display = "Segatüüpi isiksushäired"
* item[=].item[+].linkId = "4.1"
* item[=].item[=].text = "Kaebused hetkel puuduvad"
* item[=].item[=].answer.valueBoolean = false




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
