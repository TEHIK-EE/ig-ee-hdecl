Profile: EEHealthDeclarationQuestionnaire
Parent: Questionnaire
Id: EEHealthDeclarationQuestionnaire
Description: "Tervisedeklaratsiooni küsimustiku profiil"
* ^version = "1.0.0"
* ^status = #draft
* ^date = "2024-01-01"
* url 1..1
* versionAlgorithm[x] 0..0
* identifier 0..0
* derivedFrom 0..0
* experimental 0..0
* subjectType = #Patient
* publisher 0..0
* contact 0..0
* useContext 0..0
* jurisdiction 0..0
* purpose 0..0
* copyright 0..0
* copyrightLabel 0..0
* approvalDate 1..1
* lastReviewDate 0..0
* effectivePeriod 0..1
* name = "HDECL"
* title = "Tervisedeklaratsiooni küsimustik"
* description = "Tervisedeklaratsiooni küsimustik"
* code 1..1
* item 1..*
  * linkId 1..1
  * definition 0..0
  * code 0..*
  * prefix 0..1
  * text 0..1
  * initial 0..0
  * type 1..1
  * required 1..1

Instance: ExampleEEHealthDeclarationQuestionnaire
InstanceOf: EEHealthDeclarationQuestionnaire
Description: "Näidis tervisedeklaratsiooni andmestik"
Usage: #example
* url = "http://fhir.ee/StructureDefinition/EEHealthDeclaration"
* status = #draft
* approvalDate = "2024-01-01"
* code.system = "http://fhir.ee/CodeSystem/dokumendi-tyyp"
* code.code = #81
* code.display = "Tervisedeklaratsioon"

* item[0].linkId = "declaration.category"
* item[=].prefix = "0"
* item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].code.code = #decl_category
* item[=].code.display = "Kasutusala"
* item[=].type = #coding
* item[=].answerValueSet = "https://fhir.ee/ValueSet/tervisetoendi-otsuse-kasutusala"
* item[=].answerOption[0].valueCoding.system = "https://fhir.ee/ValueSet/tervisetoendi-otsuse-kasutusala"
* item[=].answerOption[0].valueCoding.code = #1
* item[=].answerOption[0].valueCoding.display = "I grupi mootorsõidukijuht"
* item[=].answerOption[1].valueCoding.system = "https://fhir.ee/ValueSet/tervisetoendi-otsuse-kasutusala"
* item[=].answerOption[1].valueCoding.code = #2
* item[=].answerOption[1].valueCoding.display = "II grupi mootorsõidukijuht"
* item[=].answerOption[2].valueCoding.system = "https://fhir.ee/ValueSet/tervisetoendi-otsuse-kasutusala"
* item[=].answerOption[2].valueCoding.code = #6
* item[=].answerOption[2].valueCoding.display = "Töötervishoid"
* item[=].answerOption[3].valueCoding.system = "https://fhir.ee/ValueSet/tervisetoendi-otsuse-kasutusala"
* item[=].answerOption[3].valueCoding.code = #7
* item[=].answerOption[3].valueCoding.display = "Kaitseväeteenistus"
* item[=].required = true
* item[=].text = "Kasutusala"

* item[+].linkId = "lifestyle"
* item[=].prefix = "1"
* item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].code.code = #lifestyle_title
* item[=].code.display = "Elustiil"
* item[=].type = #group
* item[=].required = true
* item[=].text = "Elustiil"

* item[=].item[0].linkId = "lifestyle.alcohol"
* item[=].item[=].prefix = "1.1"
* item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].code.code = #lifestyle_alcohol
* item[=].item[=].code.display = "Kas te tarbite alkoholi?"
* item[=].item[=].type = #boolean
* item[=].item[=].required = true
* item[=].item[=].text = "Kas te tarbite alkoholi?"

* item[=].item[=].item[0].linkId = "lifestyle.alcohol.amount"
* item[=].item[=].item[=].prefix = "1.1.1"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #lifestyle_alcohol_amount
* item[=].item[=].item[=].code.display = "Mitu ühikut nädalas? (1 ühik = 40 ml 40% kanget alkoholi või 120 ml 12% veini või 250 ml 5,2% õlut)"
* item[=].item[=].item[=].type = #decimal
* item[=].item[=].item[=].enableWhen.question = "lifestyle.alcohol"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].text = "Mitu ühikut nädalas?"

* item[=].item[+].linkId = "lifestyle.smoking"
* item[=].item[=].prefix = "1.2"
* item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].code.code = #lifestyle_smoking
* item[=].item[=].code.display = "Kas te suitsetate?"
* item[=].item[=].text = "Kas te suitsetate?"
* item[=].item[=].type = #boolean
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "lifestyle.smoking.amount"
* item[=].item[=].item[=].prefix = "1.2.1"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #lifestyle_smoking_amount
* item[=].item[=].item[=].code.display = "Mitu sigaretti päevas?"
* item[=].item[=].item[=].text = "Mitu sigaretti päevas?"
* item[=].item[=].item[=].type = #integer
* item[=].item[=].item[=].enableWhen.question = "lifestyle.smoking"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true

* item[=].item[=].item[+].linkId = "lifestyle.smoking.period"
* item[=].item[=].item[=].prefix = "1.2.2"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #lifestyle_smoking_period
* item[=].item[=].item[=].code.display = "Mitu aastat olete järjest suitsetanud"
* item[=].item[=].item[=].text = "Mitu aastat olete järjest suitsetanud?"
* item[=].item[=].item[=].type = #decimal
* item[=].item[=].item[=].enableWhen.question = "lifestyle.smoking"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true

* item[=].item[=].item[+].linkId = "lifestyle.smoking.quit"
* item[=].item[=].item[=].prefix = "1.2.3"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #lifestyle_smoking_quit
* item[=].item[=].item[=].code.display = "Kui olete loobunud suitsetamisest, siis millal loobusite?"
* item[=].item[=].item[=].text = "Kui olete loobunud suitsetamisest, siis millal loobusite? "
* item[=].item[=].item[=].type = #date
* item[=].item[=].item[=].enableWhen.question = "lifestyle.smoking"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].item[=].required = true

* item[=].item[+].linkId = "lifestyle.narcotics"
* item[=].item[=].prefix = "1.3"
* item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].code.code = #lifestyle_narcotics
* item[=].item[=].code.display = "Kas tarvitate narkootilisi/psühhotroopseid aineid?"
* item[=].item[=].text = "Kas tarvitate narkootilisi/psühhotroopseid aineid?"
* item[=].item[=].type = #boolean
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "lifestyle.narcotics.how_often"
* item[=].item[=].item[=].prefix = "1.3.1"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #how_often
* item[=].item[=].item[=].code.display = "Kirjeldage kui sageli"
* item[=].item[=].item[=].text = "Kirjeldage, kui sageli"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].enableWhen.question = "lifestyle.narcotics"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true

* item[=].item[+].linkId = "lifestyle.drugs"
* item[=].item[=].prefix = "1.4"
* item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].code.code = #lifestyle_drugs
* item[=].item[=].code.display = "Kas kasutate ravimeid, mis võivad Teie arvates mõjutada Teie keskendumisvõimet ja koordinatsiooni?"
* item[=].item[=].text = "Kas kasutate ravimeid, mis võivad Teie arvates mõjutada Teie keskendumisvõimet ja koordinatsiooni?"
* item[=].item[=].type = #boolean
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "lifestyle.drugs.specify"
* item[=].item[=].item[=].prefix = "1.4.1"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #specify
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "lifestyle.drugs"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true

* item[+].linkId = "work_environment"
* item[=].prefix = "2"
* item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].code.code = #work_environment
* item[=].code.display = "Töökeskkond"
* item[=].text = "Töökeskkond"
* item[=].type = #group
* item[=].required = true

* item[=].item[0].linkId = "work_environment.restrictions"
* item[=].item[=].prefix = "2.1"
* item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].code.code = #work_environment_restrictions
* item[=].item[=].code.display = "Kas Teile on tervisekontrolli põhjal varem seatud tööpiiranguid? Kui jah, mille tõttu?"
* item[=].item[=].text = "Kas Teile on tervisekontrolli põhjal varem seatud tööpiiranguid? Kui jah, mille tõttu?"
* item[=].item[=].type = #boolean
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "work_environment.restrictions.specify"
* item[=].item[=].item[=].prefix = "2.1.1"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #specify
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsustus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "work_environment.restrictions"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true

* item[=].item[+].linkId = "work_environment.health_problems"
* item[=].item[=].prefix = "2.2"
* item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].code.code = #work_environment_health_problems
* item[=].item[=].code.display = "Kas Teil esineb või on esinenud tervisehäireid, mida seostate oma tööülesannete täitmise või töökeskkonnaga?"
* item[=].item[=].text = "Kas Teil esineb või on esinenud tervisehäireid, mida seostate oma tööülesannete täitmise või töökeskkonnaga?"
* item[=].item[=].type = #boolean
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "work_environment.health_problems.specify"
* item[=].item[=].item[=].prefix = "2.2.1"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #specify
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "work_environment.health_problems"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true

* item[=].item[+].linkId = "work_environment.occupational_diagnosis"
* item[=].item[=].prefix = "2.3"
* item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].code.code = #work_environment_occupational_diagnosis
* item[=].item[=].code.display = "Kas Teil on diagnoositud kutsehaigus?"
* item[=].item[=].text = "Kas Teil on diagnoositud kutsehaigus?"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "declaration.category"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerCoding = #6
* item[=].item[=].required = true

* item[=].item[+].linkId = "work_environment.general_diagnosis"
* item[=].item[=].prefix = "2.4"
* item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].code.code = #work_environment_general_diagnosis
* item[=].item[=].code.display = "Kas Teil on diagnoositud tööst põhjustatud haigus?"
* item[=].item[=].text = "Kas Teil on diagnoositud tööst põhjustatud haigus?"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "declaration.category"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerCoding = #6
* item[=].item[=].required = true

* item[=].item[+].linkId = "work_environment.ppe_problems"
* item[=].item[=].prefix = "2.5"
* item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].code.code = #work_environment_ppe_problems
* item[=].item[=].code.display = "Kas tööl kasutatavad isikukaitsevahendid põhjustavad Teile terviseprobleeme?"
* item[=].item[=].text = "Kas tööl kasutatavad isikukaitsevahendid põhjustavad Teile terviseprobleeme?"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "declaration.category"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerCoding = #6
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "work_environment.ppe_problems.specify"
* item[=].item[=].item[=].prefix = "2.5.1"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #specify
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "work_environment.ppe_problems"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true

* item[+].linkId = "allergies"
* item[=].prefix = "3"
* item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].code.code = #allergies
* item[=].code.display = "Allergiad"
* item[=].text = "Allergiad"
* item[=].type = #group
* item[=].required = true

* item[=].item[0].linkId = "allergies.diagnoses"
* item[=].item[=].prefix = "3.0"
* item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].code.code = #previous_diagnoses
* item[=].item[=].code.display = "Varasemad diagnoosid"
* item[=].item[=].text = "Varasemad diagnoosid"
* item[=].item[=].type = #group
* item[=].item[=].required = false

* item[=].item[=].item[0].linkId = "allergies.diagnoses.group"
* item[=].item[=].item[=].prefix = "3.0.1"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #previous_diagnosis_singular
* item[=].item[=].item[=].code.display = "Varasem diagnoos"
* item[=].item[=].item[=].text = "Varasem diagnoos"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].repeats = true

* item[=].item[=].item[=].item[0].linkId = "allergies.diagnoses.group.diagnosis"
* item[=].item[=].item[=].item[=].prefix = "3.0.1.1"
* item[=].item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].item[=].code.code = #diagnosis
* item[=].item[=].item[=].item[=].code.display = "Diagnoos"
* item[=].item[=].item[=].item[=].text = "Diagnoos"
* item[=].item[=].item[=].item[=].type = #coding
* item[=].item[=].item[=].item[=].answerValueSet = "https://fhir.ee/ValueSet/td-allergia"
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[=].item[+].linkId = "allergies.diagnoses.group.description"
* item[=].item[=].item[=].item[=].prefix = "3.0.1.2"
* item[=].item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].item[=].code.code = #diagnosis_description
* item[=].item[=].item[=].item[=].code.display = "Sõnaline diagnoos"
* item[=].item[=].item[=].item[=].text = "Sõnaline diagnoos"
* item[=].item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].item[=].required = false
* item[=].item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[=].item[+].linkId = "allergies.diagnoses.group.source_reference"
* item[=].item[=].item[=].item[=].prefix = "3.0.1.3"
* item[=].item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].item[=].code.code = #source_reference
* item[=].item[=].item[=].item[=].code.display = "Allika viide"
* item[=].item[=].item[=].item[=].text = "Allika viide"
* item[=].item[=].item[=].item[=].type = #reference
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].readOnly = true

* item[=].item[+].linkId = "allergies.no_complaints"
* item[=].item[=].prefix = "3.1"
* item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].code.code = #no_complaints
* item[=].item[=].code.display = "Kaebused hetkel puuduvad"
* item[=].item[=].text = "Kaebused hetkel puuduvad"
* item[=].item[=].type = #boolean
* item[=].item[=].required = true

* item[=].item[+].linkId = "allergies.medication"
* item[=].item[=].prefix = "3.2"
* item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].code.code = #allergies_to_medication
* item[=].item[=].code.display = "Allergia ravimitele (palun täpsustage)"
* item[=].item[=].text = "Allergia ravimitele (palun täpsustage)"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "allergies.no_complaints"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "allergies.medication.specify"
* item[=].item[=].item[=].prefix = "3.2.1"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #specify
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "allergies.medication"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true

* item[=].item[+].linkId = "allergies.food"
* item[=].item[=].prefix = "3.3"
* item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].code.code = #allergies_to_food
* item[=].item[=].code.display = "Allergia toiduainetele (palun täpsustage)"
* item[=].item[=].text = "Allergia toiduainetele (palun täpsustage)"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "allergies.no_complaints"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "allergies.food.specify"
* item[=].item[=].item[=].prefix = "3.3.1"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #specify
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "allergies.food"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true

* item[=].item[+].linkId = "allergies.pollen"
* item[=].item[=].prefix = "3.4"
* item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].code.code = #allergies_to_pollen
* item[=].item[=].code.display = "Allergia õietolmule (palun täpsustage)"
* item[=].item[=].text = "Allergia õietolmule (palun täpsustage)"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "allergies.no_complaints"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "allergies.pollen.specify"
* item[=].item[=].item[=].prefix = "3.4.1"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #specify
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "allergies.pollen"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true

* item[=].item[+].linkId = "allergies.animals"
* item[=].item[=].prefix = "3.5"
* item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].code.code = #allergies_to_animals
* item[=].item[=].code.display = "Allergia koduloomadele või -lindudele (palun täpsustage)"
* item[=].item[=].text = "Allergia koduloomadele või -lindudele (palun täpsustage)"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "allergies.no_complaints"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "allergies.animals.specify"
* item[=].item[=].item[=].prefix = "3.5.1"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #specify
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "allergies.animals"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true

* item[=].item[+].linkId = "allergies.other"
* item[=].item[=].prefix = "3.6"
* item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].code.code = #allergies_to_other
* item[=].item[=].code.display = "Allergia muudele ainetele (palun täpsustage)"
* item[=].item[=].text = "Allergia muudele ainetele (palun täpsustage)"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "allergies.no_complaints"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "allergies.other.specify"
* item[=].item[=].item[=].prefix = "3.6.1"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #specify
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "allergies.other"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true

* item[+].linkId = "mental_state"
* item[=].prefix = "4"
* item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].code.code = #mental_state
* item[=].code.display = "Psüühika"
* item[=].text = "Psüühika"
* item[=].type = #group
* item[=].required = true

* item[=].item[0].linkId = "mental_state.diagnoses"
* item[=].item[=].prefix = "4.0"
* item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].code.code = #previous_diagnoses
* item[=].item[=].code.display = "Varasemad diagnoosid"
* item[=].item[=].text = "Varasemad diagnoosid"
* item[=].item[=].type = #group
* item[=].item[=].required = false

* item[=].item[=].item[0].linkId = "mental_state.diagnoses.group"
* item[=].item[=].item[=].prefix = "4.0.1"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #previous_diagnosis_singular
* item[=].item[=].item[=].code.display = "Varasem diagnoos"
* item[=].item[=].item[=].text = "Varasem diagnoos"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].repeats = true

* item[=].item[=].item[=].item[0].linkId = "mental_state.diagnoses.group.diagnosis"
* item[=].item[=].item[=].item[=].prefix = "4.0.1.1"
* item[=].item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].item[=].code.code = #diagnosis
* item[=].item[=].item[=].item[=].code.display = "Diagnoos"
* item[=].item[=].item[=].item[=].text = "Diagnoos"
* item[=].item[=].item[=].item[=].type = #coding
* item[=].item[=].item[=].item[=].answerValueSet = "https://fhir.ee/ValueSet/td-psyyhika"
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[=].item[+].linkId = "mental_state.diagnoses.group.description"
* item[=].item[=].item[=].item[=].prefix = "4.0.1.2"
* item[=].item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].item[=].code.code = #diagnosis_description
* item[=].item[=].item[=].item[=].code.display = "Sõnaline diagnoos"
* item[=].item[=].item[=].item[=].text = "Sõnaline diagnoos"
* item[=].item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].item[=].required = false
* item[=].item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[=].item[+].linkId = "mental_state.diagnoses.group.source_reference"
* item[=].item[=].item[=].item[=].prefix = "4.0.1.3"
* item[=].item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].item[=].code.code = #source_reference
* item[=].item[=].item[=].item[=].code.display = "Allika viide"
* item[=].item[=].item[=].item[=].text = "Allika viide"
* item[=].item[=].item[=].item[=].type = #reference
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].readOnly = true

* item[=].item[+].linkId = "mental_state.no_complaints"
* item[=].item[=].prefix = "4.1"
* item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].code.code = #no_complaints
* item[=].item[=].code.display = "Kaebused hetkel puuduvad"
* item[=].item[=].text = "Kaebused hetkel puuduvad"
* item[=].item[=].type = #boolean
* item[=].item[=].required = true

* item[=].item[+].linkId = "mental_state.depression"
* item[=].item[=].prefix = "4.2"
* item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].code.code = #depression
* item[=].item[=].code.display = "Depressioon"
* item[=].item[=].text = "Depressioon"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "mental_state.no_complaints"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "mental_state.depression.specify"
* item[=].item[=].item[=].prefix = "4.2.1"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #specify
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "mental_state.depression"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true

* item[=].item[+].linkId = "mental_state.schizophrenia"
* item[=].item[=].prefix = "4.3"
* item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].code.code = #schizophrenia
* item[=].item[=].code.display = "Skisofreenia"
* item[=].item[=].text = "Skisofreenia"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "mental_state.no_complaints"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "mental_state.schizophrenia.specify"
* item[=].item[=].item[=].prefix = "4.3.1"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #specify
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "mental_state.schizophrenia"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true

* item[=].item[+].linkId = "mental_state.work_alone"
* item[=].item[=].prefix = "4.4"
* item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].code.code = #afraid_to_work_alone
* item[=].item[=].code.display = "Kartus töötada üksinda"
* item[=].item[=].text = "Kartus töötada üksinda"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "mental_state.no_complaints"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "mental_state.work_alone.specify"
* item[=].item[=].item[=].prefix = "4.4.1"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #specify
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "mental_state.work_alone"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true

* item[=].item[+].linkId = "mental_state.claustrophobia"
* item[=].item[=].prefix = "4.5"
* item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].code.code = #claustrophobia
* item[=].item[=].code.display = "Hirm suletud ruumi ees"
* item[=].item[=].text = "Hirm suletud ruumi ees"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "mental_state.no_complaints"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "mental_state.claustrophobia.specify"
* item[=].item[=].item[=].prefix = "4.5.1"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #specify
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "mental_state.claustrophobia"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true

* item[=].item[+].linkId = "mental_state.fear_of_heights"
* item[=].item[=].prefix = "4.6"
* item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].code.code = #fear_of_heights
* item[=].item[=].code.display = "Kõrgusekartus"
* item[=].item[=].text = "Kõrgusekartus"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "mental_state.no_complaints"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "mental_state.fear_of_heights.specify"
* item[=].item[=].item[=].prefix = "4.6.1"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #specify
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "mental_state.fear_of_heights"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true

* item[=].item[+].linkId = "mental_state.other_condition"
* item[=].item[=].prefix = "4.7"
* item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].code.code = #other_condition
* item[=].item[=].code.display = "Muu haigus/seisund/sümptom (palun täpsustage)"
* item[=].item[=].text = "Muu haigus/seisund/sümptom (palun täpsustage)"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "mental_state.no_complaints"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "mental_state.other_condition.specify"
* item[=].item[=].item[=].prefix = "4.7.1"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #specify
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "mental_state.other_condition"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true

* item[=].item[+].linkId = "mental_state.stress"
* item[=].item[=].prefix = "4.8"
* item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].code.code = #stress
* item[=].item[=].code.display = "Sagedane stress"
* item[=].item[=].text = "Sagedane stress"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "mental_state.no_complaints"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "mental_state.stress.specify"
* item[=].item[=].item[=].prefix = "4.8.1"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #specify
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "mental_state.stress"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true

* item[+].linkId = "nervous_system"
* item[=].prefix = "5"
* item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].code.code = #nervous_system
* item[=].code.display = "Närvisüsteem"
* item[=].text = "Närvisüsteem"
* item[=].type = #group
* item[=].required = true

* item[=].item[0].linkId = "nervous_system.diagnoses"
* item[=].item[=].prefix = "5.0"
* item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].code.code = #previous_diagnoses
* item[=].item[=].code.display = "Varasemad diagnoosid"
* item[=].item[=].text = "Varasemad diagnoosid"
* item[=].item[=].type = #group
* item[=].item[=].required = false

* item[=].item[=].item[0].linkId = "nervous_system.diagnoses.group"
* item[=].item[=].item[=].prefix = "5.0.1"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #previous_diagnosis_singular
* item[=].item[=].item[=].code.display = "Varasem diagnoos"
* item[=].item[=].item[=].text = "Varasem diagnoos"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].repeats = true

* item[=].item[=].item[=].item[0].linkId = "nervous_system.diagnoses.group.diagnosis"
* item[=].item[=].item[=].item[=].prefix = "5.0.1.1"
* item[=].item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].item[=].code.code = #diagnosis
* item[=].item[=].item[=].item[=].code.display = "Diagnoos"
* item[=].item[=].item[=].item[=].text = "Diagnoos"
* item[=].item[=].item[=].item[=].type = #coding
* item[=].item[=].item[=].item[=].answerValueSet = "https://fhir.ee/ValueSet/td-narvisusteem"
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[=].item[+].linkId = "nervous_system.diagnoses.group.description"
* item[=].item[=].item[=].item[=].prefix = "5.0.1.2"
* item[=].item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].item[=].code.code = #diagnosis_description
* item[=].item[=].item[=].item[=].code.display = "Sõnaline diagnoos"
* item[=].item[=].item[=].item[=].text = "Sõnaline diagnoos"
* item[=].item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].item[=].required = false
* item[=].item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[=].item[+].linkId = "nervous_system.diagnoses.group.source_reference"
* item[=].item[=].item[=].item[=].prefix = "5.0.1.3"
* item[=].item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].item[=].code.code = #source_reference
* item[=].item[=].item[=].item[=].code.display = "Allika viide"
* item[=].item[=].item[=].item[=].text = "Allika viide"
* item[=].item[=].item[=].item[=].type = #reference
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].readOnly = true

