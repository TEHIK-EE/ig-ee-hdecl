Profile: EEHealthDeclarationQuestionnaire
Parent: Questionnaire
Id: EEHealthDeclarationQuestionnaire
Description: "Tervisedeklaratsiooni küsimustiku profiil"
* ^version = "1.0.0"
* ^status = #draft
* ^date = "2024-01-01"
* url 1..1
* versionAlgorithm[x] 0..0
* derivedFrom 0..0
* experimental 0..0
* subjectType 0..0
* publisher 0..0
* contact 0..0
* useContext 0..0
* jurisdiction 0..0
* purpose 0..0
* copyright 0..0
* copyrightLabel 0..0
* approvalDate 1..1
* lastReviewDate 1..1
* effectivePeriod 0..0
* name = "HDECL"
* title = "Tervisedeklaratsiooni küsimustik"
* description = "Tervisedeklaratsiooni küsimustik"
* code 1..1
* item 0..*
  * linkId 1..1
  * definition 0..0
  * code 0..1
  * prefix 1..1
  * text 0..1
  * type 1..1
  * required 1..1

Instance: ExampleEEHealthDeclarationQuestionnaire
InstanceOf: EEHealthDeclarationQuestionnaire
Description: "Näidis tervisedeklaratsiooni andmestik"
Usage: #example
* url = "http://fhir.ee/StructureDefinition/EEHealthDeclaration"
* status = #draft
* approvalDate = "2024-01-01"
* lastReviewDate = "2025-01-01"
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
* item[=].item[=].required = true

* item[=].item[+].linkId = "work_environment.general_diagnosis"
* item[=].item[=].prefix = "2.4"
* item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].code.code = #work_environment_general_diagnosis
* item[=].item[=].code.display = "Kas Teil on diagnoositud tööst põhjustatud haigus?"
* item[=].item[=].text = "Kas Teil on diagnoositud tööst põhjustatud haigus?"
* item[=].item[=].type = #boolean
* item[=].item[=].required = true

* item[=].item[+].linkId = "work_environment.ppe_problems"
* item[=].item[=].prefix = "2.5"
* item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].code.code = #work_environment_ppe_problems
* item[=].item[=].code.display = "Kas tööl kasutatavad isikukaitsevahendid põhjustavad Teile terviseprobleeme?"
* item[=].item[=].text = "Kas tööl kasutatavad isikukaitsevahendid põhjustavad Teile terviseprobleeme?"
* item[=].item[=].type = #boolean
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
* item[=].item[=].enableWhen.question = "nervous_system.no_complaints"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
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
* item[=].item[=].item[=].enableWhen.question = "ear_nose_throat.hearing_impairmen"
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
* item[=].item[=].item[=].enableWhen.question = "10.2"
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

* item[=].item[+].linkId = "cardiovascular_system..other_condition"
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
* item[=].item[=].item[=].enableWhen.question = "cardiovascular_system..other_condition"
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

* item[=].item[=].item[0].linkId = "treatment_done.foreign_treatment"
* item[=].item[=].item[=].prefix = "14.1.1"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #specify
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "14.1"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true

* item[=].item[0].linkId = "treatment_done.regular_medication_women" 
* item[=].item[=].prefix = "14.2"
* item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].code.code = #regular_medication_women
* item[=].item[=].code.display = "Kas tarvitate regulaarselt mingeid ravimeid (sh rasestumisvastaseid vahendeid)? Palun loetlege, milliseid"
* item[=].item[=].text = "Kas tarvitate regulaarselt mingeid ravimeid (sh rasestumisvastaseid vahendeid)? Palun loetlege, milliseid"
* item[=].item[=].type = #boolean
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "treatment_done.regular_medication_women.specify"
* item[=].item[=].item[=].prefix = "14.2.1"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #specify
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "14.2"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true
//enable when sugu on naine

* item[=].item[0].linkId = "treatment_done.regular_medication_men" 
* item[=].item[=].prefix = "14.3"
* item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].code.code = #regular_medication_men
* item[=].item[=].code.display = "Kas tarvitate regulaarselt mingeid ravimeid? Palun loetlege, milliseid"
* item[=].item[=].text = "Kas tarvitate regulaarselt mingeid ravimeid? Palun loetlege, milliseid"
* item[=].item[=].type = #boolean
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "treatment_done.regular_medication_men.specify"
* item[=].item[=].item[=].prefix = "14.3.1"
* item[=].item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].item[=].code.code = #specify
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "14.3"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true
//enable when sugu on mees

* item[=].item[=].item[+].linkId = "14.3.2"
* item[=].item[=].item[=].prefix = "14.3.2"
* item[=].item[=].item[=].text = "Viimase 9 kuu jooksul välja kirjutatud retseptid"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].item[0].linkId = "14.3.2.1"
* item[=].item[=].item[=].item[=].prefix = "14.3.2.1"
* item[=].item[=].item[=].item[=].text = "Ravimite andmed"
* item[=].item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].repeats = true
* item[=].item[=].item[=].item[=].item[0].linkId = "14.3.2.1.1"
* item[=].item[=].item[=].item[=].item[=].prefix = "14.3.2.1.1"
* item[=].item[=].item[=].item[=].item[=].text = "Kuupäev"
* item[=].item[=].item[=].item[=].item[=].type = #date
* item[=].item[=].item[=].item[=].item[=].required = false
* item[=].item[=].item[=].item[=].item[=].readOnly = true
* item[=].item[=].item[=].item[=].item[+].linkId = "14.3.2.1.2"
* item[=].item[=].item[=].item[=].item[=].prefix = "14.3.2.1.2"
* item[=].item[=].item[=].item[=].item[=].text = "ATC"
* item[=].item[=].item[=].item[=].item[=].type = #coding
* item[=].item[=].item[=].item[=].item[=].required = false
* item[=].item[=].item[=].item[=].item[=].readOnly = true
* item[=].item[=].item[=].item[=].item[+].linkId = "14.3.2.1.3"
* item[=].item[=].item[=].item[=].item[=].prefix = "14.3.2.1.3"
* item[=].item[=].item[=].item[=].item[=].text = "Pakend"
* item[=].item[=].item[=].item[=].item[=].type = #coding
* item[=].item[=].item[=].item[=].item[=].required = false
* item[=].item[=].item[=].item[=].item[=].readOnly = true