* item[=].item[+].linkId = "nervous_system.no_complaints"
* item[=].item[=].prefix = "5.1"
* item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].code.code = #no_complaints
* item[=].item[=].code.display = "Kaebused hetkel puuduvad"
* item[=].item[=].text = "Kaebused hetkel puuduvad"
* item[=].item[=].type = #boolean
* item[=].item[=].required = true

* item[=].item[+].linkId = "nervous_system.syncope"
* item[=].item[=].prefix = "5.2"
* item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].code.code = #syncope
* item[=].item[=].code.display = "Teadvuse kaotuse hood"
* item[=].item[=].text = "Teadvuse kaotuse hood"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "nervous_system.no_complaints"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "nervous_system.syncope.specify"
* item[=].item[=].item[=].prefix = "5.2.1"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #specify
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "nervous_system.syncope"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true

* item[=].item[+].linkId = "nervous_system.seizures"
* item[=].item[=].prefix = "5.3"
* item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].code.code = #seizures
* item[=].item[=].code.display = "Krambihood (epilepsia ehk langetõbi)"
* item[=].item[=].text = "Krambihood (epilepsia ehk langetõbi)"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "nervous_system.no_complaints"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "nervous_system.seizures.specify"
* item[=].item[=].item[=].prefix = "5.3.1"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #specify
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "nervous_system.seizures"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true

* item[=].item[+].linkId = "nervous_system.balance_disorder"
* item[=].item[=].prefix = "5.4"
* item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].code.code = #balance_disorder
* item[=].item[=].code.display = "Tasakaaluhäired (sh Meniere'i tõbi)"
* item[=].item[=].text = "Tasakaaluhäired (sh Meniere'i tõbi)"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "nervous_system.no_complaints"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "nervous_system.balance_disorder.specify"
* item[=].item[=].item[=].prefix = "5.4.1"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #specify
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "nervous_system.balance_disorder"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true

* item[=].item[+].linkId = "nervous_system.stroke"
* item[=].item[=].prefix = "5.5"
* item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].code.code = #stroke
* item[=].item[=].code.display = "Ajuinfarkt või ajuinsult"
* item[=].item[=].text = "Ajuinfarkt või ajuinsult"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "nervous_system.no_complaints"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "nervous_system.stroke.specify"
* item[=].item[=].item[=].prefix = "5.5.1"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #specify
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "nervous_system.stroke"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true

* item[=].item[+].linkId = "nervous_system.sea_sickness"
* item[=].item[=].prefix = "5.6"
* item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].code.code = #sea_sickness
* item[=].item[=].code.display = "Merehaigus"
* item[=].item[=].text = "Merehaigus"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "nervous_system.no_complaints"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "nervous_system.sea_sickness.specify"
* item[=].item[=].item[=].prefix = "5.6.1"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #specify
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "nervous_system.sea_sickness"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true

* item[=].item[+].linkId = "nervous_system.coordination_disorder"
* item[=].item[=].prefix = "5.7"
* item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].code.code = #coordination_disorder
* item[=].item[=].code.display = "Koordinatsioonihäired (sh. kätega seonduvad)"
* item[=].item[=].text = "Koordinatsioonihäired (sh. kätega seonduvad)"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen[0].question = "nervous_system.no_complaints"
* item[=].item[=].enableWhen[0].operator = #=
* item[=].item[=].enableWhen[0].answerBoolean = false
* item[=].item[=].enableWhen[1].question = "declaration.category"
* item[=].item[=].enableWhen[1].operator = #=
* item[=].item[=].enableWhen[1].answerCoding = #6
* item[=].item[=].enableBehavior = #all
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "nervous_system.coordination_disorder.specify"
* item[=].item[=].item[=].prefix = "5.7.1"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #specify
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "nervous_system.coordination_disorder"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true

* item[=].item[+].linkId = "nervous_system.other_condition"
* item[=].item[=].prefix = "5.8"
* item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].code.code = #other_condition
* item[=].item[=].code.display = "Muu haigus/seisund/sümptom (palun täpsustage)"
* item[=].item[=].text = "Muu haigus/seisund/sümptom (palun täpsustage)"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "nervous_system.no_complaints"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "nervous_system.other_condition.specify"
* item[=].item[=].item[=].prefix = "5.8.1"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #specify
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "nervous_system.other_condition"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true

* item[+].linkId = "eyesight"
* item[=].prefix = "6"
* item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].code.code = #eyesight
* item[=].code.display = "Silmad ja nägemine"
* item[=].text = "Silmad ja nägemine"
* item[=].type = #group
* item[=].required = true

* item[=].item[0].linkId = "eyesight.diagnoses"
* item[=].item[=].prefix = "6.0"
* item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].code.code = #previous_diagnoses
* item[=].item[=].code.display = "Varasemad diagnoosid"
* item[=].item[=].text = "Varasemad diagnoosid"
* item[=].item[=].type = #group
* item[=].item[=].required = false

* item[=].item[=].item[0].linkId = "eyesight.diagnoses.group"
* item[=].item[=].item[=].prefix = "6.0.1"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #previous_diagnosis_singular
* item[=].item[=].item[=].code.display = "Varasem diagnoos"
* item[=].item[=].item[=].text = "Varasem diagnoos"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].repeats = true

* item[=].item[=].item[=].item[0].linkId = "eyesight.diagnoses.group.diagnosis"
* item[=].item[=].item[=].item[=].prefix = "6.0.1.1"
* item[=].item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].item[=].code.code = #diagnosis
* item[=].item[=].item[=].item[=].code.display = "Diagnoos"
* item[=].item[=].item[=].item[=].text = "Diagnoos"
* item[=].item[=].item[=].item[=].type = #coding
* item[=].item[=].item[=].item[=].answerValueSet = "https://fhir.ee/ValueSet/td-silmad-ja-nagemine"
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[=].item[+].linkId = "eyesight.diagnoses.group.description"
* item[=].item[=].item[=].item[=].prefix = "6.0.1.2"
* item[=].item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].item[=].code.code = #diagnosis_description
* item[=].item[=].item[=].item[=].code.display = "Sõnaline diagnoos"
* item[=].item[=].item[=].item[=].text = "Sõnaline diagnoos"
* item[=].item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].item[=].required = false
* item[=].item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[=].item[+].linkId = "eyesight.diagnoses.group.source_reference"
* item[=].item[=].item[=].item[=].prefix = "6.0.1.3"
* item[=].item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].item[=].code.code = #source_reference
* item[=].item[=].item[=].item[=].code.display = "Allika viide"
* item[=].item[=].item[=].item[=].text = "Allika viide"
* item[=].item[=].item[=].item[=].type = #reference
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].readOnly = true

* item[=].item[+].linkId = "eyesight.no_complaints"
* item[=].item[=].prefix = "6.1"
* item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].code.code = #no_complaints
* item[=].item[=].code.display = "Kaebused hetkel puuduvad"
* item[=].item[=].text = "Kaebused hetkel puuduvad"
* item[=].item[=].type = #boolean
* item[=].item[=].required = true

* item[=].item[+].linkId = "eyesight.myopia"
* item[=].item[=].prefix = "6.2"
* item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].code.code = #myopia
* item[=].item[=].code.display = "Lühinägevus"
* item[=].item[=].text = "Lühinägevus"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "eyesight.no_complaints"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "eyesight.myopia.specify"
* item[=].item[=].item[=].prefix = "6.2.1"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #specify
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "eyesight.myopia"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true

* item[=].item[+].linkId = "eyesight.limited_field_of_view"
* item[=].item[=].prefix = "6.3"
* item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].code.code = #limited_field_of_view
* item[=].item[=].code.display = "Kas üles-alla või külgedele vaadates esineb vaatevälja piiratust?"
* item[=].item[=].text = "Kas üles-alla või külgedele vaadates esineb vaatevälja piiratust?"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "eyesight.no_complaints"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "eyesight.limited_field_of_view.specify"
* item[=].item[=].item[=].prefix = "6.3.1"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #specify
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "eyesight.limited_field_of_view"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true

* item[=].item[+].linkId = "eyesight.double_vision"
* item[=].item[=].prefix = "6.4"
* item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].code.code = #double_vision
* item[=].item[=].code.display = "Kahelinägemine"
* item[=].item[=].text = "Kahelinägemine"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "eyesight.no_complaints"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "eyesight.double_vision.specify"
* item[=].item[=].item[=].prefix = "6.4.1"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #specify
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "eyesight.double_vision"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true

* item[=].item[+].linkId = "eyesight.problems_seeing_color"
* item[=].item[=].prefix = "6.5"
* item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].code.code = #problems_seeing_color
* item[=].item[=].code.display = "Värvusmeele häired"
* item[=].item[=].text = "Värvusmeele häired"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "eyesight.no_complaints"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "eyesight.problems_seeing_color.specify"
* item[=].item[=].item[=].prefix = "6.5.1"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #specify
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "eyesight.problems_seeing_color"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true

* item[=].item[+].linkId = "eyesight.other_condition"
* item[=].item[=].prefix = "6.6"
* item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].code.code = #other_condition
* item[=].item[=].code.display = "Muu haigus/seisund/sümptom (palun täpsustage)"
* item[=].item[=].text = "Muu haigus/seisund/sümptom (palun täpsustage)"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "eyesight.no_complaints"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "eyesight.other_condition.specify"
* item[=].item[=].item[=].prefix = "6.6.1"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #specify
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "eyesight.other_condition"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true

* item[+].linkId = "ear_nose_throat"
* item[=].prefix = "7"
* item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].code.code = #ear_nose_throat
* item[=].code.display = "Kõrv, nina, neel"
* item[=].text = "Kõrv, nina, neel"
* item[=].type = #group
* item[=].required = true

* item[=].item[0].linkId = "ear_nose_throat.diagnoses"
* item[=].item[=].prefix = "7.0"
* item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].code.code = #previous_diagnoses
* item[=].item[=].code.display = "Varasemad diagnoosid"
* item[=].item[=].text = "Varasemad diagnoosid"
* item[=].item[=].type = #group
* item[=].item[=].required = false

* item[=].item[=].item[0].linkId = "ear_nose_throat.diagnoses.group"
* item[=].item[=].item[=].prefix = "7.0.1"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #previous_diagnosis_singular
* item[=].item[=].item[=].code.display = "Varasem diagnoos"
* item[=].item[=].item[=].text = "Varasem diagnoos"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].repeats = true

* item[=].item[=].item[=].item[0].linkId = "ear_nose_throat.diagnoses.group.diagnosis"
* item[=].item[=].item[=].item[=].prefix = "7.0.1.1"
* item[=].item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].item[=].code.code = #diagnosis
* item[=].item[=].item[=].item[=].code.display = "Diagnoos"
* item[=].item[=].item[=].item[=].text = "Diagnoos"
* item[=].item[=].item[=].item[=].type = #coding
* item[=].item[=].item[=].item[=].answerValueSet = "https://fhir.ee/ValueSet/td-korv-nina-neel"
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[=].item[+].linkId = "ear_nose_throat.diagnoses.group.description"
* item[=].item[=].item[=].item[=].prefix = "7.0.1.2"
* item[=].item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].item[=].code.code = #diagnosis_description
* item[=].item[=].item[=].item[=].code.display = "Sõnaline diagnoos"
* item[=].item[=].item[=].item[=].text = "Sõnaline diagnoos"
* item[=].item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].item[=].required = false
* item[=].item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[=].item[+].linkId = "ear_nose_throat.diagnoses.group.source_reference"
* item[=].item[=].item[=].item[=].prefix = "7.0.1.3"
* item[=].item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].item[=].code.code = #source_reference
* item[=].item[=].item[=].item[=].code.display = "Allika viide"
* item[=].item[=].item[=].item[=].text = "Allika viide"
* item[=].item[=].item[=].item[=].type = #reference
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].readOnly = true

* item[=].item[+].linkId = "ear_nose_throat.no_complaints"
* item[=].item[=].prefix = "7.1"
* item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].code.code = #no_complaints
* item[=].item[=].code.display = "Kaebused hetkel puuduvad"
* item[=].item[=].text = "Kaebused hetkel puuduvad"
* item[=].item[=].type = #boolean
* item[=].item[=].required = true

* item[=].item[+].linkId = "ear_nose_throat.hearing_impairment"
* item[=].item[=].prefix = "7.2"
* item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].code.code = #hearing_impairment
* item[=].item[=].code.display = "Kuulmislangus"
* item[=].item[=].text = "Kuulmislangus"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "ear_nose_throat.no_complaints"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "ear_nose_throat.hearing_impairment.specify"
* item[=].item[=].item[=].prefix = "7.2.1"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #specify
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "ear_nose_throat.hearing_impairment"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true

* item[=].item[+].linkId = "ear_nose_throat.allergic_rhinitis"
* item[=].item[=].prefix = "7.3"
* item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].code.code = #allergic_rhinitis
* item[=].item[=].code.display = "Allergiline nohu"
* item[=].item[=].text = "Allergiline nohu"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "ear_nose_throat.no_complaints"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "ear_nose_throat.allergic_rhinitis.specify"
* item[=].item[=].item[=].prefix = "7.3.1"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #specify
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "ear_nose_throat.allergic_rhinitis"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true

* item[=].item[+].linkId = "ear_nose_throat.chronic_sinusitis"
* item[=].item[=].prefix = "7.4"
* item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].code.code = #chronic_sinusitis
* item[=].item[=].code.display = "Otsmiku- või põskkoopa krooniline põletik"
* item[=].item[=].text = "Otsmiku- või põskkoopa krooniline põletik"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "ear_nose_throat.no_complaints"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "ear_nose_throat.chronic_sinusitis.specify"
* item[=].item[=].item[=].prefix = "7.4.1"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #specify
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "ear_nose_throat.chronic_sinusitis"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true

* item[=].item[+].linkId = "ear_nose_throat.nasal_breathing_problems"
* item[=].item[=].prefix = "7.5"
* item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].code.code = #nasal_breathing_problems
* item[=].item[=].code.display = "Ninahingamise takistus"
* item[=].item[=].text = "Ninahingamise takistus"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "ear_nose_throat.no_complaints"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "ear_nose_throat.nasal_breathing_problems.specify"
* item[=].item[=].item[=].prefix = "7.5.1"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #specify
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "ear_nose_throat.nasal_breathing_problems"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true

* item[=].item[+].linkId = "ear_nose_throat.frequent_throat_infection"
* item[=].item[=].prefix = "7.6"
* item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].code.code = #frequent_throat_infection
* item[=].item[=].code.display = "Sagedane (rohkem kui 4x aastas) esinev kurguhaigus"
* item[=].item[=].text = "Sagedane (rohkem kui 4x aastas) esinev kurguhaigus"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "ear_nose_throat.no_complaints"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "ear_nose_throat.frequent_throat_infection.specify"
* item[=].item[=].item[=].prefix = "7.6.1"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #specify
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "ear_nose_throat.frequent_throat_infection"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true

* item[=].item[+].linkId = "ear_nose_throat.other_condition"
* item[=].item[=].prefix = "7.7"
* item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].code.code = #other_condition
* item[=].item[=].code.display = "Muu haigus/seisund/sümptom (palun täpsustage)"
* item[=].item[=].text = "Muu haigus/seisund/sümptom (palun täpsustage)"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "ear_nose_throat.no_complaints"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "ear_nose_throat.other_condition.specify"
* item[=].item[=].item[=].prefix = "7.7.1"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #specify
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "ear_nose_throat.other_condition"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true

* item[+].linkId = "respiratory_system"
* item[=].prefix = "8"
* item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].code.code = #respiratory_system
* item[=].code.display = "Hingamissüsteem"
* item[=].text = "Hingamissüsteem"
* item[=].type = #group
* item[=].required = true

* item[=].item[0].linkId = "respiratory_system.diagnoses"
* item[=].item[=].prefix = "8.0"
* item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].code.code = #previous_diagnoses
* item[=].item[=].code.display = "Varasemad diagnoosid"
* item[=].item[=].text = "Varasemad diagnoosid"
* item[=].item[=].type = #group
* item[=].item[=].required = false

* item[=].item[=].item[0].linkId = "respiratory_system.diagnoses.group"
* item[=].item[=].item[=].prefix = "8.0.1"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #previous_diagnosis_singular
* item[=].item[=].item[=].code.display = "Varasem diagnoos"
* item[=].item[=].item[=].text = "Varasem diagnoos"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].repeats = true

* item[=].item[=].item[=].item[0].linkId = "respiratory_system.diagnoses.group.diagnosis"
* item[=].item[=].item[=].item[=].prefix = "8.0.1.1"
* item[=].item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].item[=].code.code = #diagnosis
* item[=].item[=].item[=].item[=].code.display = "Diagnoos"
* item[=].item[=].item[=].item[=].text = "Diagnoos"
* item[=].item[=].item[=].item[=].type = #coding
* item[=].item[=].item[=].item[=].answerValueSet = "https://fhir.ee/ValueSet/td-hingamissusteem"
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[=].item[+].linkId = "respiratory_system.diagnoses.group.description"
* item[=].item[=].item[=].item[=].prefix = "8.0.1.2"
* item[=].item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].item[=].code.code = #diagnosis_description
* item[=].item[=].item[=].item[=].code.display = "Sõnaline diagnoos"
* item[=].item[=].item[=].item[=].text = "Sõnaline diagnoos"
* item[=].item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].item[=].required = false
* item[=].item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[=].item[+].linkId = "respiratory_system.diagnoses.group.source_reference"
* item[=].item[=].item[=].item[=].prefix = "8.0.1.3"
* item[=].item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].item[=].code.code = #source_reference
* item[=].item[=].item[=].item[=].code.display = "Allika viide"
* item[=].item[=].item[=].item[=].text = "Allika viide"
* item[=].item[=].item[=].item[=].type = #reference
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].readOnly = true

* item[=].item[+].linkId = "respiratory_system.no_complaints"
* item[=].item[=].prefix = "8.1"
* item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].code.code = #no_complaints
* item[=].item[=].code.display = "Kaebused hetkel puuduvad"
* item[=].item[=].text = "Kaebused hetkel puuduvad"
* item[=].item[=].type = #boolean
* item[=].item[=].required = true

* item[=].item[+].linkId = "respiratory_system.asthma"
* item[=].item[=].prefix = "8.2"
* item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].code.code = #asthma
* item[=].item[=].code.display = "Astma"
* item[=].item[=].text = "Astma"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "respiratory_system.no_complaints"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "respiratory_system.asthma.specify"
* item[=].item[=].item[=].prefix = "8.2.1"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #specify
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "respiratory_system.asthma"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true

* item[=].item[+].linkId = "respiratory_system.copd"
* item[=].item[=].prefix = "8.3"
* item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].code.code = #copd
* item[=].item[=].code.display = "Krooniline obstruktiivne kopsuhaigus ehk KOK"
* item[=].item[=].text = "Krooniline obstruktiivne kopsuhaigus ehk KOK"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "respiratory_system.no_complaints"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "respiratory_system.copd.specify"
* item[=].item[=].item[=].prefix = "8.3.1"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #specify
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "respiratory_system.copd"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true

* item[=].item[+].linkId = "respiratory_system.other_condition"
* item[=].item[=].prefix = "8.4"
* item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].code.code = #other_condition
* item[=].item[=].code.display = "Muu haigus/seisund/sümptom (palun täpsustage)"
* item[=].item[=].text = "Muu haigus/seisund/sümptom (palun täpsustage)"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "respiratory_system.no_complaints"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "respiratory_system.other_condition.specify"
* item[=].item[=].item[=].prefix = "8.4.1"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #specify
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "respiratory_system.other_condition"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true

* item[=].item[+].linkId = "respiratory_system.sleep_apnoe"
* item[=].item[=].prefix = "8.5"
* item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].code.code = #sleep_apnoe
* item[=].item[=].code.display = "Uneapnoe"
* item[=].item[=].text = "Uneapnoe"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "respiratory_system.no_complaints"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "respiratory_system.sleep_apnoe.specify"
* item[=].item[=].item[=].prefix = "8.5.1"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #specify
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "respiratory_system.sleep_apnoe"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true

* item[+].linkId = "metabolism_disorder"
* item[=].prefix = "9"
* item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].code.code = #metabolism_disorder
* item[=].code.display = "Ainevahetuse häired (sh kilpnäärme haigused)"
* item[=].text = "Ainevahetuse häired (sh kilpnäärme haigused)"
* item[=].type = #group
* item[=].required = true

* item[=].item[0].linkId = "metabolism_disorder.diagnoses"
* item[=].item[=].prefix = "9.0"
* item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].code.code = #previous_diagnoses
* item[=].item[=].code.display = "Varasemad diagnoosid"
* item[=].item[=].text = "Varasemad diagnoosid"
* item[=].item[=].type = #group
* item[=].item[=].required = false

* item[=].item[=].item[0].linkId = "metabolism_disorder.diagnoses.group"
* item[=].item[=].item[=].prefix = "9.0.1"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #previous_diagnosis_singular
* item[=].item[=].item[=].code.display = "Varasem diagnoos"
* item[=].item[=].item[=].text = "Varasem diagnoos"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].repeats = true

* item[=].item[=].item[=].item[0].linkId = "metabolism_disorder.diagnoses.group.diagnosis"
* item[=].item[=].item[=].item[=].prefix = "9.0.1.1"
* item[=].item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].item[=].code.code = #diagnosis
* item[=].item[=].item[=].item[=].code.display = "Diagnoos"
* item[=].item[=].item[=].item[=].text = "Diagnoos"
* item[=].item[=].item[=].item[=].type = #coding
* item[=].item[=].item[=].item[=].answerValueSet = "https://fhir.ee/ValueSet/td-ainevahetuse-haired"
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[=].item[+].linkId = "metabolism_disorder.diagnoses.group.description"
* item[=].item[=].item[=].item[=].prefix = "9.0.1.2"
* item[=].item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].item[=].code.code = #diagnosis_description
* item[=].item[=].item[=].item[=].code.display = "Sõnaline diagnoos"
* item[=].item[=].item[=].item[=].text = "Sõnaline diagnoos"
* item[=].item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].item[=].required = false
* item[=].item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[=].item[+].linkId = "metabolism_disorder.diagnoses.group.source_reference"
* item[=].item[=].item[=].item[=].prefix = "9.0.1.3"
* item[=].item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].item[=].code.code = #source_reference
* item[=].item[=].item[=].item[=].code.display = "Allika viide"
* item[=].item[=].item[=].item[=].text = "Allika viide"
* item[=].item[=].item[=].item[=].type = #reference
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].readOnly = true

* item[=].item[+].linkId = "metabolism_disorder.no_complaints"
* item[=].item[=].prefix = "9.1"
* item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].code.code = #no_complaints
* item[=].item[=].code.display = "Kaebused hetkel puuduvad"
* item[=].item[=].text = "Kaebused hetkel puuduvad"
* item[=].item[=].type = #boolean
* item[=].item[=].required = true

* item[=].item[+].linkId = "metabolism_disorder.diabetes"
* item[=].item[=].prefix = "9.2"
* item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].code.code = #diabetes
* item[=].item[=].code.display = "Suhkruhaigus"
* item[=].item[=].text = "Suhkruhaigus"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "metabolism_disorder.no_complaints"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "metabolism_disorder.diabetes.specify"
* item[=].item[=].item[=].prefix = "9.2.1"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #specify
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "metabolism_disorder.diabetes"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true

* item[=].item[+].linkId = "metabolism_disorder.other_condition"
* item[=].item[=].prefix = "9.3"
* item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].code.code = #other_condition
* item[=].item[=].code.display = "Muu haigus/seisund/sümptom (palun täpsustage)"
* item[=].item[=].text = "Muu haigus/seisund/sümptom (palun täpsustage)"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "metabolism_disorder.no_complaints"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "metabolism_disorder.other_condition.specify"
* item[=].item[=].item[=].prefix = "9.3.1"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #specify
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "metabolism_disorder.other_condition"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true


* item[+].linkId = "cardiovascular_system"
* item[=].prefix = "10"
* item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].code.code = #cardiovascular_system
* item[=].code.display = "Süda ja veresoonkond"
* item[=].text = "Süda ja veresoonkond"
* item[=].type = #group
* item[=].required = true

* item[=].item[0].linkId = "cardiovascular_system.diagnoses"
* item[=].item[=].prefix = "10.0"
* item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].code.code = #previous_diagnoses
* item[=].item[=].code.display = "Varasemad diagnoosid"
* item[=].item[=].text = "Varasemad diagnoosid"
* item[=].item[=].type = #group
* item[=].item[=].required = false

* item[=].item[=].item[0].linkId = "cardiovascular_system.diagnoses.group"
* item[=].item[=].item[=].prefix = "10.0.1"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #previous_diagnosis_singular
* item[=].item[=].item[=].code.display = "Varasem diagnoos"
* item[=].item[=].item[=].text = "Varasem diagnoos" 
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].repeats = true

* item[=].item[=].item[=].item[0].linkId = "cardiovascular_system.diagnoses.group.diagnosis"
* item[=].item[=].item[=].item[=].prefix = "10.0.1.1"
* item[=].item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].item[=].code.code = #diagnosis
* item[=].item[=].item[=].item[=].code.display = "Diagnoos"
* item[=].item[=].item[=].item[=].text = "Diagnoos"
* item[=].item[=].item[=].item[=].type = #coding
* item[=].item[=].item[=].item[=].answerValueSet = "https://fhir.ee/ValueSet/td-suda-ja-veresoonkond"
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[=].item[+].linkId = "cardiovascular_system.diagnoses.group.description"
* item[=].item[=].item[=].item[=].prefix = "10.0.1.2"
* item[=].item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].item[=].code.code = #diagnosis_description
* item[=].item[=].item[=].item[=].code.display = "Sõnaline diagnoos"
* item[=].item[=].item[=].item[=].text = "Sõnaline diagnoos"
* item[=].item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].item[=].required = false
* item[=].item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[=].item[+].linkId = "cardiovascular_system.diagnoses.group.source_reference"
* item[=].item[=].item[=].item[=].prefix = "10.0.1.3"
* item[=].item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].item[=].code.code = #source_reference
* item[=].item[=].item[=].item[=].code.display = "Allika viide"
* item[=].item[=].item[=].item[=].text = "Allika viide"
* item[=].item[=].item[=].item[=].type = #reference
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].readOnly = true

* item[=].item[+].linkId = "cardiovascular_system.no_complaints" 
* item[=].item[=].prefix = "10.1"
* item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].code.code = #no_complaints
* item[=].item[=].code.display = "Kaebused hetkel puuduvad"
* item[=].item[=].text = "Kaebused hetkel puuduvad"
* item[=].item[=].type = #boolean
* item[=].item[=].required = true

* item[=].item[+].linkId = "cardiovascular_system.physical_activity_stenocardia"
* item[=].item[=].prefix = "10.2"
* item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].code.code = #physical_activity_stenocardia
* item[=].item[=].code.display = "Koormusega seonduv valu rinnus"
* item[=].item[=].text = "Koormusega seonduv valu rinnus"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "cardiovascular_system.no_complaints"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "cardiovascular_system.physical_activity_stenocardia"
* item[=].item[=].item[=].prefix = "10.2.1"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #specify
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "cardiovascular_system.physical_activity_stenocardia"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true

* item[=].item[+].linkId = "cardiovascular_system.high_bp"
* item[=].item[=].prefix = "10.3"
* item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].code.code = #high_bp
* item[=].item[=].code.display = "Kõrge vererõhk"
* item[=].item[=].text = "Kõrge vererõhk"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "cardiovascular_system.no_complaints"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "cardiovascular_system.high_bp.specify"
* item[=].item[=].item[=].prefix = "10.3.1"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #specify
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "cardiovascular_system.high_bp"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true

* item[=].item[+].linkId = "cardiovascular_system.previous_mi"
* item[=].item[=].prefix = "10.4"
* item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].code.code = #previous_mi
* item[=].item[=].code.display = "Läbipõetud südameinfarkt"
* item[=].item[=].text = "Läbipõetud südameinfarkt"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "cardiovascular_system.no_complaints"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "cardiovascular_system.previous_mi.specify"
* item[=].item[=].item[=].prefix = "10.4.1"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #specify
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "cardiovascular_system.previous_mi"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true

* item[=].item[+].linkId = "cardiovascular_system.heart_arrhythmia"
* item[=].item[=].prefix = "10.5"
* item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].code.code = #heart_arrhythmia
* item[=].item[=].code.display = "Südame rütmihäired"
* item[=].item[=].text = "Südame rütmihäired"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "cardiovascular_system.no_complaints"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "cardiovascular_system.heart_arrhythmia.specify"
* item[=].item[=].item[=].prefix = "10.5.1"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #specify
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "cardiovascular_system.heart_arrhythmia"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true

* item[=].item[+].linkId = "cardiovascular_system.heart_stenting"
* item[=].item[=].prefix = "10.6"
* item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].code.code = #heart_stenting
* item[=].item[=].code.display = "On tehtud südamesondeerimine või stentimine"
* item[=].item[=].text = "On tehtud südamesondeerimine või stentimine"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "cardiovascular_system.no_complaints"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "cardiovascular_system.heart_stenting.specify"
* item[=].item[=].item[=].prefix = "10.6.1"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #specify
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "cardiovascular_system.heart_stenting"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true

* item[=].item[+].linkId = "cardiovascular_system.pacer"
* item[=].item[=].prefix = "10.7"
* item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].code.code = #pacer
* item[=].item[=].code.display = "On paigaldatud südamerütmur"
* item[=].item[=].text = "On paigaldatud südamerütmur"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "cardiovascular_system.no_complaints"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "cardiovascular_system.pacer.specify"
* item[=].item[=].item[=].prefix = "10.7.1"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #specify
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "cardiovascular_system.pacer"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true

* item[=].item[+].linkId = "cardiovascular_system.heart_operation"
* item[=].item[=].prefix = "10.8"
* item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].code.code = #heart_operation
* item[=].item[=].code.display = "On tehtud südameoperatsioon"
* item[=].item[=].text = "On tehtud südameoperatsioon"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "cardiovascular_system.no_complaints"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "cardiovascular_system.heart_operation.specify"
* item[=].item[=].item[=].prefix = "10.8.1"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #specify
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "cardiovascular_system.heart_operation"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true

* item[=].item[+].linkId = "cardiovascular_system.other_condition"
* item[=].item[=].prefix = "10.9"
* item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].code.code = #other_condition
* item[=].item[=].code.display = "Muu haigus/seisund/sümptom (palun täpsustage)"
* item[=].item[=].text = "Muu haigus/seisund/sümptom (palun täpsustage)"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "cardiovascular_system.no_complaints"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "cardiovascular_system.other_condition.specify"
* item[=].item[=].item[=].prefix = "10.9.1"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #specify
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "cardiovascular_system.other_condition"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true

* item[+].linkId = "skeletal_system"
* item[=].prefix = "11"
* item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].code.code = #skeletal_system
* item[=].code.display = "Luud, liigesed ja lihased"
* item[=].text = "Luud, liigesed ja lihased"
* item[=].type = #group
* item[=].required = true

* item[=].item[0].linkId = "skeletal_system.diagnoses"
* item[=].item[=].prefix = "11.0"
* item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].code.code = #previous_diagnoses
* item[=].item[=].code.display = "Varasemad diagnoosid"
* item[=].item[=].text = "Varasemad diagnoosid"
* item[=].item[=].type = #group
* item[=].item[=].required = false

* item[=].item[=].item[0].linkId = "skeletal_system.diagnoses.group"
* item[=].item[=].item[=].prefix = "11.0.1"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #previous_diagnosis_singular
* item[=].item[=].item[=].code.display = "Varasem diagnoos"
* item[=].item[=].item[=].text = "Varasem diagnoos" 
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].repeats = true

* item[=].item[=].item[=].item[0].linkId = "skeletal_system.diagnoses.group.diagnosis"
* item[=].item[=].item[=].item[=].prefix = "11.0.1.1"
* item[=].item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].item[=].code.code = #diagnosis
* item[=].item[=].item[=].item[=].code.display = "Diagnoos"
* item[=].item[=].item[=].item[=].text = "Diagnoos"
* item[=].item[=].item[=].item[=].type = #coding
* item[=].item[=].item[=].item[=].answerValueSet = "https://fhir.ee/ValueSet/td-luud-liigesed-ja-lihased"
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[=].item[+].linkId = "skeletal_system.diagnoses.group.description"
* item[=].item[=].item[=].item[=].prefix = "11.0.1.2"
* item[=].item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].item[=].code.code = #diagnosis_description
* item[=].item[=].item[=].item[=].code.display = "Sõnaline diagnoos"
* item[=].item[=].item[=].item[=].text = "Sõnaline diagnoos"
* item[=].item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].item[=].required = false
* item[=].item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[=].item[+].linkId = "skeletal_system.diagnoses.group.source_reference"
* item[=].item[=].item[=].item[=].prefix = "11.0.1.3"
* item[=].item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].item[=].code.code = #source_reference
* item[=].item[=].item[=].item[=].code.display = "Allika viide"
* item[=].item[=].item[=].item[=].text = "Allika viide"
* item[=].item[=].item[=].item[=].type = #reference
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].readOnly = true

* item[=].item[+].linkId = "skeletal_system.no_complaints" 
* item[=].item[=].prefix = "11.1"
* item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].code.code = #no_complaints
* item[=].item[=].code.display = "Kaebused hetkel puuduvad"
* item[=].item[=].text = "Kaebused hetkel puuduvad"
* item[=].item[=].type = #boolean
* item[=].item[=].required = true

* item[=].item[+].linkId = "skeletal_system.stiff_joints"
* item[=].item[=].prefix = "11.2"
* item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].code.code = #stiff_joints
* item[=].item[=].code.display = "Liigesejäikus"
* item[=].item[=].text = "Liigesejäikus"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "skeletal_system.no_complaints"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "skeletal_system.stiff_joints.specify"
* item[=].item[=].item[=].prefix = "11.2.1"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #specify
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "skeletal_system.stiff_joints"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true

* item[=].item[+].linkId = "skeletal_system.paresis_plegia"
* item[=].item[=].prefix = "11.3"
* item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].code.code = #paresis_plegia
* item[=].item[=].code.display = "Jäseme osaline või täielik halvatus (palun täpsustage)"
* item[=].item[=].text = "Jäseme osaline või täielik halvatus (palun täpsustage)"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "skeletal_system.no_complaints"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "skeletal_system.paresis_plegia.specify"
* item[=].item[=].item[=].prefix = "11.3.1"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #specify
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "skeletal_system.paresis_plegia"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true

* item[=].item[+].linkId = "skeletal_system.amputee"
* item[=].item[=].prefix = "11.4"
* item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].code.code = #amputee
* item[=].item[=].code.display = "Jäseme või selle osa puudumine (palun täpsustage)"
* item[=].item[=].text = "Jäseme või selle osa puudumine (palun täpsustage)"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "skeletal_system.no_complaints"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "skeletal_system.amputee.specify"
* item[=].item[=].item[=].prefix = "11.4.1"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #specify
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "skeletal_system.amputee"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true

* item[=].item[+].linkId = "skeletal_system.tremor"
* item[=].item[=].prefix = "11.5"
* item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].code.code = #tremor
* item[=].item[=].code.display = "Käte värisemine (treemor)"
* item[=].item[=].text = "Käte värisemine (treemor)"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "skeletal_system.no_complaints"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "skeletal_system.tremor.specify"
* item[=].item[=].item[=].prefix = "11.5.1"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #specify
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "skeletal_system.tremor"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true

* item[=].item[+].linkId = "skeletal_system.joint_pain"
* item[=].item[=].prefix = "11.6"
* item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].code.code = #joint_pain
* item[=].item[=].code.display = "Liigesevalu"
* item[=].item[=].text = "Liigesevalu"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "skeletal_system.no_complaints"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "skeletal_system.joint_pain.specify"
* item[=].item[=].item[=].prefix = "11.6.1"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #specify
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "skeletal_system.joint_pain"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true

* item[=].item[+].linkId = "skeletal_system.neck_pain"
* item[=].item[=].prefix = "11.7"
* item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].code.code = #neck_pain
* item[=].item[=].code.display = "Kaelavalu"
* item[=].item[=].text = "Kaelavalu"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "skeletal_system.no_complaints"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "skeletal_system.neck_pain.specify"
* item[=].item[=].item[=].prefix = "11.7.1"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #specify
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "skeletal_system.neck_pain"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true

* item[=].item[+].linkId = "skeletal_system.shoulder_pain"
* item[=].item[=].prefix = "11.8"
* item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].code.code = #shoulder_pain
* item[=].item[=].code.display = "Õlavöötmevalu"
* item[=].item[=].text = "Õlavöötmevalu"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "skeletal_system.no_complaints"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "skeletal_system.shoulder_pain.specify"
* item[=].item[=].item[=].prefix = "11.8.1"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #specify
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "skeletal_system.shoulder_pain"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true

* item[=].item[+].linkId = "skeletal_system.lower_back_pain"
* item[=].item[=].prefix = "11.9"
* item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].code.code = #lower_back_pain
* item[=].item[=].code.display = "Alaseljavalu"
* item[=].item[=].text = "Alaseljavalu"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "skeletal_system.no_complaints"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "skeletal_system.lower_back_pain.specify"
* item[=].item[=].item[=].prefix = "11.9.1"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #specify
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "skeletal_system.lower_back_pain"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true

* item[=].item[+].linkId = "skeletal_system.other_condition"
* item[=].item[=].prefix = "11.10"
* item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].code.code = #other_condition
* item[=].item[=].code.display = "Muu haigus/seisund/sümptom (palun täpsustage)"
* item[=].item[=].text = "Muu haigus/seisund/sümptom (palun täpsustage)"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "skeletal_system.no_complaints"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "skeletal_system.other_condition.specify"
* item[=].item[=].item[=].prefix = "11.10.1"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #specify
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "skeletal_system.other_condition"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true

* item[+].linkId = "infections"
* item[=].prefix = "12"
* item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].code.code = #infections
* item[=].code.display = "Nakkushaigused"
* item[=].text = "Nakkushaigused"
* item[=].type = #group
* item[=].required = true

* item[=].item[0].linkId = "infections.diagnoses"
* item[=].item[=].prefix = "12.0"
* item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].code.code = #previous_diagnoses
* item[=].item[=].code.display = "Varasemad diagnoosid"
* item[=].item[=].text = "Varasemad diagnoosid"
* item[=].item[=].type = #group
* item[=].item[=].required = false

* item[=].item[=].item[0].linkId = "infections.diagnoses.group"
* item[=].item[=].item[=].prefix = "12.0.1"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #previous_diagnosis_singular
* item[=].item[=].item[=].code.display = "Varasem diagnoos"
* item[=].item[=].item[=].text = "Varasem diagnoos" 
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].repeats = true

* item[=].item[=].item[=].item[0].linkId = "infections.diagnoses.group.diagnosis"
* item[=].item[=].item[=].item[=].prefix = "12.0.1.1"
* item[=].item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].item[=].code.code = #diagnosis
* item[=].item[=].item[=].item[=].code.display = "Diagnoos"
* item[=].item[=].item[=].item[=].text = "Diagnoos"
* item[=].item[=].item[=].item[=].type = #coding
* item[=].item[=].item[=].item[=].answerValueSet = "https://fhir.ee/ValueSet/td-nakkushaigused"
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[=].item[+].linkId = "infections.diagnoses.group.description"
* item[=].item[=].item[=].item[=].prefix = "12.0.1.2"
* item[=].item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].item[=].code.code = #diagnosis_description
* item[=].item[=].item[=].item[=].code.display = "Sõnaline diagnoos"
* item[=].item[=].item[=].item[=].text = "Sõnaline diagnoos"
* item[=].item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].item[=].required = false
* item[=].item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[=].item[+].linkId = "infections.diagnoses.group.source_reference"
* item[=].item[=].item[=].item[=].prefix = "12.0.1.3"
* item[=].item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].item[=].code.code = #source_reference
* item[=].item[=].item[=].item[=].code.display = "Allika viide"
* item[=].item[=].item[=].item[=].text = "Allika viide"
* item[=].item[=].item[=].item[=].type = #reference
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].readOnly = true

* item[=].item[+].linkId = "infections.no_complaints" 
* item[=].item[=].prefix = "12.1"
* item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].code.code = #not_known
* item[=].item[=].code.display = "Teadaolevalt ei ole põdenud"
* item[=].item[=].text = "Teadaolevalt ei ole põdenud"
* item[=].item[=].type = #boolean
* item[=].item[=].required = true

* item[=].item[+].linkId = "infections.tuberculosis"
* item[=].item[=].prefix = "12.2"
* item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].code.code = #tuberculosis
* item[=].item[=].code.display = "Tuberkuloos"
* item[=].item[=].text = "Tuberkuloos"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "infections.no_complaints"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "infections.tuberculosis.specify"
* item[=].item[=].item[=].prefix = "12.2.1"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #specify
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "infections.tuberculosis"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true

* item[=].item[+].linkId = "infections.hepatitis"
* item[=].item[=].prefix = "12.3"
* item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].code.code = #hepatitis
* item[=].item[=].code.display = "Viirushepatiidid (A-hepatiit, B-hepatiit, C-hepatiit)"
* item[=].item[=].text = "Viirushepatiidid (A-hepatiit, B-hepatiit, C-hepatiit)"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "infections.no_complaints"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "infections.hepatitis.specify"
* item[=].item[=].item[=].prefix = "12.3.1"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #specify
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "infections.hepatitis"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true

* item[=].item[+].linkId = "infections.hiv_carrier"
* item[=].item[=].prefix = "12.4"
* item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].code.code = #hiv_carrier
* item[=].item[=].code.display = "HIV kandja"
* item[=].item[=].text = "HIV kandja"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "infections.no_complaints"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "infections.hiv_carrier.specify"
* item[=].item[=].item[=].prefix = "12.4.1"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #specify
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "infections.hiv_carrier"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true

* item[=].item[+].linkId = "infections.aids"
* item[=].item[=].prefix = "12.5"
* item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].code.code = #aids
* item[=].item[=].code.display = "AIDS"
* item[=].item[=].text = "AIDS"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "infections.no_complaints"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "infections.aids.specify"
* item[=].item[=].item[=].prefix = "12.5.1"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #specify
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "infections.aids"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true

* item[=].item[+].linkId = "infections.intestinal_infection"
* item[=].item[=].prefix = "12.6"
* item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].code.code = #intestinal_infection
* item[=].item[=].code.display = "Soolenakkused (salmonelloos, kampülobakterioos, shigelloos, jersinioos ja rotaviirusenteriit, E. coli soolenakkus, Koolera, kõhutüüfus, paratüüfused, Noroviiruse tekkene äge enteropaatia, giardiaas (lambliaas), krüptosporidioos, amöbiaas, listerioos, helmintiaasid ehk nugiusshaigused, muud toidu- ja joogiveevahenduslikud nakkused)"
* item[=].item[=].text = "Soolenakkused (salmonelloos, kampülobakterioos, shigelloos, jersinioos ja rotaviirusenteriit, E. coli soolenakkus, Koolera, kõhutüüfus, paratüüfused, Noroviiruse tekkene äge enteropaatia, giardiaas (lambliaas), krüptosporidioos, amöbiaas, listerioos, helmintiaasid ehk nugiusshaigused, muud toidu- ja joogiveevahenduslikud nakkused)"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "infections.no_complaints"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "infections.intestinal_infection.specify"
* item[=].item[=].item[=].prefix = "12.6.1"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #specify
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "infections.intestinal_infection"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true

* item[=].item[+].linkId = "infections.respiratory_infection"
* item[=].item[=].prefix = "12.7"
* item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].code.code = #respiratory_infection
* item[=].item[=].code.display = "Hingamisteede nakkused (difteeria, läkaköha, leetrid, punetised, mumps)"
* item[=].item[=].text = "Hingamisteede nakkused (difteeria, läkaköha, leetrid, punetised, mumps)"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "infections.no_complaints"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "infections.respiratory_infection.specify"
* item[=].item[=].item[=].prefix = "12.7.1"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #specify
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "infections.respiratory_infection"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true

* item[=].item[+].linkId = "infections.dermal_infection"
* item[=].item[=].prefix = "12.8"
* item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].code.code = #dermal_infection
* item[=].item[=].code.display = "Nahainfektsioonid (MRSA kandlus, käte nahamädanikud, seenhaigused)"
* item[=].item[=].text = "Nahainfektsioonid (MRSA kandlus, käte nahamädanikud, seenhaigused)"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "infections.no_complaints"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "infections.dermal_infection.specify"
* item[=].item[=].item[=].prefix = "12.8.1"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #specify
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "infections.dermal_infection"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true

* item[=].item[+].linkId = "infections.other_disease"
* item[=].item[=].prefix = "12.9"
* item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].code.code = #other_disease
* item[=].item[=].code.display = "Muu haigus (palun täpsustage, millised ja millal)"
* item[=].item[=].text = "Muu haigus (palun täpsustage, millised ja millal)"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "infections.no_complaints"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "infections.other_disease.specify"
* item[=].item[=].item[=].prefix = "12.9.1"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #specify
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "infections.other_disease"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true

* item[+].linkId = "other_chronic_illnesses"
* item[=].prefix = "13"
* item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].code.code = #other_chronic_illnesses
* item[=].code.display = "Muud kroonilised haigused, seisundid või sümptomid, mida eespool ei kirjeldatud"
* item[=].text = "Muud kroonilised haigused, seisundid või sümptomid, mida eespool ei kirjeldatud"
* item[=].type = #group
* item[=].required = true

* item[=].item[0].linkId = "other_chronic_illnesses.none" 
* item[=].item[=].prefix = "13.1"
* item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].code.code = #none
* item[=].item[=].code.display = "Puuduvad"
* item[=].item[=].text = "Puuduvad"
* item[=].item[=].type = #boolean
* item[=].item[=].required = true

* item[=].item[+].linkId = "other_chronic_illnesses.condition_illness_symptom"
* item[=].item[=].prefix = "13.2"
* item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].code.code = #condition_illness_symptom
* item[=].item[=].code.display = "Haigus/seisund/sümptom (palun täpsustage, millised ja millal)"
* item[=].item[=].text = "Haigus/seisund/sümptom (palun täpsustage, millised ja millal)"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "other_chronic_illnesses.none"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "other_chronic_illnesses.condition_illness_symptom.specify"
* item[=].item[=].item[=].prefix = "13.2.1"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #specify
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "other_chronic_illnesses.condition_illness_symptom"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true

* item[+].linkId = "treatment_done"
* item[=].prefix = "14"
* item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].code.code = #treatment_done
* item[=].code.display = "Senine ravi"
* item[=].text = "Senine ravi"
* item[=].type = #group
* item[=].required = true

* item[=].item[0].linkId = "treatment_done.foreign_treatment" 
* item[=].item[=].prefix = "14.1"
* item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].code.code = #foreign_treatment
* item[=].item[=].code.display = "Kas olete välismaal saanud  haiglaravi või käinud arsti vastuvõtul? Palun täpsustage millal, kus, ja millega seoses"
* item[=].item[=].text = "Kas olete välismaal saanud  haiglaravi või käinud arsti vastuvõtul? Palun täpsustage millal, kus, ja millega seoses"
* item[=].item[=].type = #boolean
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "treatment_done.foreign_treatment.specify"
* item[=].item[=].item[=].prefix = "14.1.1"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #specify
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "treatment_done.foreign_treatment"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true

* item[=].item[+].linkId = "treatment_done.regular_medication" 
* item[=].item[=].prefix = "14.2"
* item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].code.code = #regular_medication
* item[=].item[=].code.display = "Regulaarsed ravimid"
* item[=].item[=].text = "Regulaarsed ravimid"
* item[=].item[=].type = #group
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "treatment_done.regular_medication.regular_medication_women" 
* item[=].item[=].item[=].prefix = "14.2.1"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #regular_medication_women
* item[=].item[=].item[=].code.display = "Kas tarvitate regulaarselt mingeid ravimeid (sh rasestumisvastaseid vahendeid)? Palun loetlege, milliseid"
* item[=].item[=].item[=].text = "Kas tarvitate regulaarselt mingeid ravimeid (sh rasestumisvastaseid vahendeid)? Palun loetlege, milliseid"
* item[=].item[=].item[=].type = #boolean
* item[=].item[=].item[=].enableWhen.question = "gender.authors_gender"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerCoding = #N
* item[=].item[=].item[=].required = true

* item[=].item[=].item[=].item[0].linkId = "treatment_done.regular_medication.regular_medication_women.specify"
* item[=].item[=].item[=].item[=].prefix = "14.2.1.1"
* item[=].item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].item[=].code.code = #specify
* item[=].item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].item[=].enableWhen.question = "treatment_done.regular_medication.regular_medication_women"
* item[=].item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].item[=].required = true
//enable when sugu on naine

* item[=].item[=].item[+].linkId = "treatment_done.regular_medication.regular_medication_men" 
* item[=].item[=].item[=].prefix = "14.2.2"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #regular_medication_men
* item[=].item[=].item[=].code.display = "Kas tarvitate regulaarselt mingeid ravimeid? Palun loetlege, milliseid"
* item[=].item[=].item[=].text = "Kas tarvitate regulaarselt mingeid ravimeid? Palun loetlege, milliseid"
* item[=].item[=].item[=].type = #boolean
* item[=].item[=].item[=].enableWhen.question = "gender.authors_gender"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerCoding = #M
* item[=].item[=].item[=].required = true

* item[=].item[=].item[=].item[0].linkId = "treatment_done.regular_medication.regular_medication_men.specify"
* item[=].item[=].item[=].item[=].prefix = "14.2.2.1"
* item[=].item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].item[=].code.code = #specify
* item[=].item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].item[=].enableWhen.question = "treatment_done.regular_medication.regular_medication_men"
* item[=].item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].item[=].required = true
//enable when sugu on mees

//link id sõltub sellest kas sugu on mees või naine
* item[=].item[=].item[+].linkId = "treatment_done.regular_medication.current_prescriptions"
* item[=].item[=].item[=].prefix = "14.2.3"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #current_prescriptions
* item[=].item[=].item[=].code.display = "Viimase 9 kuu jooksul välja kirjutatud retseptid"
* item[=].item[=].item[=].text = "Viimase 9 kuu jooksul välja kirjutatud retseptid"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].required = false

* item[=].item[=].item[=].item[0].linkId = "treatment_done.regular_medication.current_prescriptions.prescription"
* item[=].item[=].item[=].item[=].prefix = "14.2.3.1"
* item[=].item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].item[=].code.code = #prescription
* item[=].item[=].item[=].item[=].code.display = "Retsept"
* item[=].item[=].item[=].item[=].text = "Retsept"
* item[=].item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].repeats = true

* item[=].item[=].item[=].item[=].item[0].linkId = "treatment_done.regular_medication.current_prescriptions.prescription.date"
* item[=].item[=].item[=].item[=].item[=].prefix = "14.2.3.1.1"
* item[=].item[=].item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].item[=].item[=].code.code = #date
* item[=].item[=].item[=].item[=].item[=].code.display = "Kuupäev"
* item[=].item[=].item[=].item[=].item[=].text = "Kuupäev"
* item[=].item[=].item[=].item[=].item[=].type = #date
* item[=].item[=].item[=].item[=].item[=].required = false
* item[=].item[=].item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[=].item[=].item[+].linkId = "treatment_done.regular_medication.current_prescriptions.prescription.atc"
* item[=].item[=].item[=].item[=].item[=].prefix = "14.2.3.1.2"
* item[=].item[=].item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].item[=].item[=].code.code = #atc
* item[=].item[=].item[=].item[=].item[=].code.display = "ATC"
* item[=].item[=].item[=].item[=].item[=].text = "ATC"
* item[=].item[=].item[=].item[=].item[=].type = #coding
* item[=].item[=].item[=].item[=].item[=].required = false
* item[=].item[=].item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[=].item[=].item[+].linkId = "treatment_done.regular_medication.current_prescriptions.prescription.package"
* item[=].item[=].item[=].item[=].item[=].prefix = "14.2.3.1.3"
* item[=].item[=].item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].item[=].item[=].code.code = #package
* item[=].item[=].item[=].item[=].item[=].code.display = "Pakend"
* item[=].item[=].item[=].item[=].item[=].text = "Pakend"
* item[=].item[=].item[=].item[=].item[=].type = #coding
* item[=].item[=].item[=].item[=].item[=].required = false
* item[=].item[=].item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[=].item[=].item[+].linkId = "treatment_done.regular_medication.current_prescriptions.prescription.source_reference"
* item[=].item[=].item[=].item[=].item[=].prefix = "14.2.3.1.3"
* item[=].item[=].item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].item[=].item[=].code.code = #source_reference
* item[=].item[=].item[=].item[=].item[=].code.display = "Allika viide"
* item[=].item[=].item[=].item[=].item[=].text = "Allika viide"
* item[=].item[=].item[=].item[=].item[=].type = #reference
* item[=].item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].item[=].readOnly = true

* item[=].item[+].linkId = "treatment_done.hospitalization" 
* item[=].item[=].prefix = "14.3"
* item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].code.code = #hospitalization
* item[=].item[=].code.display = "Kas olete viibinud haiglaravil?"
* item[=].item[=].text = "Kas olete viibinud haiglaravil?"
* item[=].item[=].type = #boolean
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "treatment_done.hospitalization.specify"
* item[=].item[=].item[=].prefix = "14.3.1"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #specify
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "treatment_done.hospitalization"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true

* item[=].item[=].item[+].linkId = "treatment_done.hospitalization.previous_hospitalization"
* item[=].item[=].item[=].prefix = "14.3.2"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #previous_hospitalization
* item[=].item[=].item[=].code.display = "Varasem haiglaravi"
* item[=].item[=].item[=].text = "Varasem haiglaravi"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].required = false

* item[=].item[=].item[=].item[0].linkId = "treatment_done.hospitalization.previous_hospitalization.stationary_ce"
* item[=].item[=].item[=].item[=].prefix = "14.3.2.1"
* item[=].item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].item[=].code.code = #stationary_ce
* item[=].item[=].item[=].item[=].code.display = "Statsionaarne haigusjuhtum"
* item[=].item[=].item[=].item[=].text = "Statsionaarne haigusjuhtum"
* item[=].item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].repeats = true

* item[=].item[=].item[=].item[=].item[0].linkId = "treatment_done.hospitalization.previous_hospitalization.stationary_ce.from"
* item[=].item[=].item[=].item[=].item[=].prefix = "14.3.2.1.1"
* item[=].item[=].item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].item[=].item[=].code.code = #from
* item[=].item[=].item[=].item[=].item[=].code.display = "Alates"
* item[=].item[=].item[=].item[=].item[=].text = "Alates"
* item[=].item[=].item[=].item[=].item[=].type = #date
* item[=].item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[=].item[=].item[+].linkId = "treatment_done.hospitalization.previous_hospitalization.stationary_ce.to"
* item[=].item[=].item[=].item[=].item[=].prefix = "14.3.2.1.2"
* item[=].item[=].item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].item[=].item[=].code.code = #to
* item[=].item[=].item[=].item[=].item[=].code.display = "Kuni"
* item[=].item[=].item[=].item[=].item[=].text = "Kuni"
* item[=].item[=].item[=].item[=].item[=].type = #date
* item[=].item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[=].item[=].item[+].linkId = "treatment_done.hospitalization.previous_hospitalization.stationary_ce.provider"
* item[=].item[=].item[=].item[=].item[=].prefix = "14.3.2.1.3"
* item[=].item[=].item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].item[=].item[=].code.code = #provider
* item[=].item[=].item[=].item[=].item[=].code.display = "Tervishoiuasutus"
* item[=].item[=].item[=].item[=].item[=].text = "Tervishoiuasutus"
* item[=].item[=].item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[=].item[=].item[+].linkId = "treatment_done.hospitalization.previous_hospitalization.stationary_ce.source_reference"
* item[=].item[=].item[=].item[=].item[=].prefix = "14.3.2.1.4"
* item[=].item[=].item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].item[=].item[=].code.code = #source_reference
* item[=].item[=].item[=].item[=].item[=].code.display = "Allika viide"
* item[=].item[=].item[=].item[=].item[=].text = "Allika viide"
* item[=].item[=].item[=].item[=].item[=].type = #reference
* item[=].item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].item[=].readOnly = true

* item[=].item[+].linkId = "treatment_done.operations" 
* item[=].item[=].prefix = "14.4"
* item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].code.code = #operations
* item[=].item[=].code.display = "Kas teid on opereeritud? Palun täpsustage, millal, mille tõttu"
* item[=].item[=].text = "Kas teid on opereeritud? Palun täpsustage, millal, mille tõttu"
* item[=].item[=].type = #boolean
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "treatment_done.operations.specify"
* item[=].item[=].item[=].prefix = "14.4.1"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #specify
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "treatment_done.operations"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true

* item[=].item[=].item[+].linkId = "treatment_done.operations.procedures"
* item[=].item[=].item[=].prefix = "14.4.2"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #procedures
* item[=].item[=].item[=].code.display = "Teostatud protseduurid"
* item[=].item[=].item[=].text = "Teostatud protseduurid"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].required = false

* item[=].item[=].item[=].item[0].linkId = "treatment_done.operations.procedures.operation"
* item[=].item[=].item[=].item[=].prefix = "14.4.2.1"
* item[=].item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].item[=].code.code = #operation
* item[=].item[=].item[=].item[=].code.display = "Operatsioon"
* item[=].item[=].item[=].item[=].text = "Operatsioon"
* item[=].item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].repeats = true

* item[=].item[=].item[=].item[=].item[0].linkId = "treatment_done.operations.procedures.operation.date"
* item[=].item[=].item[=].item[=].item[=].prefix = "14.4.2.1.1"
* item[=].item[=].item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].item[=].item[=].code.code = #date
* item[=].item[=].item[=].item[=].item[=].code.display = "Kuupäev"
* item[=].item[=].item[=].item[=].item[=].text = "Kuupäev"
* item[=].item[=].item[=].item[=].item[=].type = #date
* item[=].item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[=].item[=].item[+].linkId = "treatment_done.operations.procedures.operation.specific_operation"
* item[=].item[=].item[=].item[=].item[=].prefix = "14.4.2.1.2"
* item[=].item[=].item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].item[=].item[=].code.code = #operation
* item[=].item[=].item[=].item[=].item[=].code.display = "Operatsioon"
* item[=].item[=].item[=].item[=].item[=].text = "Operatsioon"
* item[=].item[=].item[=].item[=].item[=].type = #coding
* item[=].item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[=].item[=].item[+].linkId = "treatment_done.operations.procedures.operation.add_codes"
* item[=].item[=].item[=].item[=].item[=].prefix = "14.4.2.1.3"
* item[=].item[=].item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].item[=].item[=].code.code = #add_codes
* item[=].item[=].item[=].item[=].item[=].code.display = "Operatsiooni lisakoodid"
* item[=].item[=].item[=].item[=].item[=].text = "Operatsioon lisakoodid"
* item[=].item[=].item[=].item[=].item[=].type = #coding
* item[=].item[=].item[=].item[=].item[=].required = false
* item[=].item[=].item[=].item[=].item[=].repeats = true
* item[=].item[=].item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[=].item[=].item[+].linkId = "treatment_done.operations.procedures.operation.source_reference"
* item[=].item[=].item[=].item[=].item[=].prefix = "14.4.2.1.4"
* item[=].item[=].item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].item[=].item[=].code.code = #source_reference
* item[=].item[=].item[=].item[=].item[=].code.display = "Allika viide"
* item[=].item[=].item[=].item[=].item[=].text = "Allika viide"
* item[=].item[=].item[=].item[=].item[=].type = #reference
* item[=].item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].item[=].readOnly = true

* item[+].linkId = "traumas"
* item[=].prefix = "15"
* item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].code.code = #traumas
* item[=].code.display = "Traumad"
* item[=].text = "Traumad"
* item[=].type = #group
* item[=].required = true

* item[=].item[0].linkId = "traumas.diagnoses"
* item[=].item[=].prefix = "15.0"
* item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].code.code = #previous_diagnoses
* item[=].item[=].code.display = "Varasemad diagnoosid"
* item[=].item[=].text = "Varasemad diagnoosid"
* item[=].item[=].type = #group
* item[=].item[=].required = false

* item[=].item[=].item[0].linkId = "traumas.diagnoses.group"
* item[=].item[=].item[=].prefix = "15.0.1"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #previous_diagnosis_singular
* item[=].item[=].item[=].code.display = "Varasem diagnoos"
* item[=].item[=].item[=].text = "Varasem diagnoos"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].repeats = true

* item[=].item[=].item[=].item[0].linkId = "traumas.diagnoses.group.diagnosis"
* item[=].item[=].item[=].item[=].prefix = "15.0.1.1"
* item[=].item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].item[=].code.code = #diagnosis
* item[=].item[=].item[=].item[=].code.display = "Diagnoos"
* item[=].item[=].item[=].item[=].text = "Diagnoos"
* item[=].item[=].item[=].item[=].type = #coding
* item[=].item[=].item[=].item[=].answerValueSet = "https://fhir.ee/ValueSet/td-traumad"
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[=].item[+].linkId = "traumas.diagnoses.group.description"
* item[=].item[=].item[=].item[=].prefix = "15.0.1.2"
* item[=].item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].item[=].code.code = #diagnosis_description
* item[=].item[=].item[=].item[=].code.display = "Sõnaline diagnoos"
* item[=].item[=].item[=].item[=].text = "Sõnaline diagnoos"
* item[=].item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].item[=].required = false
* item[=].item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[=].item[+].linkId = "traumas.diagnoses.group.source_reference"
* item[=].item[=].item[=].item[=].prefix = "15.0.1.3"
* item[=].item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].item[=].code.code = #source_reference
* item[=].item[=].item[=].item[=].code.display = "Allika viide"
* item[=].item[=].item[=].item[=].text = "Allika viide"
* item[=].item[=].item[=].item[=].type = #reference
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].readOnly = true

* item[=].item[+].linkId = "traumas.none"
* item[=].item[=].prefix = "15.1"
* item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].code.code = #none
* item[=].item[=].code.display = "Puuduvad"
* item[=].item[=].text = "Puuduvad"
* item[=].item[=].type = #boolean
* item[=].item[=].required = true

* item[=].item[+].linkId = "traumas.fractures"
* item[=].item[=].prefix = "15.2"
* item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].code.code = #fractures
* item[=].item[=].code.display = "Luumurrud (palun täpsustage, millised ja millal)"
* item[=].item[=].text = "Luumurrud (palun täpsustage, millised ja millal)"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "traumas.none"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "traumas.fractures.specify"
* item[=].item[=].item[=].prefix = "15.2.1"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #specify
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "traumas.fractures"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true

* item[=].item[+].linkId = "traumas.concussion"
* item[=].item[=].prefix = "15.3"
* item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].code.code = #concussion
* item[=].item[=].code.display = "Rasked peavigastused"
* item[=].item[=].text = "Rasked peavigastused"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen[0].question = "traumas.none"
* item[=].item[=].enableWhen[0].operator = #=
* item[=].item[=].enableWhen[0].answerBoolean = false
* item[=].item[=].enableWhen[1].question = "declaration.category"
* item[=].item[=].enableWhen[1].operator = #=
* item[=].item[=].enableWhen[1].answerCoding = #6
* item[=].item[=].enableBehavior = #all
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "traumas.concussion.specify"
* item[=].item[=].item[=].prefix = "15.3.1"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #specify
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "traumas.concussion"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true

* item[=].item[+].linkId = "traumas.other_injuries"
* item[=].item[=].prefix = "15.4"
* item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].code.code = #other_injuries
* item[=].item[=].code.display = "Muud olulised vigastused (palun täpsustage, millised ja millal)"
* item[=].item[=].text = "Muud olulised vigastused (palun täpsustage, millised ja millal)"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "traumas.none"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "traumas.other_injuries.specify"
* item[=].item[=].item[=].prefix = "15.4.1"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #specify
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "traumas.other_injuries"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true

* item[+].linkId = "pregnancy"
* item[=].prefix = "16"
* item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].code.code = #pregnancy
* item[=].code.display = "Kas olete praegu rase?"
* item[=].text = "Kas olete praegu rase?"
* item[=].type = #boolean
* item[=].enableWhen.question = "gender.authors_gender"
* item[=].enableWhen.operator = #=
* item[=].enableWhen.answerCoding = #N
* item[=].required = true

* item[+].linkId = "skin_disease"
* item[=].prefix = "17"
* item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].code.code = #skin_disease
* item[=].code.display = "Nahahaigused: millal põdenud, milliseid?"
* item[=].text = "Nahahaigused: millal põdenud, milliseid?"
* item[=].type = #group
* item[=].required = true

* item[=].item[0].linkId = "skin_disease.diagnoses"
* item[=].item[=].prefix = "17.0"
* item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].code.code = #previous_diagnoses
* item[=].item[=].code.display = "Varasemad diagnoosid"
* item[=].item[=].text = "Varasemad diagnoosid"
* item[=].item[=].type = #group
* item[=].item[=].required = false

* item[=].item[=].item[0].linkId = "skin_disease.diagnoses.group"
* item[=].item[=].item[=].prefix = "17.0.1"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #previous_diagnosis_singular
* item[=].item[=].item[=].code.display = "Varasem diagnoos"
* item[=].item[=].item[=].text = "Varasem diagnoos"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].repeats = true

* item[=].item[=].item[=].item[0].linkId = "skin_disease.diagnoses.group.diagnosis"
* item[=].item[=].item[=].item[=].prefix = "17.0.1.1"
* item[=].item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].item[=].code.code = #diagnosis
* item[=].item[=].item[=].item[=].code.display = "Diagnoos"
* item[=].item[=].item[=].item[=].text = "Diagnoos"
* item[=].item[=].item[=].item[=].type = #coding
* item[=].item[=].item[=].item[=].answerValueSet = "https://fhir.ee/ValueSet/td-nahahaigused"
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[=].item[+].linkId = "skin_disease.diagnoses.group.description"
* item[=].item[=].item[=].item[=].prefix = "17.0.1.2"
* item[=].item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].item[=].code.code = #diagnosis_description
* item[=].item[=].item[=].item[=].code.display = "Sõnaline diagnoos"
* item[=].item[=].item[=].item[=].text = "Sõnaline diagnoos"
* item[=].item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].item[=].required = false
* item[=].item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[=].item[+].linkId = "skin_disease.diagnoses.group.source_reference"
* item[=].item[=].item[=].item[=].prefix = "17.0.1.3"
* item[=].item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].item[=].code.code = #source_reference
* item[=].item[=].item[=].item[=].code.display = "Allika viide"
* item[=].item[=].item[=].item[=].text = "Allika viide"
* item[=].item[=].item[=].item[=].type = #reference
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].readOnly = true

* item[=].item[+].linkId = "skin_disease.skin_conditions"
* item[=].item[=].prefix = "17.1"
* item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].code.code = #skin_conditions
* item[=].item[=].code.display = "Nahahaigused: millal põdenud, milliseid?"
* item[=].item[=].text = "Nahahaigused: millal põdenud, milliseid?"
* item[=].item[=].type = #boolean
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "skin_disease.skin_conditions.specify"
* item[=].item[=].item[=].prefix = "17.1.1"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #specify
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "skin_disease.skin_conditions"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true

* item[+].linkId = "digestive_organs"
* item[=].prefix = "18"
* item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].code.code = #digestive_organs
* item[=].code.display = "Seedeelundid"
* item[=].text = "Seedeelundid"
* item[=].type = #group
* item[=].required = true

* item[=].item[0].linkId = "digestive_organs.diagnoses"
* item[=].item[=].prefix = "18.0"
* item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].code.code = #previous_diagnoses
* item[=].item[=].code.display = "Varasemad diagnoosid"
* item[=].item[=].text = "Varasemad diagnoosid"
* item[=].item[=].type = #group
* item[=].item[=].required = false

* item[=].item[=].item[0].linkId = "digestive_organs.diagnoses.group"
* item[=].item[=].item[=].prefix = "18.0.1"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #previous_diagnosis_singular
* item[=].item[=].item[=].code.display = "Varasem diagnoos"
* item[=].item[=].item[=].text = "Varasem diagnoos"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].repeats = true

* item[=].item[=].item[=].item[0].linkId = "digestive_organs.diagnoses.group.diagnosis"
* item[=].item[=].item[=].item[=].prefix = "18.0.1.1"
* item[=].item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].item[=].code.code = #diagnosis
* item[=].item[=].item[=].item[=].code.display = "Diagnoos"
* item[=].item[=].item[=].item[=].text = "Diagnoos"
* item[=].item[=].item[=].item[=].type = #coding
* item[=].item[=].item[=].item[=].answerValueSet = "https://fhir.ee/ValueSet/td-seedeelundid"
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[=].item[+].linkId = "digestive_organs.diagnoses.group.description"
* item[=].item[=].item[=].item[=].prefix = "18.0.1.2"
* item[=].item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].item[=].code.code = #diagnosis_description
* item[=].item[=].item[=].item[=].code.display = "Sõnaline diagnoos"
* item[=].item[=].item[=].item[=].text = "Sõnaline diagnoos"
* item[=].item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[=].item[+].linkId = "digestive_organs.diagnoses.group.source_reference"
* item[=].item[=].item[=].item[=].prefix = "18.0.1.3"
* item[=].item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].item[=].code.code = #source_reference
* item[=].item[=].item[=].item[=].code.display = "Allika viide"
* item[=].item[=].item[=].item[=].text = "Allika viide"
* item[=].item[=].item[=].item[=].type = #reference
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].readOnly = true

* item[=].item[+].linkId = "digestive_organs.no_complaints"
* item[=].item[=].prefix = "18.1"
* item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].code.code = #no_complaints
* item[=].item[=].code.display = "Kaebused hetkel puuduvad"
* item[=].item[=].text = "Kaebused hetkel puuduvad"
* item[=].item[=].type = #boolean
* item[=].item[=].required = true

* item[=].item[+].linkId = "digestive_organs.liver_disease"
* item[=].item[=].prefix = "18.2"
* item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].code.code = #liver_disease
* item[=].item[=].code.display = "Maksahaigused"
* item[=].item[=].text = "Maksahaigused"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "digestive_organs.no_complaints"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "digestive_organs.liver_disease.specify"
* item[=].item[=].item[=].prefix = "18.2.1"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #specify
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "digestive_organs.liver_disease"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true

* item[=].item[+].linkId = "digestive_organs.gall_stones"
* item[=].item[=].prefix = "18.3"
* item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].code.code = #gall_stones
* item[=].item[=].code.display = "Sapikivid"
* item[=].item[=].text = "Sapikivid"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "digestive_organs.no_complaints"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "digestive_organs.gall_stones.specify"
* item[=].item[=].item[=].prefix = "18.3.1"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #specify
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "digestive_organs.gall_stones"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true

* item[=].item[+].linkId = "digestive_organs.gastric_duodenal_ulcers"
* item[=].item[=].prefix = "18.4"
* item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].code.code = #gastric_duodenal_ulcers
* item[=].item[=].code.display = "Mao- ja kaksteistsõrmiksoole haavandid"
* item[=].item[=].text = "Mao- ja kaksteistsõrmiksoole haavandid"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "digestive_organs.no_complaints"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "digestive_organs.gastric_duodenal_ulcers.specify"
* item[=].item[=].item[=].prefix = "18.4.1"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #specify
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "digestive_organs.gastric_duodenal_ulcers"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true

* item[=].item[+].linkId = "digestive_organs.crohn_colitis"
* item[=].item[=].prefix = "18.5"
* item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].code.code = #crohn_colitis
* item[=].item[=].code.display = "Haavandiline koliit või Crohni tõbi"
* item[=].item[=].text = "Haavandiline koliit või Crohni tõbi"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "digestive_organs.no_complaints"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "digestive_organs.crohn_colitis.specify"
* item[=].item[=].item[=].prefix = "18.5.1"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #specify
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "digestive_organs.crohn_colitis"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true

* item[=].item[+].linkId = "digestive_organs.other_condition"
* item[=].item[=].prefix = "18.6"
* item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].code.code = #other_condition
* item[=].item[=].code.display = "Muu haigus/seisund/sümptom (palun täpsustage)"
* item[=].item[=].text = "Muu haigus/seisund/sümptom (palun täpsustage)"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "digestive_organs.no_complaints"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "digestive_organs.other_condition.specify"
* item[=].item[=].item[=].prefix = "18.6.1"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #specify
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "digestive_organs.other_condition"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true

* item[+].linkId = "urogenital_system"
* item[=].prefix = "19"
* item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].code.code = #urogenital_system
* item[=].code.display = "Kuse- ja suguelundid"
* item[=].text = "Kuse- ja suguelundid"
* item[=].type = #group
* item[=].required = true

* item[=].item[0].linkId = "urogenital_system.diagnoses"
* item[=].item[=].prefix = "19.0"
* item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].code.code = #previous_diagnoses
* item[=].item[=].code.display = "Varasemad diagnoosid"
* item[=].item[=].text = "Varasemad diagnoosid"
* item[=].item[=].type = #group
* item[=].item[=].required = false

* item[=].item[=].item[0].linkId = "urogenital_system.diagnoses.group"
* item[=].item[=].item[=].prefix = "19.0.1"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #previous_diagnosis_singular
* item[=].item[=].item[=].code.display = "Varasem diagnoos"
* item[=].item[=].item[=].text = "Varasem diagnoos"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].repeats = true

* item[=].item[=].item[=].item[0].linkId = "urogenital_system.diagnoses.group.diagnosis"
* item[=].item[=].item[=].item[=].prefix = "19.0.1.1"
* item[=].item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].item[=].code.code = #diagnosis
* item[=].item[=].item[=].item[=].code.display = "Diagnoos"
* item[=].item[=].item[=].item[=].text = "Diagnoos"
* item[=].item[=].item[=].item[=].type = #coding
* item[=].item[=].item[=].item[=].answerValueSet = "https://fhir.ee/ValueSet/td-kuse-ja-suguelundid"
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[=].item[+].linkId = "urogenital_system.diagnoses.group.description"
* item[=].item[=].item[=].item[=].prefix = "19.0.1.2"
* item[=].item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].item[=].code.code = #diagnosis_description
* item[=].item[=].item[=].item[=].code.display = "Sõnaline diagnoos"
* item[=].item[=].item[=].item[=].text = "Sõnaline diagnoos"
* item[=].item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].item[=].required = false
* item[=].item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[=].item[+].linkId = "urogenital_system.diagnoses.group.source_reference"
* item[=].item[=].item[=].item[=].prefix = "19.0.1.3"
* item[=].item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].item[=].code.code = #source_reference
* item[=].item[=].item[=].item[=].code.display = "Allika viide"
* item[=].item[=].item[=].item[=].text = "Allika viide"
* item[=].item[=].item[=].item[=].type = #reference
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].readOnly = true

* item[=].item[+].linkId = "urogenital_system.no_complaints"
* item[=].item[=].prefix = "19.1"
* item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].code.code = #no_complaints
* item[=].item[=].code.display = "Kaebused hetkel puuduvad"
* item[=].item[=].text = "Kaebused hetkel puuduvad"
* item[=].item[=].type = #boolean
* item[=].item[=].required = true

* item[=].item[+].linkId = "urogenital_system.kidney_diseases"
* item[=].item[=].prefix = "19.2"
* item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].code.code = #kidney_diseases
* item[=].item[=].code.display = "Neerude haigused"
* item[=].item[=].text = "Neerude haigused"
* item[=].item[=].type = #group
* item[=].item[=].enableWhen.question = "urogenital_system.no_complaints"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "urogenital_system.kidney_diseases.kidney_stones"
* item[=].item[=].item[=].prefix = "19.2.1"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #kidney_stones
* item[=].item[=].item[=].code.display = "Neerukivitõbi"
* item[=].item[=].item[=].text = "Neerukivitõbi"
* item[=].item[=].item[=].type = #boolean
* item[=].item[=].item[=].required = true

* item[=].item[=].item[=].item[0].linkId = "urogenital_system.kidney_diseases.kidney_stones.specify"
* item[=].item[=].item[=].item[=].prefix = "19.2.1.1"
* item[=].item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].item[=].code.code = #specify
* item[=].item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].item[=].text = "Täpsustus"
* item[=].item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].item[=].enableWhen.question = "urogenital_system.kidney_diseases.kidney_stones"
* item[=].item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].item[=].required = true

* item[=].item[=].item[+].linkId = "urogenital_system.kidney_diseases.renal_insufficiency"
* item[=].item[=].item[=].prefix = "19.2.2"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #renal_insufficiency
* item[=].item[=].item[=].code.display = "Neerupuudulikkus"
* item[=].item[=].item[=].text = "Neerupuudulikkus"
* item[=].item[=].item[=].type = #boolean
* item[=].item[=].item[=].required = true

* item[=].item[=].item[=].item[0].linkId = "urogenital_system.kidney_diseases.renal_insufficiency.specify"
* item[=].item[=].item[=].item[=].prefix = "19.2.2.1"
* item[=].item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].item[=].code.code = #specify
* item[=].item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].item[=].text = "Täpsustus"
* item[=].item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].item[=].enableWhen.question = "urogenital_system.kidney_diseases.renal_insufficiency"
* item[=].item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].item[=].required = true

* item[=].item[+].linkId = "urogenital_system.other_condition"
* item[=].item[=].prefix = "19.3"
* item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].code.code = #other_condition
* item[=].item[=].code.display = "Muu haigus/seisund/sümptom (palun täpsustage)"
* item[=].item[=].text = "Muu haigus/seisund/sümptom (palun täpsustage)"
* item[=].item[=].type = #group
* item[=].item[=].enableWhen.question = "urogenital_system.no_complaints"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "urogenital_system.other_condition.specify"
* item[=].item[=].item[=].prefix = "19.3.1"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #specify
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "urogenital_system.other_condition"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true

* item[+].linkId = "blood_problems"
* item[=].prefix = "20"
* item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].code.code = #blood_problems
* item[=].code.display = "Verehaigused"
* item[=].text = "Verehaigused"
* item[=].type = #group
* item[=].required = true

* item[=].item[0].linkId = "blood_problems.diagnoses"
* item[=].item[=].prefix = "20.0"
* item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].code.code = #previous_diagnoses
* item[=].item[=].code.display = "Varasemad diagnoosid"
* item[=].item[=].text = "Varasemad diagnoosid"
* item[=].item[=].type = #group
* item[=].item[=].required = false

* item[=].item[=].item[0].linkId = "blood_problems.diagnoses.group"
* item[=].item[=].item[=].prefix = "20.0.1"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #previous_diagnosis_singular
* item[=].item[=].item[=].code.display = "Varasem diagnoos"
* item[=].item[=].item[=].text = "Varasem diagnoos"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].repeats = true

* item[=].item[=].item[=].item[0].linkId = "blood_problems.diagnoses.group.diagnosis"
* item[=].item[=].item[=].item[=].prefix = "20.0.1.1"
* item[=].item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].item[=].code.code = #diagnosis
* item[=].item[=].item[=].item[=].code.display = "Diagnoos"
* item[=].item[=].item[=].item[=].text = "Diagnoos"
* item[=].item[=].item[=].item[=].type = #coding
* item[=].item[=].item[=].item[=].answerValueSet = "https://fhir.ee/ValueSet/td-verehaigused"
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[=].item[+].linkId = "blood_problems.diagnoses.group.description"
* item[=].item[=].item[=].item[=].prefix = "20.0.1.2"
* item[=].item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].item[=].code.code = #diagnosis_description
* item[=].item[=].item[=].item[=].code.display = "Sõnaline diagnoos"
* item[=].item[=].item[=].item[=].text = "Sõnaline diagnoos"
* item[=].item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].item[=].required = false
* item[=].item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[=].item[+].linkId = "blood_problems.diagnoses.group.source_reference"
* item[=].item[=].item[=].item[=].prefix = "20.0.1.3"
* item[=].item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].item[=].code.code = #source_reference
* item[=].item[=].item[=].item[=].code.display = "Allika viide"
* item[=].item[=].item[=].item[=].text = "Allika viide"
* item[=].item[=].item[=].item[=].type = #reference
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].readOnly = true

* item[=].item[+].linkId = "blood_problems.no_complaints"
* item[=].item[=].prefix = "20.1"
* item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].code.code = #no_complaints
* item[=].item[=].code.display = "Kaebused hetkel puuduvad"
* item[=].item[=].text = "Kaebused hetkel puuduvad"
* item[=].item[=].type = #boolean
* item[=].item[=].required = true

* item[=].item[+].linkId = "blood_problems.blood_disease"
* item[=].item[=].prefix = "20.2"
* item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].code.code = #blood_disease
* item[=].item[=].code.display = "Verehaigused (palun täpsustage, millised)"
* item[=].item[=].text = "Verehaigused (palun täpsustage, millised)"
* item[=].item[=].type = #group
* item[=].item[=].enableWhen.question = "blood_problems.no_complaints"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "blood_problems.blood_disease.anemia"
* item[=].item[=].item[=].prefix = "20.2.1"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #anemia
* item[=].item[=].item[=].code.display = "Aneemia ehk kehvveresus"
* item[=].item[=].item[=].text = "Aneemia ehk kehvveresus"
* item[=].item[=].item[=].type = #boolean
* item[=].item[=].item[=].required = true

* item[=].item[=].item[=].item[0].linkId = "blood_problems.blood_disease.anemia.specify"
* item[=].item[=].item[=].item[=].prefix = "20.2.1.1"
* item[=].item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].item[=].code.code = #specify
* item[=].item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].item[=].text = "Täpsustus"
* item[=].item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].item[=].enableWhen.question = "blood_problems.blood_disease.anemia"
* item[=].item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].item[=].required = true

* item[=].item[+].linkId = "blood_problems.other_condition"
* item[=].item[=].prefix = "20.3"
* item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].code.code = #other_condition
* item[=].item[=].code.display = "Muu haigus/seisund/sümptom (palun täpsustage)"
* item[=].item[=].text = "Muu haigus/seisund/sümptom (palun täpsustage)"
* item[=].item[=].type = #group
* item[=].item[=].enableWhen.question = "blood_problems.no_complaints"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "blood_problems.other_condition.specify"
* item[=].item[=].item[=].prefix = "20.3.1"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #specify
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "blood_problems.other_condition"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true

* item[+].linkId = "medical_device"
* item[=].prefix = "21"
* item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].code.code = #medical_device
* item[=].code.display = "Kasutan järgmisi meditsiiniseadmeid/abivahendeid"
* item[=].text = "Kasutan järgmisi meditsiiniseadmeid/abivahendeid"
* item[=].type = #group
* item[=].required = true

* item[=].item[+].linkId = "medical_device.nothing_used"
* item[=].item[=].prefix = "21.1"
* item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].code.code = #nothing_used
* item[=].item[=].code.display = "Ei kasuta"
* item[=].item[=].text = "Ei kasuta"
* item[=].item[=].type = #boolean
* item[=].item[=].required = true

* item[=].item[+].linkId = "medical_device.eye_glasses"
* item[=].item[=].prefix = "21.2"
* item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].code.code = #eye_glasses
* item[=].item[=].code.display = "Prillid"
* item[=].item[=].text = "Prillid"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "medical_device.nothing_used"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "medical_device.eye_glasses.specify"
* item[=].item[=].item[=].prefix = "21.2.1"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #specify
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "medical_device.eye_glasses"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true

* item[=].item[+].linkId = "medical_device.eye_lenses"
* item[=].item[=].prefix = "21.3"
* item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].code.code = #eye_lenses
* item[=].item[=].code.display = "Kontaktläätsed"
* item[=].item[=].text = "Kontaktläätsed"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "medical_device.nothing_used"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "medical_device.eye_lenses.specify"
* item[=].item[=].item[=].prefix = "21.3.1"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #specify
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "medical_device.eye_lenses"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true

* item[=].item[+].linkId = "medical_device.hearing_aid"
* item[=].item[=].prefix = "21.4"
* item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].code.code = #hearing_aid
* item[=].item[=].code.display = "Kuuldeaparaat/kohleaarimplantaat"
* item[=].item[=].text = "Kuuldeaparaat/kohleaarimplantaat"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "medical_device.nothing_used"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "medical_device.hearing_aid.specify"
* item[=].item[=].item[=].prefix = "21.4.1"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #specify
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "medical_device.hearing_aid"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true

* item[=].item[+].linkId = "medical_device.arm_prosthestis"
* item[=].item[=].prefix = "21.5"
* item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].code.code = #arm_prosthestis
* item[=].item[=].code.display = "Käeprotees"
* item[=].item[=].text = "Käeprotees"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "medical_device.nothing_used"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "medical_device.arm_prosthestis.specify"
* item[=].item[=].item[=].prefix = "21.5.1"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #specify
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "medical_device.arm_prosthestis"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true

* item[=].item[+].linkId = "medical_device.leg_prosthestis"
* item[=].item[=].prefix = "21.6"
* item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].code.code = #leg_prosthestis
* item[=].item[=].code.display = "Jalaprotees"
* item[=].item[=].text = "Jalaprotees"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "medical_device.nothing_used"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "medical_device.leg_prosthestis.specify"
* item[=].item[=].item[=].prefix = "21.6.1"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #specify
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "medical_device.leg_prosthestis"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true

* item[=].item[+].linkId = "medical_device.mobility_support"
* item[=].item[=].prefix = "21.7"
* item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].code.code = #mobility_support
* item[=].item[=].code.display = "Liikumise abivahend"
* item[=].item[=].text = "Liikumise abivahend"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "medical_device.nothing_used"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "medical_device.mobility_support.specify"
* item[=].item[=].item[=].prefix = "21.7.1"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #specify
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "medical_device.mobility_support"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true

* item[=].item[+].linkId = "medical_device.other_support"
* item[=].item[=].prefix = "21.8"
* item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].code.code = #other_support
* item[=].item[=].code.display = "Muu abivahend"
* item[=].item[=].text = "Muu abivahend"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "medical_device.nothing_used"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "medical_device.other_support.specify"
* item[=].item[=].item[=].prefix = "21.8.1"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #specify
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "medical_device.other_support"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true

* item[=].item[+].linkId = "medical_device.cpap"
* item[=].item[=].prefix = "21.9"
* item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].code.code = #cpap
* item[=].item[=].code.display = "Positiivrõhuaparaat (CPAP) või mitteinvasiivse ventilatsiooni seade"
* item[=].item[=].text = "Positiivrõhuaparaat (CPAP) või mitteinvasiivse ventilatsiooni seade"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "medical_device.nothing_used"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true

* item[=].item[+].linkId = "medical_device.intraoral_sleep_apnoea"
* item[=].item[=].prefix = "21.10"
* item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].code.code = #intraoral_sleep_apnoea
* item[=].item[=].code.display = "Intraoraalne uneapnoe seade"
* item[=].item[=].text = "Intraoraalne uneapnoe seade"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "medical_device.nothing_used"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true

* item[+].linkId = "sleep"
* item[=].prefix = "22"
* item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].code.code = #sleep
* item[=].code.display = "Uni"
* item[=].text = "Uni"
* item[=].type = #group
* item[=].required = true

* item[=].item[0].linkId = "sleep.diagnoses"
* item[=].item[=].prefix = "22.0"
* item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].code.code = #previous_diagnoses
* item[=].item[=].code.display = "Varasemad diagnoosid"
* item[=].item[=].text = "Varasemad diagnoosid"
* item[=].item[=].type = #group
* item[=].item[=].required = false

* item[=].item[=].item[0].linkId = "sleep.diagnoses.group"
* item[=].item[=].item[=].prefix = "22.0.1"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #previous_diagnosis_singular
* item[=].item[=].item[=].code.display = "Varasem diagnoos"
* item[=].item[=].item[=].text = "Varasem diagnoos"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].repeats = true

* item[=].item[=].item[=].item[0].linkId = "sleep.diagnoses.group.diagnosis"
* item[=].item[=].item[=].item[=].prefix = "22.0.1.1"
* item[=].item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].item[=].code.code = #diagnosis
* item[=].item[=].item[=].item[=].code.display = "Diagnoos"
* item[=].item[=].item[=].item[=].text = "Diagnoos"
* item[=].item[=].item[=].item[=].type = #coding
* item[=].item[=].item[=].item[=].answerValueSet = "https://fhir.ee/ValueSet/td-uni"
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[=].item[+].linkId = "sleep.diagnoses.group.description"
* item[=].item[=].item[=].item[=].prefix = "22.0.1.2"
* item[=].item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].item[=].code.code = #diagnosis_description
* item[=].item[=].item[=].item[=].code.display = "Sõnaline diagnoos"
* item[=].item[=].item[=].item[=].text = "Sõnaline diagnoos"
* item[=].item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].item[=].required = false
* item[=].item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[=].item[+].linkId = "sleep.diagnoses.group.source_reference"
* item[=].item[=].item[=].item[=].prefix = "22.0.1.3"
* item[=].item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].item[=].code.code = #source_reference
* item[=].item[=].item[=].item[=].code.display = "Allika viide"
* item[=].item[=].item[=].item[=].text = "Allika viide"
* item[=].item[=].item[=].item[=].type = #reference
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].readOnly = true

* item[=].item[+].linkId = "sleep.snoring"
* item[=].item[=].prefix = "22.1"
* item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].code.code = #snoring
* item[=].item[=].code.display = "Kas Te norskate valjult (valjemini kui tavaline kõne, või Teie norskamist on kosta kõrvalruumi ka siis, kui magamistoa uks on suletud)?"
* item[=].item[=].text = "Kas Te norskate valjult (valjemini kui tavaline kõne, või Teie norskamist on kosta kõrvalruumi ka siis, kui magamistoa uks on suletud)?"
* item[=].item[=].type = #boolean
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "sleep.snoring.specify"
* item[=].item[=].item[=].prefix = "22.1.1"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #specify
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "sleep.snoring"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true

* item[=].item[+].linkId = "sleep.fatigue"
* item[=].item[=].prefix = "22.2"
* item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].code.code = #fatigue
* item[=].item[=].code.display = "Kas Te tunnete end sageli mitteväljapuhanuna, väsinuna või unisena päevasel ajal?"
* item[=].item[=].text = "Kas Te tunnete end sageli mitteväljapuhanuna, väsinuna või unisena päevasel ajal?"
* item[=].item[=].type = #boolean
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "sleep.fatigue.specify"
* item[=].item[=].item[=].prefix = "22.2.1"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #specify
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "sleep.fatigue"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true

* item[=].item[+].linkId = "sleep.breath_stop_during_sleep"
* item[=].item[=].prefix = "22.3"
* item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].code.code = #fatigue
* item[=].item[=].code.display = "Kas Teil on täheldatud uneaegseid hingamisseisakuid?"
* item[=].item[=].text = "Kas Teil on täheldatud uneaegseid hingamisseisakuid?"
* item[=].item[=].type = #boolean
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "sleep.breath_stop_during_sleep.specify"
* item[=].item[=].item[=].prefix = "22.3.1"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #specify
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "sleep.breath_stop_during_sleep"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true

* item[+].linkId = "health_assessment"
* item[=].prefix = "23"
* item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].code.code = #health_assessment
* item[=].code.display = "Hinnang enda terviseseisundile"
* item[=].text = "Hinnang enda terviseseisundile"
* item[=].type = #group
* item[=].required = true

* item[=].item[0].linkId = "health_assessment.patient_evaluation"
* item[=].item[=].prefix = "23.1"
* item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].code.code = #patient_evaluation
* item[=].item[=].code.display = "Milline on Teie hinnang oma tervisele?"
* item[=].item[=].text = "Milline on Teie hinnang oma tervisele?"
* item[=].item[=].type = #coding
* item[=].item[=].answerValueSet = "https://fhir.ee/ValueSet/td-hinnang-tervisele"
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "health_assessment.patient_evaluation.specify"
* item[=].item[=].item[=].prefix = "23.1.1"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #specify
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].required = false

* item[=].item[+].linkId = "health_assessment.last_year_illness"
* item[=].item[=].prefix = "23.2"
* item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].code.code = #last_year_illness
* item[=].item[=].code.display = "Kas olete viimase aasta jooksul olnud haige?"
* item[=].item[=].text = "Kas olete viimase aasta jooksul olnud haige?"
* item[=].item[=].type = #boolean
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "health_assessment.last_year_illness.specify"
* item[=].item[=].item[=].prefix = "23.2.1"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #specify
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "health_assessment.last_year_illness"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true

* item[=].item[+].linkId = "health_assessment.complaints"
* item[=].item[=].prefix = "23.3"
* item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].code.code = #complaints
* item[=].item[=].code.display = "Kas Teil on enda tervise osas kaebusi?"
* item[=].item[=].text = "Kas Teil on enda tervise osas kaebusi?"
* item[=].item[=].type = #boolean
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "health_assessment.complaints.specify"
* item[=].item[=].item[=].prefix = "23.3.1"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #specify
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "health_assessment.complaints"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true

* item[=].item[+].linkId = "health_assessment.sick_days"
* item[=].item[=].prefix = "23.4"
* item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].code.code = #sick_days
* item[=].item[=].code.display = "Haiguslehed"
* item[=].item[=].text = "Haiguslehed"
* item[=].item[=].type = #group
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "health_assessment.sick_days.foreign_country_sick_days_duration"
* item[=].item[=].item[=].prefix = "23.4.1"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #foreign_country_sick_days_duration
* item[=].item[=].item[=].code.display = "Viimase 5 aasta jooksul välisriigis väljastatud haiguslehtede alguse kuupäev ja kestvus päevades"
* item[=].item[=].item[=].text = "Viimase 5 aasta jooksul välisriigis väljastatud haiguslehtede alguse kuupäev ja kestvus päevades"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].required = false

* item[=].item[=].item[+].linkId = "health_assessment.sick_days.five_year_sick_days"
* item[=].item[=].item[=].prefix = "23.4.2"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #five_year_sick_days
* item[=].item[=].item[=].code.display = "Haiguslehed (viimase 5 aasta andmed Tervisekassast)"
* item[=].item[=].item[=].text = "Haiguslehed (viimase 5 aasta andmed Tervisekassast)"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].required = false

* item[=].item[=].item[=].item[0].linkId = "health_assessment.sick_days.five_year_sick_days.sick_day"
* item[=].item[=].item[=].item[=].prefix = "23.4.2.1"
* item[=].item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].item[=].code.code = #sick_day
* item[=].item[=].item[=].item[=].code.display = "Haigusleht"
* item[=].item[=].item[=].item[=].text = "Haigusleht"
* item[=].item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].repeats = true

* item[=].item[=].item[=].item[=].item[0].linkId = "health_assessment.sick_days.five_year_sick_days.sick_day.from"
* item[=].item[=].item[=].item[=].item[=].prefix = "23.4.2.1.1"
* item[=].item[=].item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].item[=].item[=].code.code = #from
* item[=].item[=].item[=].item[=].item[=].code.display = "Alates"
* item[=].item[=].item[=].item[=].item[=].text = "Alates"
* item[=].item[=].item[=].item[=].item[=].type = #date
* item[=].item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[=].item[=].item[+].linkId = "health_assessment.sick_days.five_year_sick_days.sick_day.duration"
* item[=].item[=].item[=].item[=].item[=].prefix = "23.4.2.1.2"
* item[=].item[=].item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].item[=].item[=].code.code = #duration
* item[=].item[=].item[=].item[=].item[=].code.display = "Kestus päevades"
* item[=].item[=].item[=].item[=].item[=].text = "Kestus päevades"
* item[=].item[=].item[=].item[=].item[=].type = #integer
* item[=].item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[=].item[=].item[+].linkId = "health_assessment.sick_days.five_year_sick_days.sick_day.diagnosis"
* item[=].item[=].item[=].item[=].item[=].prefix = "23.4.2.1.3"
* item[=].item[=].item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].item[=].item[=].code.code = #diagnosis
* item[=].item[=].item[=].item[=].item[=].code.display = "Diagnoos"
* item[=].item[=].item[=].item[=].item[=].text = "Diagnoos"
* item[=].item[=].item[=].item[=].item[=].type = #coding
* item[=].item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].item[=].readOnly = true

* item[=].item[+].linkId = "health_assessment.work_disability"
* item[=].item[=].prefix = "23.5"
* item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].code.code = #work_disability
* item[=].item[=].code.display = "Töövõimetus"
* item[=].item[=].text = "Töövõimetus"
* item[=].item[=].type = #group
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "health_assessment.work_disability.foreign_work_disability_given"
* item[=].item[=].item[=].prefix = "23.5.1"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #foreign_work_disability_given
* item[=].item[=].item[=].code.display = "Kas Teile on välisriigis määratud töövõime osaline kaotus?"
* item[=].item[=].item[=].text = "Kas Teile on välisriigis määratud töövõime osaline kaotus?"
* item[=].item[=].item[=].type = #boolean
* item[=].item[=].item[=].required = true

* item[=].item[=].item[=].item[0].linkId = "health_assessment.work_disability.foreign_work_disability_given.specify"
* item[=].item[=].item[=].item[=].prefix = "23.5.1.1"
* item[=].item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].item[=].code.code = #specify
* item[=].item[=].item[=].item[=].code.display = "Täpsusta"
* item[=].item[=].item[=].item[=].text = "Täpsusta"
* item[=].item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].enableWhen.question = "health_assessment.work_disability.foreign_work_disability_given"
* item[=].item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].item[=].enableWhen.answerBoolean = true

* item[=].item[=].item[+].linkId = "health_assessment.work_disability.partial_work_disability"
* item[=].item[=].item[=].prefix = "23.5.2"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #partial_work_disability
* item[=].item[=].item[=].code.display = "Osaline töövõimetus (andmed Sotsiaalkindlustusametist)"
* item[=].item[=].item[=].text = "Osaline töövõimetus (andmed Sotsiaalkindlustusametist)"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].required = false

* item[=].item[=].item[=].item[0].linkId = "health_assessment.work_disability.partial_work_disability.from"
* item[=].item[=].item[=].item[=].prefix = "23.5.2.1"
* item[=].item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].item[=].code.code = #from
* item[=].item[=].item[=].item[=].code.display = "Alates"
* item[=].item[=].item[=].item[=].text = "Alates"
* item[=].item[=].item[=].item[=].type = #date
* item[=].item[=].item[=].item[=].required = false
* item[=].item[=].item[=].item[=].readOnly = true 

* item[=].item[=].item[=].item[+].linkId = "health_assessment.work_disability.partial_work_disability.to"
* item[=].item[=].item[=].item[=].prefix = "23.5.2.2"
* item[=].item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].item[=].code.code = #to
* item[=].item[=].item[=].item[=].code.display = "kuni"
* item[=].item[=].item[=].item[=].text = "kuni"
* item[=].item[=].item[=].item[=].type = #date
* item[=].item[=].item[=].item[=].required = false
* item[=].item[=].item[=].item[=].readOnly = true 

* item[=].item[=].item[=].item[+].linkId = "health_assessment.work_disability.partial_work_disability.work_disability_type"
* item[=].item[=].item[=].item[=].prefix = "23.5.2.3"
* item[=].item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].item[=].code.code = #work_disability_type
* item[=].item[=].item[=].item[=].code.display = "Töövõimeliik"
* item[=].item[=].item[=].item[=].text = "Töövõimeliik"
* item[=].item[=].item[=].item[=].type = #coding
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].readOnly = true 
* item[=].item[=].item[=].item[=].answerValueSet = "https://fhir.ee/CodeSystem/toovoime-liik"

* item[=].item[+].linkId = "health_assessment.disability"
* item[=].item[=].prefix = "23.6"
* item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].code.code = #disability
* item[=].item[=].code.display = "Puue"
* item[=].item[=].text = "Puue"
* item[=].item[=].type = #group
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "health_assessment.disability.foreign_disability_given"
* item[=].item[=].item[=].prefix = "23.6.1"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #foreign_disability_given
* item[=].item[=].item[=].code.display = "Kas Teil on välisriigis tuvastatud puue?"
* item[=].item[=].item[=].text = "Kas Teil on välisriigis tuvastatud puue?"
* item[=].item[=].item[=].type = #boolean
* item[=].item[=].item[=].required = true

* item[=].item[=].item[=].item[0].linkId = "health_assessment.disability.foreign_disability_given.degree_of_disability"
* item[=].item[=].item[=].item[=].prefix = "23.6.1.1"
* item[=].item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].item[=].code.code = #degree_of_disability
* item[=].item[=].item[=].item[=].code.display = "Puude raskusaste"
* item[=].item[=].item[=].item[=].text = "Puude raskusaste"
* item[=].item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].enableWhen.question = "health_assessment.disability.foreign_disability_given"
* item[=].item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].item[=].enableWhen.answerBoolean = true

* item[=].item[=].item[+].linkId = "health_assessment.disability.disability_data"
* item[=].item[=].item[=].prefix = "23.6.2"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #disability_data
* item[=].item[=].item[=].code.display = "Puue (andmed Sotsiaalkindlustusametist)"
* item[=].item[=].item[=].text = "Puue (andmed Sotsiaalkindlustusametist)"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].required = false

* item[=].item[=].item[=].item[0].linkId = "health_assessment.disability.disability_data.from"
* item[=].item[=].item[=].item[=].prefix = "23.6.2.1"
* item[=].item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].item[=].code.code = #from
* item[=].item[=].item[=].item[=].code.display = "Alates"
* item[=].item[=].item[=].item[=].text = "Alates"
* item[=].item[=].item[=].item[=].type = #date
* item[=].item[=].item[=].item[=].required = false
* item[=].item[=].item[=].item[=].readOnly = true 

* item[=].item[=].item[=].item[+].linkId = "health_assessment.disability.disability_data.to"
* item[=].item[=].item[=].item[=].prefix = "23.6.2.2"
* item[=].item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].item[=].code.code = #to
* item[=].item[=].item[=].item[=].code.display = "kuni"
* item[=].item[=].item[=].item[=].text = "kuni"
* item[=].item[=].item[=].item[=].type = #date
* item[=].item[=].item[=].item[=].required = false
* item[=].item[=].item[=].item[=].readOnly = true 

* item[=].item[=].item[=].item[+].linkId = "health_assessment.disability.disability_data.degree_of_disability"
* item[=].item[=].item[=].item[=].prefix = "23.6.2.3"
* item[=].item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].item[=].code.code = #degree_of_disability
* item[=].item[=].item[=].item[=].code.display = "Puude raskusaste"
* item[=].item[=].item[=].item[=].text = "Puude raskusaste"
* item[=].item[=].item[=].item[=].type = #coding
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].readOnly = true 
* item[=].item[=].item[=].item[=].answerValueSet = "https://fhir.ee/CodeSystem/puude-raskusaste"

* item[+].linkId = "immunization"
* item[=].prefix = "24"
* item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].code.code = #immunization
* item[=].code.display = "Immuniseerimine"
* item[=].text = "Immuniseerimine"
* item[=].type = #group
* item[=].enableWhen.question = "declaration.category"
* item[=].enableWhen.operator = #=
* item[=].enableWhen.answerCoding = #6
* item[=].required = true

* item[=].item[0].linkId = "immunization.b_hepatitis"
* item[=].item[=].prefix = "24.1"
* item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].code.code = #b_hepatitis
* item[=].item[=].code.display = "B-viirushepatiit"
* item[=].item[=].type = #group
* item[=].item[=].required = true
* item[=].item[=].text = "B-viirushepatiit"

* item[=].item[=].item[0].linkId = "immunization.b_hepatitis.vaccinated"
* item[=].item[=].item[=].prefix = "24.1.1"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #b_hepatitis_vaccinated
* item[=].item[=].item[=].code.display = "Kas Teile on tehtud B-viirushepatiidi vaktsiin?"
* item[=].item[=].item[=].text = "Kas Teile on tehtud B-viirushepatiidi vaktsiin?"
* item[=].item[=].item[=].type = #boolean
* item[=].item[=].item[=].required = true

* item[=].item[=].item[+].linkId = "immunization.b_hepatitis.immunization_his_data"
* item[=].item[=].item[=].prefix = "24.1.2"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #immunization
* item[=].item[=].item[=].code.display = "Immuniseerimine"
* item[=].item[=].item[=].text = "Immuniseerimine"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].enableWhen.question = "immunization.b_hepatitis.vaccinated"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].repeats = true
* item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[=].item[0].linkId = "immunization.b_hepatitis.immunization_his_data.date"
* item[=].item[=].item[=].item[=].prefix = "24.1.2.1"
* item[=].item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].item[=].code.code = #date
* item[=].item[=].item[=].item[=].code.display = "Kuupäev"
* item[=].item[=].item[=].item[=].text = "Kuupäev"
* item[=].item[=].item[=].item[=].type = #date
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[=].item[+].linkId = "immunization.b_hepatitis.immunization_his_data.source_reference"
* item[=].item[=].item[=].item[=].prefix = "24.1.2.2"
* item[=].item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].item[=].code.code = #source_reference
* item[=].item[=].item[=].item[=].code.display = "Allika viide"
* item[=].item[=].item[=].item[=].text = "Allika viide"
* item[=].item[=].item[=].item[=].type = #reference
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[+].linkId = "immunization.b_hepatitis.self_report_date"
* item[=].item[=].item[=].prefix = "24.1.3"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #date
* item[=].item[=].item[=].code.display = "Kuupäev"
* item[=].item[=].item[=].text = "Kuupäev"
* item[=].item[=].item[=].type = #date
* item[=].item[=].item[=].enableWhen.question = "immunization.b_hepatitis.vaccinated"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].repeats = true

* item[=].item[+].linkId = "immunization.tuberculosis"
* item[=].item[=].prefix = "24.2"
* item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].code.code = #tuberculosis
* item[=].item[=].code.display = "Tuberkuloos"
* item[=].item[=].text = "Tuberkuloos"
* item[=].item[=].type = #group
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "immunization.tuberculosis.vaccinated"
* item[=].item[=].item[=].prefix = "24.2.1"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #tuberculosis_vaccinated
* item[=].item[=].item[=].code.display = "Kas Teile on tehtud tuberkuloosi vaktsiin?"
* item[=].item[=].item[=].text = "Kas Teile on tehtud tuberkuloosi vaktsiin?"
* item[=].item[=].item[=].type = #boolean
* item[=].item[=].item[=].required = true

* item[=].item[=].item[+].linkId = "immunization.tuberculosis.immunization_his_data"
* item[=].item[=].item[=].prefix = "24.2.2"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #immunization
* item[=].item[=].item[=].code.display = "Immuniseerimine"
* item[=].item[=].item[=].text = "Immuniseerimine"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].enableWhen.question = "immunization.tuberculosis.vaccinated"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].repeats = true
* item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[=].item[0].linkId = "immunization.tuberculosis.immunization_his_data.date"
* item[=].item[=].item[=].item[=].prefix = "24.2.2.1"
* item[=].item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].item[=].code.code = #date
* item[=].item[=].item[=].item[=].code.display = "Kuupäev"
* item[=].item[=].item[=].item[=].text = "Kuupäev"
* item[=].item[=].item[=].item[=].type = #date
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[=].item[+].linkId = "immunization.tuberculosis.immunization_his_data.source_reference"
* item[=].item[=].item[=].item[=].prefix = "24.2.2.2"
* item[=].item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].item[=].code.code = #source_reference
* item[=].item[=].item[=].item[=].code.display = "Allika viide"
* item[=].item[=].item[=].item[=].text = "Allika viide"
* item[=].item[=].item[=].item[=].type = #reference
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[+].linkId = "immunization.tuberculosis.self_report_date"
* item[=].item[=].item[=].prefix = "24.2.3"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #date
* item[=].item[=].item[=].code.display = "Kuupäev"
* item[=].item[=].item[=].text = "Kuupäev"
* item[=].item[=].item[=].type = #date
* item[=].item[=].item[=].enableWhen.question = "immunization.tuberculosis.vaccinated"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].repeats = true

* item[=].item[+].linkId = "immunization.rotavirus"
* item[=].item[=].prefix = "24.3"
* item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].code.code = #rotavirus
* item[=].item[=].code.display = "Rotaviirus"
* item[=].item[=].text = "Rotaviirus"
* item[=].item[=].type = #group
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "immunization.rotavirus.vaccinated"
* item[=].item[=].item[=].prefix = "24.3.1"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #rotavirus_vaccinated
* item[=].item[=].item[=].code.display = "Kas Teile on tehtud rotaviirusnakkuse vaktsiin?"
* item[=].item[=].item[=].text = "Kas Teile on tehtud rotaviirusnakkuse vaktsiin?"
* item[=].item[=].item[=].type = #boolean
* item[=].item[=].item[=].required = true

* item[=].item[=].item[+].linkId = "immunization.rotavirus.immunization_his_data"
* item[=].item[=].item[=].prefix = "24.3.2"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #immunization
* item[=].item[=].item[=].code.display = "Immuniseerimine"
* item[=].item[=].item[=].text = "Immuniseerimine"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].enableWhen.question = "immunization.rotavirus.vaccinated"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].repeats = true
* item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[=].item[0].linkId = "immunization.rotavirus.immunization_his_data.date"
* item[=].item[=].item[=].item[=].prefix = "24.3.2.1"
* item[=].item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].item[=].code.code = #date
* item[=].item[=].item[=].item[=].code.display = "Kuupäev"
* item[=].item[=].item[=].item[=].text = "Kuupäev"
* item[=].item[=].item[=].item[=].type = #date
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[=].item[+].linkId = "immunization.rotavirus.immunization_his_data.source_reference"
* item[=].item[=].item[=].item[=].prefix = "24.3.2.2"
* item[=].item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].item[=].code.code = #source_reference
* item[=].item[=].item[=].item[=].code.display = "Allika viide"
* item[=].item[=].item[=].item[=].text = "Allika viide"
* item[=].item[=].item[=].item[=].type = #reference
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[+].linkId = "immunization.rotavirus.self_report_date"
* item[=].item[=].item[=].prefix = "24.3.3"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #date
* item[=].item[=].item[=].code.display = "Kuupäev"
* item[=].item[=].item[=].text = "Kuupäev"
* item[=].item[=].item[=].type = #date
* item[=].item[=].item[=].enableWhen.question = "immunization.rotavirus.vaccinated"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].repeats = true

* item[=].item[+].linkId = "immunization.diphteria"
* item[=].item[=].prefix = "24.4"
* item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].code.code = #diphteria
* item[=].item[=].code.display = "Difteeria"
* item[=].item[=].text = "Difteeria"
* item[=].item[=].type = #group
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "immunization.diphteria.vaccinated"
* item[=].item[=].item[=].prefix = "24.4.1"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #diphteria_vaccinated
* item[=].item[=].item[=].code.display = "Kas Teile on tehtud difteeria vaktsiin?"
* item[=].item[=].item[=].text = "Kas Teile on tehtud difteeria vaktsiin?"
* item[=].item[=].item[=].type = #boolean
* item[=].item[=].item[=].required = true

* item[=].item[=].item[+].linkId = "immunization.diphteria.immunization_his_data"
* item[=].item[=].item[=].prefix = "24.4.2"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #immunization
* item[=].item[=].item[=].code.display = "Immuniseerimine"
* item[=].item[=].item[=].text = "Immuniseerimine"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].enableWhen.question = "immunization.diphteria.vaccinated"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].repeats = true
* item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[=].item[0].linkId = "immunization.diphteria.immunization_his_data.date"
* item[=].item[=].item[=].item[=].prefix = "24.4.2.1"
* item[=].item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].item[=].code.code = #date
* item[=].item[=].item[=].item[=].code.display = "Kuupäev"
* item[=].item[=].item[=].item[=].text = "Kuupäev"
* item[=].item[=].item[=].item[=].type = #date
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[=].item[+].linkId = "immunization.diphteria.immunization_his_data.source_reference"
* item[=].item[=].item[=].item[=].prefix = "24.4.2.2"
* item[=].item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].item[=].code.code = #source_reference
* item[=].item[=].item[=].item[=].code.display = "Allika viide"
* item[=].item[=].item[=].item[=].text = "Allika viide"
* item[=].item[=].item[=].item[=].type = #reference
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[+].linkId = "immunization.diphteria.self_report_date"
* item[=].item[=].item[=].prefix = "24.4.3"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #date
* item[=].item[=].item[=].code.display = "Kuupäev"
* item[=].item[=].item[=].text = "Kuupäev"
* item[=].item[=].item[=].type = #date
* item[=].item[=].item[=].enableWhen.question = "immunization.diphteria.vaccinated"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].repeats = true

* item[=].item[+].linkId = "immunization.tetanus"
* item[=].item[=].prefix = "24.5"
* item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].code.code = #tetanus
* item[=].item[=].code.display = "Teetanus"
* item[=].item[=].text = "Teetanus"
* item[=].item[=].type = #group
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "immunization.tetanus.vaccinated"
* item[=].item[=].item[=].prefix = "24.5.1"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #tetanus_vaccinated
* item[=].item[=].item[=].code.display = "Kas Teile on tehtud teetanuse vaktsiin?"
* item[=].item[=].item[=].text = "Kas Teile on tehtud teetanuse vaktsiin?"
* item[=].item[=].item[=].type = #boolean
* item[=].item[=].item[=].required = true

* item[=].item[=].item[+].linkId = "immunization.tetanus.immunization_his_data"
* item[=].item[=].item[=].prefix = "24.5.2"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #immunization
* item[=].item[=].item[=].code.display = "Immuniseerimine"
* item[=].item[=].item[=].text = "Immuniseerimine"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].enableWhen.question = "immunization.tetanus.vaccinated"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].repeats = true
* item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[=].item[0].linkId = "immunization.tetanus.immunization_his_data.date"
* item[=].item[=].item[=].item[=].prefix = "24.5.2.1"
* item[=].item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].item[=].code.code = #date
* item[=].item[=].item[=].item[=].code.display = "Kuupäev"
* item[=].item[=].item[=].item[=].text = "Kuupäev"
* item[=].item[=].item[=].item[=].type = #date
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[=].item[+].linkId = "immunization.tetanus.immunization_his_data.source_reference"
* item[=].item[=].item[=].item[=].prefix = "24.5.2.2"
* item[=].item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].item[=].code.code = #source_reference
* item[=].item[=].item[=].item[=].code.display = "Allika viide"
* item[=].item[=].item[=].item[=].text = "Allika viide"
* item[=].item[=].item[=].item[=].type = #reference
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[+].linkId = "immunization.tetanus.self_report_date"
* item[=].item[=].item[=].prefix = "24.5.3"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #date
* item[=].item[=].item[=].code.display = "Kuupäev"
* item[=].item[=].item[=].text = "Kuupäev"
* item[=].item[=].item[=].type = #date
* item[=].item[=].item[=].enableWhen.question = "immunization.tetanus.vaccinated"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].repeats = true

* item[=].item[+].linkId = "immunization.pertussis"
* item[=].item[=].prefix = "24.6"
* item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].code.code = #pertussis
* item[=].item[=].code.display = "Läkaköha"
* item[=].item[=].text = "Läkaköha"
* item[=].item[=].type = #group
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "immunization.pertussis.vaccinated"
* item[=].item[=].item[=].prefix = "24.6.1"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #pertussis_vaccinated
* item[=].item[=].item[=].code.display = "Kas Teile on tehtud atsellulaarse läkaköha vaktsiin?"
* item[=].item[=].item[=].text = "Kas Teile on tehtud atsellulaarse läkaköha vaktsiin?"
* item[=].item[=].item[=].type = #boolean
* item[=].item[=].item[=].required = true

* item[=].item[=].item[+].linkId = "immunization.pertussis.immunization_his_data"
* item[=].item[=].item[=].prefix = "24.6.2"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #immunization
* item[=].item[=].item[=].code.display = "Immuniseerimine"
* item[=].item[=].item[=].text = "Immuniseerimine"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].enableWhen.question = "immunization.pertussis.vaccinated"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].repeats = true
* item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[=].item[0].linkId = "immunization.pertussis.immunization_his_data.date"
* item[=].item[=].item[=].item[=].prefix = "24.6.2.1"
* item[=].item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].item[=].code.code = #date
* item[=].item[=].item[=].item[=].code.display = "Kuupäev"
* item[=].item[=].item[=].item[=].text = "Kuupäev"
* item[=].item[=].item[=].item[=].type = #date
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[=].item[+].linkId = "immunization.pertussis.immunization_his_data.source_reference"
* item[=].item[=].item[=].item[=].prefix = "24.6.2.2"
* item[=].item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].item[=].code.code = #source_reference
* item[=].item[=].item[=].item[=].code.display = "Allika viide"
* item[=].item[=].item[=].item[=].text = "Allika viide"
* item[=].item[=].item[=].item[=].type = #reference
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[+].linkId = "immunization.pertussis.self_report_date"
* item[=].item[=].item[=].prefix = "24.3.3"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #date
* item[=].item[=].item[=].code.display = "Kuupäev"
* item[=].item[=].item[=].text = "Kuupäev"
* item[=].item[=].item[=].type = #date
* item[=].item[=].item[=].enableWhen.question = "immunization.pertussis.vaccinated"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].repeats = true

* item[=].item[+].linkId = "immunization.polio"
* item[=].item[=].prefix = "24.7"
* item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].code.code = #polio
* item[=].item[=].code.display = "Poliomüeliit"
* item[=].item[=].text = "Poliomüeliit"
* item[=].item[=].type = #group
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "immunization.polio.vaccinated"
* item[=].item[=].item[=].prefix = "24.7.1"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #polio_vaccinated
* item[=].item[=].item[=].code.display = "Kas Teile on tehtud inaktiveeritud poliomüeliidi vaktsiin?"
* item[=].item[=].item[=].text = "Kas Teile on tehtud inaktiveeritud poliomüeliidi vaktsiin?"
* item[=].item[=].item[=].type = #boolean
* item[=].item[=].item[=].required = true

* item[=].item[=].item[+].linkId = "immunization.polio.immunization_his_data"
* item[=].item[=].item[=].prefix = "24.7.2"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #immunization
* item[=].item[=].item[=].code.display = "Immuniseerimine"
* item[=].item[=].item[=].text = "Immuniseerimine"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].enableWhen.question = "immunization.polio.vaccinated"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].repeats = true
* item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[=].item[0].linkId = "immunization.polio.immunization_his_data.date"
* item[=].item[=].item[=].item[=].prefix = "24.7.2.1"
* item[=].item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].item[=].code.code = #date
* item[=].item[=].item[=].item[=].code.display = "Kuupäev"
* item[=].item[=].item[=].item[=].text = "Kuupäev"
* item[=].item[=].item[=].item[=].type = #date
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[=].item[+].linkId = "immunization.polio.immunization_his_data.source_reference"
* item[=].item[=].item[=].item[=].prefix = "24.7.2.2"
* item[=].item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].item[=].code.code = #source_reference
* item[=].item[=].item[=].item[=].code.display = "Allika viide"
* item[=].item[=].item[=].item[=].text = "Allika viide"
* item[=].item[=].item[=].item[=].type = #reference
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[+].linkId = "immunization.polio.self_report_date"
* item[=].item[=].item[=].prefix = "24.7.3"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #date
* item[=].item[=].item[=].code.display = "Kuupäev"
* item[=].item[=].item[=].text = "Kuupäev"
* item[=].item[=].item[=].type = #date
* item[=].item[=].item[=].enableWhen.question = "immunization.polio.vaccinated"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].repeats = true

* item[=].item[+].linkId = "immunization.hemo_influenza"
* item[=].item[=].prefix = "24.8"
* item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].code.code = #influenza
* item[=].item[=].code.display = "Influensa"
* item[=].item[=].text = "Influensa"
* item[=].item[=].type = #group
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "immunization.hemo_influenza.vaccinated"
* item[=].item[=].item[=].prefix = "24.8.1"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #hemo_influenza_vaccinated
* item[=].item[=].item[=].code.display = "Kas Teile on tehtud Haemophilus influenzae tüüp b nakkuse vaktsiin?"
* item[=].item[=].item[=].text = "Kas Teile on tehtud Haemophilus influenzae tüüp b nakkuse vaktsiin?"
* item[=].item[=].item[=].type = #boolean
* item[=].item[=].item[=].required = true

* item[=].item[=].item[+].linkId = "immunization.hemo_influenza.immunization_his_data"
* item[=].item[=].item[=].prefix = "24.8.2"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #immunization
* item[=].item[=].item[=].code.display = "Immuniseerimine"
* item[=].item[=].item[=].text = "Immuniseerimine"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].enableWhen.question = "immunization.hemo_influenza.vaccinated"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].repeats = true
* item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[=].item[0].linkId = "immunization.hemo_influenza.immunization_his_data.date"
* item[=].item[=].item[=].item[=].prefix = "24.8.2.1"
* item[=].item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].item[=].code.code = #date
* item[=].item[=].item[=].item[=].code.display = "Kuupäev"
* item[=].item[=].item[=].item[=].text = "Kuupäev"
* item[=].item[=].item[=].item[=].type = #date
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[=].item[+].linkId = "immunization.hemo_influenza.immunization_his_data.source_reference"
* item[=].item[=].item[=].item[=].prefix = "24.8.2.2"
* item[=].item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].item[=].code.code = #source_reference
* item[=].item[=].item[=].item[=].code.display = "Allika viide"
* item[=].item[=].item[=].item[=].text = "Allika viide"
* item[=].item[=].item[=].item[=].type = #reference
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[+].linkId = "immunization.hemo_influenza.self_report_date"
* item[=].item[=].item[=].prefix = "24.8.3"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #date
* item[=].item[=].item[=].code.display = "Kuupäev"
* item[=].item[=].item[=].text = "Kuupäev"
* item[=].item[=].item[=].type = #date
* item[=].item[=].item[=].enableWhen.question = "immunization.hemo_influenza.vaccinated"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].repeats = true

* item[=].item[+].linkId = "immunization.measles"
* item[=].item[=].prefix = "24.9"
* item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].code.code = #measles
* item[=].item[=].code.display = "Leetrid"
* item[=].item[=].text = "Leetrid"
* item[=].item[=].type = #group
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "immunization.measles.vaccinated"
* item[=].item[=].item[=].prefix = "24.9.1"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #measles_vaccinated
* item[=].item[=].item[=].code.display = "Kas Teile on tehtud leetrite vaktsiin?"
* item[=].item[=].item[=].text = "Kas Teile on tehtud leetrite vaktsiin?"
* item[=].item[=].item[=].type = #boolean
* item[=].item[=].item[=].required = true

* item[=].item[=].item[+].linkId = "immunization.measles.immunization_his_data"
* item[=].item[=].item[=].prefix = "24.9.2"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #immunization
* item[=].item[=].item[=].code.display = "Immuniseerimine"
* item[=].item[=].item[=].text = "Immuniseerimine"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].enableWhen.question = "immunization.measles.vaccinated"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].repeats = true
* item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[=].item[0].linkId = "immunization.measles.immunization_his_data.date"
* item[=].item[=].item[=].item[=].prefix = "24.9.2.1"
* item[=].item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].item[=].code.code = #date
* item[=].item[=].item[=].item[=].code.display = "Kuupäev"
* item[=].item[=].item[=].item[=].text = "Kuupäev"
* item[=].item[=].item[=].item[=].type = #date
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[=].item[+].linkId = "immunization.measles.immunization_his_data.source_reference"
* item[=].item[=].item[=].item[=].prefix = "24.9.2.2"
* item[=].item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].item[=].code.code = #source_reference
* item[=].item[=].item[=].item[=].code.display = "Allika viide"
* item[=].item[=].item[=].item[=].text = "Allika viide"
* item[=].item[=].item[=].item[=].type = #reference
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[+].linkId = "immunization.measles.self_report_date"
* item[=].item[=].item[=].prefix = "24.9.3"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #date
* item[=].item[=].item[=].code.display = "Kuupäev"
* item[=].item[=].item[=].text = "Kuupäev"
* item[=].item[=].item[=].type = #date
* item[=].item[=].item[=].enableWhen.question = "immunization.measles.vaccinated"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].repeats = true

* item[=].item[+].linkId = "immunization.mumps"
* item[=].item[=].prefix = "24.10"
* item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].code.code = #mumps
* item[=].item[=].code.display = "Mumps"
* item[=].item[=].text = "Mumps"
* item[=].item[=].type = #group
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "immunization.mumps.vaccinated"
* item[=].item[=].item[=].prefix = "24.10.1"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #mumps_vaccinated
* item[=].item[=].item[=].code.display = "Kas Teile on tehtud mumpsi vaktsiin?"
* item[=].item[=].item[=].text = "Kas Teile on tehtud mumpsi vaktsiin?"
* item[=].item[=].item[=].type = #boolean
* item[=].item[=].item[=].required = true

* item[=].item[=].item[+].linkId = "immunization.mumps.immunization_his_data"
* item[=].item[=].item[=].prefix = "24.10.2"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #immunization
* item[=].item[=].item[=].code.display = "Immuniseerimine"
* item[=].item[=].item[=].text = "Immuniseerimine"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].enableWhen.question = "immunization.mumps.vaccinated"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].repeats = true
* item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[=].item[0].linkId = "immunization.mumps.immunization_his_data.date"
* item[=].item[=].item[=].item[=].prefix = "24.10.2.1"
* item[=].item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].item[=].code.code = #date
* item[=].item[=].item[=].item[=].code.display = "Kuupäev"
* item[=].item[=].item[=].item[=].text = "Kuupäev"
* item[=].item[=].item[=].item[=].type = #date
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[=].item[+].linkId = "immunization.mumps.immunization_his_data.source_reference"
* item[=].item[=].item[=].item[=].prefix = "24.10.2.2"
* item[=].item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].item[=].code.code = #source_reference
* item[=].item[=].item[=].item[=].code.display = "Allika viide"
* item[=].item[=].item[=].item[=].text = "Allika viide"
* item[=].item[=].item[=].item[=].type = #reference
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[+].linkId = "immunization.mumps.self_report_date"
* item[=].item[=].item[=].prefix = "24.10.3"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #date
* item[=].item[=].item[=].code.display = "Kuupäev"
* item[=].item[=].item[=].text = "Kuupäev"
* item[=].item[=].item[=].type = #date
* item[=].item[=].item[=].enableWhen.question = "immunization.mumps.vaccinated"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].repeats = true

* item[=].item[+].linkId = "immunization.rubella"
* item[=].item[=].prefix = "24.11"
* item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].code.code = #rubella
* item[=].item[=].code.display = "Punetised"
* item[=].item[=].text = "Punetised"
* item[=].item[=].type = #group
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "immunization.rubella.vaccinated"
* item[=].item[=].item[=].prefix = "24.11.1"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #rubella_vaccinated
* item[=].item[=].item[=].code.display = "Kas Teile on tehtud punetiste vaktsiin?"
* item[=].item[=].item[=].text = "Kas Teile on tehtud punetiste vaktsiin?"
* item[=].item[=].item[=].type = #boolean
* item[=].item[=].item[=].required = true

* item[=].item[=].item[+].linkId = "immunization.rubella.immunization_his_data"
* item[=].item[=].item[=].prefix = "24.11.2"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #immunization
* item[=].item[=].item[=].code.display = "Immuniseerimine"
* item[=].item[=].item[=].text = "Immuniseerimine"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].enableWhen.question = "immunization.rubella.vaccinated"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].repeats = true
* item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[=].item[0].linkId = "immunization.rubella.immunization_his_data.date"
* item[=].item[=].item[=].item[=].prefix = "24.11.2.1"
* item[=].item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].item[=].code.code = #date
* item[=].item[=].item[=].item[=].code.display = "Kuupäev"
* item[=].item[=].item[=].item[=].text = "Kuupäev"
* item[=].item[=].item[=].item[=].type = #date
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[=].item[+].linkId = "immunization.rubella.immunization_his_data.source_reference"
* item[=].item[=].item[=].item[=].prefix = "24.11.2.2"
* item[=].item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].item[=].code.code = #source_reference
* item[=].item[=].item[=].item[=].code.display = "Allika viide"
* item[=].item[=].item[=].item[=].text = "Allika viide"
* item[=].item[=].item[=].item[=].type = #reference
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[+].linkId = "immunization.rubella.self_report_date"
* item[=].item[=].item[=].prefix = "24.11.3"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #date
* item[=].item[=].item[=].code.display = "Kuupäev"
* item[=].item[=].item[=].text = "Kuupäev"
* item[=].item[=].item[=].type = #date
* item[=].item[=].item[=].enableWhen.question = "immunization.rubella.vaccinated"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].repeats = true

* item[=].item[+].linkId = "immunization.hpv"
* item[=].item[=].prefix = "24.12"
* item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].code.code = #hpv
* item[=].item[=].code.display = "HPV"
* item[=].item[=].text = "HPV"
* item[=].item[=].type = #group
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "immunization.hpv.vaccinated"
* item[=].item[=].item[=].prefix = "24.12.1"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #hpv_vaccinated
* item[=].item[=].item[=].code.display = "Kas Teile on tehtud papilloomiviirusnakkuse vaktsiin?"
* item[=].item[=].item[=].text = "Kas Teile on tehtud papilloomiviirusnakkuse vaktsiin?"
* item[=].item[=].item[=].type = #boolean
* item[=].item[=].item[=].required = true

* item[=].item[=].item[+].linkId = "immunization.hpv.immunization_his_data"
* item[=].item[=].item[=].prefix = "24.12.2"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #immunization
* item[=].item[=].item[=].code.display = "Immuniseerimine"
* item[=].item[=].item[=].text = "Immuniseerimine"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].enableWhen.question = "immunization.hpv.vaccinated"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].repeats = true
* item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[=].item[0].linkId = "immunization.hpv.immunization_his_data.date"
* item[=].item[=].item[=].item[=].prefix = "24.12.2.1"
* item[=].item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].item[=].code.code = #date
* item[=].item[=].item[=].item[=].code.display = "Kuupäev"
* item[=].item[=].item[=].item[=].text = "Kuupäev"
* item[=].item[=].item[=].item[=].type = #date
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[=].item[+].linkId = "immunization.hpv.immunization_his_data.source_reference"
* item[=].item[=].item[=].item[=].prefix = "24.12.2.2"
* item[=].item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].item[=].code.code = #source_reference
* item[=].item[=].item[=].item[=].code.display = "Allika viide"
* item[=].item[=].item[=].item[=].text = "Allika viide"
* item[=].item[=].item[=].item[=].type = #reference
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[+].linkId = "immunization.hpv.self_report_date"
* item[=].item[=].item[=].prefix = "24.12.3"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #date
* item[=].item[=].item[=].code.display = "Kuupäev"
* item[=].item[=].item[=].text = "Kuupäev"
* item[=].item[=].item[=].type = #date
* item[=].item[=].item[=].enableWhen.question = "immunization.hpv.vaccinated"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].repeats = true

* item[=].item[+].linkId = "immunization.covid"
* item[=].item[=].prefix = "24.13"
* item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].code.code = #covid
* item[=].item[=].code.display = "COVID"
* item[=].item[=].text = "COVID"
* item[=].item[=].type = #group
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "immunization.covid.vaccinated"
* item[=].item[=].item[=].prefix = "24.13.1"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #rotavirus_vaccinated
* item[=].item[=].item[=].code.display = "Kas Teile on tehtud COVID vaktsiin?"
* item[=].item[=].item[=].text = "Kas Teile on tehtud COVID vaktsiin?"
* item[=].item[=].item[=].type = #boolean
* item[=].item[=].item[=].required = true

* item[=].item[=].item[+].linkId = "immunization.covid.immunization_his_data"
* item[=].item[=].item[=].prefix = "24.13.2"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #immunization
* item[=].item[=].item[=].code.display = "Immuniseerimine"
* item[=].item[=].item[=].text = "Immuniseerimine"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].enableWhen.question = "immunization.covid.vaccinated"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].repeats = true
* item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[=].item[0].linkId = "immunization.covid.immunization_his_data.date"
* item[=].item[=].item[=].item[=].prefix = "24.13.2.1"
* item[=].item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].item[=].code.code = #date
* item[=].item[=].item[=].item[=].code.display = "Kuupäev"
* item[=].item[=].item[=].item[=].text = "Kuupäev"
* item[=].item[=].item[=].item[=].type = #date
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[=].item[+].linkId = "immunization.covid.immunization_his_data.source_reference"
* item[=].item[=].item[=].item[=].prefix = "24.13.2.2"
* item[=].item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].item[=].code.code = #source_reference
* item[=].item[=].item[=].item[=].code.display = "Allika viide"
* item[=].item[=].item[=].item[=].text = "Allika viide"
* item[=].item[=].item[=].item[=].type = #reference
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[+].linkId = "immunization.covid.self_report_date"
* item[=].item[=].item[=].prefix = "24.13.3"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #date
* item[=].item[=].item[=].code.display = "Kuupäev"
* item[=].item[=].item[=].text = "Kuupäev"
* item[=].item[=].item[=].type = #date
* item[=].item[=].item[=].enableWhen.question = "immunization.covid.vaccinated"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].repeats = true

* item[=].item[+].linkId = "immunization.flu"
* item[=].item[=].prefix = "24.14"
* item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].code.code = #flu
* item[=].item[=].code.display = "Gripiviirus"
* item[=].item[=].text = "Gripiviirus"
* item[=].item[=].type = #group
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "immunization.flu.vaccinated"
* item[=].item[=].item[=].prefix = "24.14.1"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #flu_vaccinated
* item[=].item[=].item[=].code.display = "Kas Teile on tehtud gripivaktsiin?"
* item[=].item[=].item[=].text = "Kas Teile on tehtud gripivaktsiin?"
* item[=].item[=].item[=].type = #boolean
* item[=].item[=].item[=].required = true

* item[=].item[=].item[+].linkId = "immunization.flu.immunization_his_data"
* item[=].item[=].item[=].prefix = "24.14.2"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #immunization
* item[=].item[=].item[=].code.display = "Immuniseerimine"
* item[=].item[=].item[=].text = "Immuniseerimine"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].enableWhen.question = "immunization.flu.vaccinated"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].repeats = true
* item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[=].item[0].linkId = "immunization.flu.immunization_his_data.date"
* item[=].item[=].item[=].item[=].prefix = "24.14.2.1"
* item[=].item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].item[=].code.code = #date
* item[=].item[=].item[=].item[=].code.display = "Kuupäev"
* item[=].item[=].item[=].item[=].text = "Kuupäev"
* item[=].item[=].item[=].item[=].type = #date
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[=].item[+].linkId = "immunization.flu.immunization_his_data.source_reference"
* item[=].item[=].item[=].item[=].prefix = "24.14.2.2"
* item[=].item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].item[=].code.code = #source_reference
* item[=].item[=].item[=].item[=].code.display = "Allika viide"
* item[=].item[=].item[=].item[=].text = "Allika viide"
* item[=].item[=].item[=].item[=].type = #reference
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[+].linkId = "immunization.flu.self_report_date"
* item[=].item[=].item[=].prefix = "24.14.3"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #date
* item[=].item[=].item[=].code.display = "Kuupäev"
* item[=].item[=].item[=].text = "Kuupäev"
* item[=].item[=].item[=].type = #date
* item[=].item[=].item[=].enableWhen.question = "immunization.flu.vaccinated"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].repeats = true

* item[=].item[+].linkId = "immunization.pneumococcus"
* item[=].item[=].prefix = "24.15"
* item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].code.code = #pneumococcus
* item[=].item[=].code.display = "Pneumokokk"
* item[=].item[=].text = "Pneumokokk"
* item[=].item[=].type = #group
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "immunization.pneumococcus.vaccinated"
* item[=].item[=].item[=].prefix = "24.15.1"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #pneumococcus_vaccinated
* item[=].item[=].item[=].code.display = "Kas Teile on tehtud pneumokoki vaktsiin?"
* item[=].item[=].item[=].text = "Kas Teile on tehtud pneumokoki vaktsiin?"
* item[=].item[=].item[=].type = #boolean
* item[=].item[=].item[=].required = true

* item[=].item[=].item[+].linkId = "immunization.pneumococcus.immunization_his_data"
* item[=].item[=].item[=].prefix = "24.15.2"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #immunization
* item[=].item[=].item[=].code.display = "Immuniseerimine"
* item[=].item[=].item[=].text = "Immuniseerimine"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].enableWhen.question = "immunization.pneumococcus.vaccinated"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].repeats = true
* item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[=].item[0].linkId = "immunization.pneumococcus.immunization_his_data.date"
* item[=].item[=].item[=].item[=].prefix = "24.15.2.1"
* item[=].item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].item[=].code.code = #date
* item[=].item[=].item[=].item[=].code.display = "Kuupäev"
* item[=].item[=].item[=].item[=].text = "Kuupäev"
* item[=].item[=].item[=].item[=].type = #date
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[=].item[+].linkId = "immunization.pneumococcus.immunization_his_data.source_reference"
* item[=].item[=].item[=].item[=].prefix = "24.15.2.2"
* item[=].item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].item[=].code.code = #source_reference
* item[=].item[=].item[=].item[=].code.display = "Allika viide"
* item[=].item[=].item[=].item[=].text = "Allika viide"
* item[=].item[=].item[=].item[=].type = #reference
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[+].linkId = "immunization.pneumococcus.self_report_date"
* item[=].item[=].item[=].prefix = "24.15.3"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #date
* item[=].item[=].item[=].code.display = "Kuupäev"
* item[=].item[=].item[=].text = "Kuupäev"
* item[=].item[=].item[=].type = #date
* item[=].item[=].item[=].enableWhen.question = "immunization.pneumococcus.vaccinated"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].repeats = true

* item[=].item[+].linkId = "immunization.a_hepatitis"
* item[=].item[=].prefix = "24.16"
* item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].code.code = #a_hepatitis
* item[=].item[=].code.display = "A-hepatiit"
* item[=].item[=].text = "A-hepatiit"
* item[=].item[=].type = #group
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "immunization.a_hepatitis.vaccinated"
* item[=].item[=].item[=].prefix = "24.16.1"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #a_hepatitis_vaccinated
* item[=].item[=].item[=].code.display = "Kas Teile on tehtud A-hepatiidi vaktsiin?"
* item[=].item[=].item[=].text = "Kas Teile on tehtud A-hepatiidi vaktsiin?"
* item[=].item[=].item[=].type = #boolean
* item[=].item[=].item[=].required = true

* item[=].item[=].item[+].linkId = "immunization.a_hepatitis.immunization_his_data"
* item[=].item[=].item[=].prefix = "24.16.2"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #immunization
* item[=].item[=].item[=].code.display = "Immuniseerimine"
* item[=].item[=].item[=].text = "Immuniseerimine"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].enableWhen.question = "immunization.a_hepatitis.vaccinated"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].repeats = true
* item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[=].item[0].linkId = "immunization.a_hepatitis.immunization_his_data.date"
* item[=].item[=].item[=].item[=].prefix = "24.16.2.1"
* item[=].item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].item[=].code.code = #date
* item[=].item[=].item[=].item[=].code.display = "Kuupäev"
* item[=].item[=].item[=].item[=].text = "Kuupäev"
* item[=].item[=].item[=].item[=].type = #date
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[=].item[+].linkId = "immunization.a_hepatitis.immunization_his_data.source_reference"
* item[=].item[=].item[=].item[=].prefix = "24.16.2.2"
* item[=].item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].item[=].code.code = #source_reference
* item[=].item[=].item[=].item[=].code.display = "Allika viide"
* item[=].item[=].item[=].item[=].text = "Allika viide"
* item[=].item[=].item[=].item[=].type = #reference
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[+].linkId = "immunization.a_hepatitis.self_report_date"
* item[=].item[=].item[=].prefix = "24.16.3"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #date
* item[=].item[=].item[=].code.display = "Kuupäev"
* item[=].item[=].item[=].text = "Kuupäev"
* item[=].item[=].item[=].type = #date
* item[=].item[=].item[=].enableWhen.question = "immunization.a_hepatitis.vaccinated"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].repeats = true

* item[=].item[+].linkId = "immunization.chicken_box"
* item[=].item[=].prefix = "24.17"
* item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].code.code = #chicken_box
* item[=].item[=].code.display = "Tuulerõuged"
* item[=].item[=].text = "Tuulerõuged"
* item[=].item[=].type = #group
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "immunization.chicken_box.vaccinated"
* item[=].item[=].item[=].prefix = "24.17.1"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #chicken_box_vaccinated
* item[=].item[=].item[=].code.display = "Kas Teile on tehtud tuulerõugete vaktsiin?"
* item[=].item[=].item[=].text = "Kas Teile on tehtud tuulerõugete vaktsiin?"
* item[=].item[=].item[=].type = #boolean
* item[=].item[=].item[=].required = true

* item[=].item[=].item[+].linkId = "immunization.chicken_box.immunization_his_data"
* item[=].item[=].item[=].prefix = "24.17.2"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #immunization
* item[=].item[=].item[=].code.display = "Immuniseerimine"
* item[=].item[=].item[=].text = "Immuniseerimine"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].enableWhen.question = "immunization.chicken_box.vaccinated"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].repeats = true
* item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[=].item[0].linkId = "immunization.chicken_box.immunization_his_data.date"
* item[=].item[=].item[=].item[=].prefix = "24.17.2.1"
* item[=].item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].item[=].code.code = #date
* item[=].item[=].item[=].item[=].code.display = "Kuupäev"
* item[=].item[=].item[=].item[=].text = "Kuupäev"
* item[=].item[=].item[=].item[=].type = #date
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[=].item[+].linkId = "immunization.chicken_box.immunization_his_data.source_reference"
* item[=].item[=].item[=].item[=].prefix = "24.17.2.2"
* item[=].item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].item[=].code.code = #source_reference
* item[=].item[=].item[=].item[=].code.display = "Allika viide"
* item[=].item[=].item[=].item[=].text = "Allika viide"
* item[=].item[=].item[=].item[=].type = #reference
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[+].linkId = "immunization.chicken_box.self_report_date"
* item[=].item[=].item[=].prefix = "24.17.3"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #date
* item[=].item[=].item[=].code.display = "Kuupäev"
* item[=].item[=].item[=].text = "Kuupäev"
* item[=].item[=].item[=].type = #date
* item[=].item[=].item[=].enableWhen.question = "immunization.chicken_box.vaccinated"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].repeats = true

* item[=].item[+].linkId = "immunization.shingles"
* item[=].item[=].prefix = "24.18"
* item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].code.code = #shingles
* item[=].item[=].code.display = "Vöötohatis"
* item[=].item[=].text = "Vöötohatis"
* item[=].item[=].type = #group
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "immunization.shingles.vaccinated"
* item[=].item[=].item[=].prefix = "24.18.1"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #shingles_vaccinated
* item[=].item[=].item[=].code.display = "Kas Teile on tehtud vöötohatise vaktsiin?"
* item[=].item[=].item[=].text = "Kas Teile on tehtud vöötohatise vaktsiin?"
* item[=].item[=].item[=].type = #boolean
* item[=].item[=].item[=].required = true

* item[=].item[=].item[+].linkId = "immunization.shingles.immunization_his_data"
* item[=].item[=].item[=].prefix = "24.18.2"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #immunization
* item[=].item[=].item[=].code.display = "Immuniseerimine"
* item[=].item[=].item[=].text = "Immuniseerimine"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].enableWhen.question = "immunization.shingles.vaccinated"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].repeats = true
* item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[=].item[0].linkId = "immunization.shingles.immunization_his_data.date"
* item[=].item[=].item[=].item[=].prefix = "24.18.2.1"
* item[=].item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].item[=].code.code = #date
* item[=].item[=].item[=].item[=].code.display = "Kuupäev"
* item[=].item[=].item[=].item[=].text = "Kuupäev"
* item[=].item[=].item[=].item[=].type = #date
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[=].item[+].linkId = "immunization.shingles.immunization_his_data.source_reference"
* item[=].item[=].item[=].item[=].prefix = "24.18.2.2"
* item[=].item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].item[=].code.code = #source_reference
* item[=].item[=].item[=].item[=].code.display = "Allika viide"
* item[=].item[=].item[=].item[=].text = "Allika viide"
* item[=].item[=].item[=].item[=].type = #reference
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[+].linkId = "immunization.shingles.self_report_date"
* item[=].item[=].item[=].prefix = "24.18.3"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #date
* item[=].item[=].item[=].code.display = "Kuupäev"
* item[=].item[=].item[=].text = "Kuupäev"
* item[=].item[=].item[=].type = #date
* item[=].item[=].item[=].enableWhen.question = "immunization.shingles.vaccinated"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].repeats = true

* item[=].item[+].linkId = "immunization.meningococcus"
* item[=].item[=].prefix = "24.19"
* item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].code.code = #meningococcus
* item[=].item[=].code.display = "Meningokokk"
* item[=].item[=].text = "Meningokokk"
* item[=].item[=].type = #group
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "immunization.meningococcus.vaccinated"
* item[=].item[=].item[=].prefix = "24.19.1"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #meningococcus_vaccinated
* item[=].item[=].item[=].code.display = "Kas Teile on tehtud meningokokk-nakkuse vaktsiin?"
* item[=].item[=].item[=].text = "Kas Teile on tehtud meningokokk-nakkuse vaktsiin?"
* item[=].item[=].item[=].type = #boolean
* item[=].item[=].item[=].required = true

* item[=].item[=].item[+].linkId = "immunization.meningococcus.immunization_his_data"
* item[=].item[=].item[=].prefix = "24.19.2"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #immunization
* item[=].item[=].item[=].code.display = "Immuniseerimine"
* item[=].item[=].item[=].text = "Immuniseerimine"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].enableWhen.question = "immunization.meningococcus.vaccinated"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].repeats = true
* item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[=].item[0].linkId = "immunization.meningococcus.immunization_his_data.date"
* item[=].item[=].item[=].item[=].prefix = "24.19.2.1"
* item[=].item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].item[=].code.code = #date
* item[=].item[=].item[=].item[=].code.display = "Kuupäev"
* item[=].item[=].item[=].item[=].text = "Kuupäev"
* item[=].item[=].item[=].item[=].type = #date
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[=].item[+].linkId = "immunization.meningococcus.immunization_his_data.source_reference"
* item[=].item[=].item[=].item[=].prefix = "24.19.2.2"
* item[=].item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].item[=].code.code = #source_reference
* item[=].item[=].item[=].item[=].code.display = "Allika viide"
* item[=].item[=].item[=].item[=].text = "Allika viide"
* item[=].item[=].item[=].item[=].type = #reference
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[+].linkId = "immunization.meningococcus.self_report_date"
* item[=].item[=].item[=].prefix = "24.19.3"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #date
* item[=].item[=].item[=].code.display = "Kuupäev"
* item[=].item[=].item[=].text = "Kuupäev"
* item[=].item[=].item[=].type = #date
* item[=].item[=].item[=].enableWhen.question = "immunization.meningococcus.vaccinated"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].repeats = true

* item[=].item[+].linkId = "immunization.yellow_fever"
* item[=].item[=].prefix = "24.20"
* item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].code.code = #yellow_fever
* item[=].item[=].code.display = "Kollapalavik"
* item[=].item[=].text = "Kollapalavik"
* item[=].item[=].type = #group
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "immunization.yellow_fever.vaccinated"
* item[=].item[=].item[=].prefix = "24.20.1"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #yellow_fever_vaccinated
* item[=].item[=].item[=].code.display = "Kas Teile on tehtud kollapalaviku vaktsiin?"
* item[=].item[=].item[=].text = "Kas Teile on tehtud kollapalaviku vaktsiin?"
* item[=].item[=].item[=].type = #boolean
* item[=].item[=].item[=].required = true

* item[=].item[=].item[+].linkId = "immunization.yellow_fever.immunization_his_data"
* item[=].item[=].item[=].prefix = "24.20.2"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #immunization
* item[=].item[=].item[=].code.display = "Immuniseerimine"
* item[=].item[=].item[=].text = "Immuniseerimine"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].enableWhen.question = "immunization.yellow_fever.vaccinated"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].repeats = true
* item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[=].item[0].linkId = "immunization.yellow_fever.immunization_his_data.date"
* item[=].item[=].item[=].item[=].prefix = "24.20.2.1"
* item[=].item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].item[=].code.code = #date
* item[=].item[=].item[=].item[=].code.display = "Kuupäev"
* item[=].item[=].item[=].item[=].text = "Kuupäev"
* item[=].item[=].item[=].item[=].type = #date
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[=].item[+].linkId = "immunization.yellow_fever.immunization_his_data.source_reference"
* item[=].item[=].item[=].item[=].prefix = "24.20.2.2"
* item[=].item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].item[=].code.code = #source_reference
* item[=].item[=].item[=].item[=].code.display = "Allika viide"
* item[=].item[=].item[=].item[=].text = "Allika viide"
* item[=].item[=].item[=].item[=].type = #reference
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[+].linkId = "immunization.yellow_fever.self_report_date"
* item[=].item[=].item[=].prefix = "24.20.3"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #date
* item[=].item[=].item[=].code.display = "Kuupäev"
* item[=].item[=].item[=].text = "Kuupäev"
* item[=].item[=].item[=].type = #date
* item[=].item[=].item[=].enableWhen.question = "immunization.yellow_fever.vaccinated"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].repeats = true

* item[=].item[+].linkId = "immunization.typhoid_fever"
* item[=].item[=].prefix = "24.21"
* item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].code.code = #typhoid_fever
* item[=].item[=].code.display = "Kõhutüüfus"
* item[=].item[=].text = "Kõhutüüfus"
* item[=].item[=].type = #group
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "immunization.typhoid_fever.vaccinated"
* item[=].item[=].item[=].prefix = "24.21.1"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #typhoid_fever_vaccinated
* item[=].item[=].item[=].code.display = "Kas Teile on tehtud kõhutüüfuse vaktsiin?"
* item[=].item[=].item[=].text = "Kas Teile on tehtud kõhutüüfuse vaktsiin?"
* item[=].item[=].item[=].type = #boolean
* item[=].item[=].item[=].required = true

* item[=].item[=].item[+].linkId = "immunization.typhoid_fever.immunization_his_data"
* item[=].item[=].item[=].prefix = "24.21.2"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #immunization
* item[=].item[=].item[=].code.display = "Immuniseerimine"
* item[=].item[=].item[=].text = "Immuniseerimine"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].enableWhen.question = "immunization.typhoid_fever.vaccinated"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].repeats = true
* item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[=].item[0].linkId = "immunization.typhoid_fever.immunization_his_data.date"
* item[=].item[=].item[=].item[=].prefix = "24.21.2.1"
* item[=].item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].item[=].code.code = #date
* item[=].item[=].item[=].item[=].code.display = "Kuupäev"
* item[=].item[=].item[=].item[=].text = "Kuupäev"
* item[=].item[=].item[=].item[=].type = #date
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[=].item[+].linkId = "immunization.typhoid_fever.immunization_his_data.source_reference"
* item[=].item[=].item[=].item[=].prefix = "24.21.2.2"
* item[=].item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].item[=].code.code = #source_reference
* item[=].item[=].item[=].item[=].code.display = "Allika viide"
* item[=].item[=].item[=].item[=].text = "Allika viide"
* item[=].item[=].item[=].item[=].type = #reference
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[+].linkId = "immunization.typhoid_fever.self_report_date"
* item[=].item[=].item[=].prefix = "24.21.3"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #date
* item[=].item[=].item[=].code.display = "Kuupäev"
* item[=].item[=].item[=].text = "Kuupäev"
* item[=].item[=].item[=].type = #date
* item[=].item[=].item[=].enableWhen.question = "immunization.typhoid_fever.vaccinated"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].repeats = true

* item[=].item[+].linkId = "immunization.tick_encephalitis"
* item[=].item[=].prefix = "24.22"
* item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].code.code = #tick_encephalitis
* item[=].item[=].code.display = "Puukentsefaliit"
* item[=].item[=].text = "Puukentsefaliit"
* item[=].item[=].type = #group
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "immunization.tick_encephalitis.vaccinated"
* item[=].item[=].item[=].prefix = "24.22.1"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #tick_encephalitis_vaccinated
* item[=].item[=].item[=].code.display = "Kas Teile on tehtud puukentsefaliidi vaktsiin?"
* item[=].item[=].item[=].text = "Kas Teile on tehtud puukentsefaliidi vaktsiin?"
* item[=].item[=].item[=].type = #boolean
* item[=].item[=].item[=].required = true

* item[=].item[=].item[+].linkId = "immunization.tick_encephalitis.immunization_his_data"
* item[=].item[=].item[=].prefix = "24.22.2"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #immunization
* item[=].item[=].item[=].code.display = "Immuniseerimine"
* item[=].item[=].item[=].text = "Immuniseerimine"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].enableWhen.question = "immunization.tick_encephalitis.vaccinated"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].repeats = true
* item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[=].item[0].linkId = "immunization.tick_encephalitis.immunization_his_data.date"
* item[=].item[=].item[=].item[=].prefix = "24.22.2.1"
* item[=].item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].item[=].code.code = #date
* item[=].item[=].item[=].item[=].code.display = "Kuupäev"
* item[=].item[=].item[=].item[=].text = "Kuupäev"
* item[=].item[=].item[=].item[=].type = #date
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[=].item[+].linkId = "immunization.tick_encephalitis.immunization_his_data.source_reference"
* item[=].item[=].item[=].item[=].prefix = "24.22.2.2"
* item[=].item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].item[=].code.code = #source_reference
* item[=].item[=].item[=].item[=].code.display = "Allika viide"
* item[=].item[=].item[=].item[=].text = "Allika viide"
* item[=].item[=].item[=].item[=].type = #reference
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[+].linkId = "immunization.tick_encephalitis.self_report_date"
* item[=].item[=].item[=].prefix = "24.22.3"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #date
* item[=].item[=].item[=].code.display = "Kuupäev"
* item[=].item[=].item[=].text = "Kuupäev"
* item[=].item[=].item[=].type = #date
* item[=].item[=].item[=].enableWhen.question = "immunization.tick_encephalitis.vaccinated"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].repeats = true

* item[=].item[+].linkId = "immunization.other_vaccines"
* item[=].item[=].prefix = "24.23"
* item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].code.code = #other_vaccines
* item[=].item[=].code.display = "Muud vaktsiinid"
* item[=].item[=].text = "Muud vaktsiinid"
* item[=].item[=].type = #group
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "immunization.other_vaccines.vaccinated"
* item[=].item[=].item[=].prefix = "24.23.1"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #other_vaccines_vaccinated
* item[=].item[=].item[=].code.display = "Kas Teile on tehtud muid vaktsiine?"
* item[=].item[=].item[=].text = "Kas Teile on tehtud muid vaktsiine?"
* item[=].item[=].item[=].type = #boolean
* item[=].item[=].item[=].required = true

* item[=].item[=].item[=].item[0].linkId = "immunization.other_vaccines.vaccinated.specify"
* item[=].item[=].item[=].item[=].prefix = "24.23.1.1"
* item[=].item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].item[=].code.code = #specify
* item[=].item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].item[=].text = "Täpsustus"
* item[=].item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].item[=].enableWhen.question = "immunization.other_vaccines.vaccinated"
* item[=].item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].item[=].required = false

* item[=].item[=].item[+].linkId = "immunization.other_vaccines.immunization_his_data"
* item[=].item[=].item[=].prefix = "24.23.2"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #immunization
* item[=].item[=].item[=].code.display = "Immuniseerimine"
* item[=].item[=].item[=].text = "Immuniseerimine"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].enableWhen.question = "immunization.other_vaccines.vaccinated"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].repeats = true
* item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[=].item[0].linkId = "immunization.other_vaccines.immunization_his_data.preventable_disease"
* item[=].item[=].item[=].item[=].prefix = "24.23.2.1"
* item[=].item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].item[=].code.code = #vaccine_preventable_disease
* item[=].item[=].item[=].item[=].code.display = "vaktsiinvälditav haigus või haigustekitaja"
* item[=].item[=].item[=].item[=].text = "vaktsiinvälditav haigus või haigustekitaja"
* item[=].item[=].item[=].item[=].type = #coding
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[=].item[+].linkId = "immunization.other_vaccines.immunization_his_data.date"
* item[=].item[=].item[=].item[=].prefix = "24.23.2.2"
* item[=].item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].item[=].code.code = #date
* item[=].item[=].item[=].item[=].code.display = "Kuupäev"
* item[=].item[=].item[=].item[=].text = "Kuupäev"
* item[=].item[=].item[=].item[=].type = #date
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[=].item[+].linkId = "immunization.other_vaccines.immunization_his_data.source_reference"
* item[=].item[=].item[=].item[=].prefix = "24.23.2.3"
* item[=].item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].item[=].code.code = #source_reference
* item[=].item[=].item[=].item[=].code.display = "Allika viide"
* item[=].item[=].item[=].item[=].text = "Allika viide"
* item[=].item[=].item[=].item[=].type = #reference
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].readOnly = true

* item[+].linkId = "occupational_risk_factors"
* item[=].prefix = "25"
* item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].code.code = #occupational_risk_factors
* item[=].code.display = "Töökohal esinevad ohutegurid"
* item[=].text = "Töökohal esinevad ohutegurid"
* item[=].type = #group
* item[=].enableWhen.question = "declaration.category"
* item[=].enableWhen.operator = #=
* item[=].enableWhen.answerCoding = #6
* item[=].required = true

* item[=].item[0].linkId = "occupational_risk_factors.risk_factor"
* item[=].item[=].prefix = "25.1"
* item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].code.code = #risk_factor
* item[=].item[=].code.display = "Ohutegur"
* item[=].item[=].type = #coding
* item[=].item[=].answerValueSet = "https://fhir.ee/ValueSet/td-ohutegurid"
* item[=].item[=].required = false
* item[=].item[=].repeats = true
* item[=].item[=].text = "Ohutegur"

* item[=].item[=].item[0].linkId = "occupational_risk_factors.risk_factor.specify"
* item[=].item[=].item[=].prefix = "25.1.1"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #specify
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsustus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].required = false

* item[+].linkId = "gender"
* item[=].prefix = "26"
* item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].code.code = #gender
* item[=].code.display = "Sugu"
* item[=].text = "Sugu"
* item[=].type = #group
// * item[=].disabledDisplay = #hidden
* item[=].required = true

* item[=].item[0].linkId = "gender.authors_gender"
* item[=].item[=].prefix = "26.1"
* item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].code.code = #gender
* item[=].item[=].code.display = "Sugu"
* item[=].item[=].text = "Sugu"
* item[=].item[=].type = #coding
* item[=].item[=].answerValueSet = "https://fhir.ee/ValueSet/sugu"
* item[=].item[=].required = true
// * item[=].item[=].disabledDisplay = #hidden
