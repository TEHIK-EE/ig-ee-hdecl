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
* item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].code.code = #lifestyle_alcohol
* item[=].code.display = "Kas te tarbite alkoholi?"
* item[=].item[=].type = #boolean
* item[=].item[=].required = true
* item[=].item[=].text = "Kas te tarbite alkoholi?"

* item[=].item[=].item[0].linkId = "lifestyle.alcohol.amount"
* item[=].item[=].item[=].prefix = "1.1.1"
* item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].code.code = #lifestyle_alcohol_amount
* item[=].code.display = "Mitu ühikut nädalas? (1 ühik = 40 ml 40% kanget alkoholi või 120 ml 12% veini või 250 ml 5,2% õlut)"
* item[=].item[=].item[=].type = #decimal
* item[=].item[=].item[=].enableWhen.question = "lifestyle.alcohol"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].text = "Mitu ühikut nädalas?"

* item[=].item[+].linkId = "lifestyle.smoking"
* item[=].item[=].prefix = "1.2"
* item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].code.code = #lifestyle_smoking
* item[=].code.display = "Kas te suitsetate?"
* item[=].item[=].text = "Kas te suitsetate?"
* item[=].item[=].type = #boolean
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "lifestyle.smoking.amount"
* item[=].item[=].item[=].prefix = "1.2.1"
* item[=].item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].item[=].code.code = #lifestyle_smoking_amount
* item[=].item[=].code.display = "Mitu sigaretti päevas?"
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
* item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].code.code = #lifestyle_narcotics
* item[=].code.display = "Kas tarvitate narkootilisi/psühhotroopseid aineid?"
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
* item[=].code.system = "https://fhir.ee/ValueSet/td-kysimustik-test"
* item[=].code.code = #lifestyle_drugs
* item[=].code.display = "Kas kasutate ravimeid, mis võivad Teie arvates mõjutada Teie keskendumisvõimet ja koordinatsiooni?"
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

* item[+].linkId = "2"
* item[=].prefix = "2"
* item[=].text = "Töökeskkond"
* item[=].type = #group
* item[=].required = true
* item[=].item[0].linkId = "2.1"
* item[=].item[=].prefix = "2.1"
* item[=].item[=].text = "Kas Teile on tervisekontrolli põhjal varem seatud tööpiiranguid? Kui jah, mille tõttu?"
* item[=].item[=].type = #boolean
* item[=].item[=].required = true
* item[=].item[=].item[0].linkId = "2.1.1"
* item[=].item[=].item[=].prefix = "2.1.1"
* item[=].item[=].item[=].text = "Täpsustus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "2.1"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true
* item[=].item[+].linkId = "2.2"
* item[=].item[=].prefix = "2.2"
* item[=].item[=].text = "Kas Teil esineb või on esinenud tervisehäireid, mida seostate oma tööülesannete täitmise või töökeskkonnaga?"
* item[=].item[=].type = #boolean
* item[=].item[=].required = true
* item[=].item[=].item[0].linkId = "2.2.1"
* item[=].item[=].item[=].prefix = "2.2.1"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "2.2"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true
* item[=].item[+].linkId = "2.3"
* item[=].item[=].prefix = "2.3"
* item[=].item[=].text = "Kas Teil on diagnoositud kutsehaigus?"
* item[=].item[=].type = #boolean
* item[=].item[=].required = true
* item[=].item[+].linkId = "2.4"
* item[=].item[=].prefix = "2.4"
* item[=].item[=].text = "Kas Teil on diagnoositud tööst põhjustatud haigus?"
* item[=].item[=].type = #boolean
* item[=].item[=].required = true
* item[=].item[+].linkId = "2.5"
* item[=].item[=].prefix = "2.5"
* item[=].item[=].text = "Kas tööl kasutatavad isikukaitsevahendid põhjustavad Teile terviseprobleeme?"
* item[=].item[=].type = #boolean
* item[=].item[=].required = true
* item[=].item[=].item[0].linkId = "2.5.1"
* item[=].item[=].item[=].prefix = "2.5.1"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "2.5"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true
* item[+].linkId = "3"
* item[=].prefix = "3"
* item[=].text = "Allergiad"
* item[=].type = #group
* item[=].required = true
* item[=].item[0].linkId = "3.0"
* item[=].item[=].prefix = "3.0"
* item[=].item[=].text = "Varasemad diagnoosid"
* item[=].item[=].type = #group
* item[=].item[=].required = false
* item[=].item[=].item[0].linkId = "3.0.1"
* item[=].item[=].item[=].prefix = "3.0.1"
* item[=].item[=].item[=].text = "Varasemad diagnoos"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].repeats = true
* item[=].item[=].item[=].item[0].linkId = "3.0.1.1"
* item[=].item[=].item[=].item[=].prefix = "3.0.1.1"
* item[=].item[=].item[=].item[=].text = "Diagnoos"
* item[=].item[=].item[=].item[=].type = #coding
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].readOnly = true
* item[=].item[=].item[=].item[+].linkId = "3.0.1.2"
* item[=].item[=].item[=].item[=].prefix = "3.0.1.2"
* item[=].item[=].item[=].item[=].text = "Sõnaline diagnoos"
* item[=].item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].item[=].required = false
* item[=].item[=].item[=].item[=].readOnly = true
* item[=].item[+].linkId = "3.1"
* item[=].item[=].prefix = "3.1"
* item[=].item[=].text = "Kaebused hetkel puuduvad"
* item[=].item[=].type = #boolean
* item[=].item[=].required = true
* item[=].item[+].linkId = "3.2"
* item[=].item[=].prefix = "3.2"
* item[=].item[=].text = "Allergia ravimitele (palun täpsustage)"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "3.1"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true
* item[=].item[=].item[0].linkId = "3.2.1"
* item[=].item[=].item[=].prefix = "3.2.1"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "3.2"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true
* item[=].item[+].linkId = "3.3"
* item[=].item[=].prefix = "3.3"
* item[=].item[=].text = "Allergia toiduainetele (palun täpsustage)"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "3.1"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true
* item[=].item[=].item[0].linkId = "3.3.1"
* item[=].item[=].item[=].prefix = "3.3.1"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "3.3"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true
* item[=].item[+].linkId = "3.4"
* item[=].item[=].prefix = "3.4"
* item[=].item[=].text = "Allergia õietolmule (palun täpsustage)"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "3.1"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true
* item[=].item[=].item[0].linkId = "3.4.1"
* item[=].item[=].item[=].prefix = "3.4.1"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "3.4"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true
* item[=].item[+].linkId = "3.5"
* item[=].item[=].prefix = "3.5"
* item[=].item[=].text = "Allergia koduloomadele või -lindudele (palun täpsustage)"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "3.1"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true
* item[=].item[=].item[0].linkId = "3.5.1"
* item[=].item[=].item[=].prefix = "3.5.1"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "3.5"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true
* item[=].item[+].linkId = "3.6"
* item[=].item[=].prefix = "3.6"
* item[=].item[=].text = "Allergia muudele ainetele (palun täpsustage)"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "3.1"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true
* item[=].item[=].item[0].linkId = "3.6.1"
* item[=].item[=].item[=].prefix = "3.6.1"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "3.6"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true
* item[+].linkId = "4"
* item[=].prefix = "4"
* item[=].text = "Psüühika"
* item[=].type = #group
* item[=].required = true
* item[=].item[0].linkId = "4.0"
* item[=].item[=].prefix = "4.0"
* item[=].item[=].text = "Varasemad diagnoosid"
* item[=].item[=].type = #group
* item[=].item[=].required = false
* item[=].item[=].item[0].linkId = "4.0.1"
* item[=].item[=].item[=].prefix = "4.0.1"
* item[=].item[=].item[=].text = "Varasem diagnoos"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].repeats = true
* item[=].item[=].item[=].item[0].linkId = "4.0.1.1"
* item[=].item[=].item[=].item[=].prefix = "4.0.1.1"
* item[=].item[=].item[=].item[=].text = "Diagnoos"
* item[=].item[=].item[=].item[=].type = #coding
* item[=].item[=].item[=].item[=].answerValueSet = "https://fhir.ee/ValueSet/td-psyyhika"
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].readOnly = true
* item[=].item[=].item[=].item[+].linkId = "4.0.1.2"
* item[=].item[=].item[=].item[=].prefix = "4.0.1.2"
* item[=].item[=].item[=].item[=].text = "Sõnaline diagnoos"
* item[=].item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].item[=].required = false
* item[=].item[=].item[=].item[=].readOnly = true
* item[=].item[+].linkId = "4.1"
* item[=].item[=].prefix = "4.1"
* item[=].item[=].text = "Kaebused hetkel puuduvad"
* item[=].item[=].type = #boolean
* item[=].item[=].required = true
* item[=].item[+].linkId = "4.2"
* item[=].item[=].prefix = "4.2"
* item[=].item[=].text = "Depressioon"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "4.1"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true
* item[=].item[=].item[0].linkId = "4.2.1"
* item[=].item[=].item[=].prefix = "4.2.1"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "4.2"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true
* item[=].item[+].linkId = "4.3"
* item[=].item[=].prefix = "4.3"
* item[=].item[=].text = "Skisofreenia"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "4.1"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true
* item[=].item[=].item[0].linkId = "4.3.1"
* item[=].item[=].item[=].prefix = "4.3.1"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "4.3"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true
* item[=].item[+].linkId = "4.4"
* item[=].item[=].prefix = "4.4"
* item[=].item[=].text = "Kartus töötada üksinda"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "4.1"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true
* item[=].item[=].item[0].linkId = "4.4.1"
* item[=].item[=].item[=].prefix = "4.4.1"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "4.4"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true
* item[=].item[+].linkId = "4.5"
* item[=].item[=].prefix = "4.5"
* item[=].item[=].text = "Hirm suletud ruumi ees"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "4.1"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true
* item[=].item[=].item[0].linkId = "4.5.1"
* item[=].item[=].item[=].prefix = "4.5.1"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "4.5"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true
* item[=].item[+].linkId = "4.6"
* item[=].item[=].prefix = "4.6"
* item[=].item[=].text = "Kõrgusekartus"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "4.1"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true
* item[=].item[=].item[0].linkId = "4.6.1"
* item[=].item[=].item[=].prefix = "4.6.1"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "4.6"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true
* item[=].item[+].linkId = "4.7"
* item[=].item[=].prefix = "4.7"
* item[=].item[=].text = "Muu haigus/seisund/sümptom (palun täpsustage)"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "4.1"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true
* item[=].item[=].item[0].linkId = "4.7.1"
* item[=].item[=].item[=].prefix = "4.7.1"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "4.7"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true
* item[=].item[+].linkId = "4.8"
* item[=].item[=].prefix = "4.8"
* item[=].item[=].text = "Sagedane stress"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "4.1"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true
* item[=].item[=].item[0].linkId = "4.8.1"
* item[=].item[=].item[=].prefix = "4.8.1"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "4.8"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true
* item[+].linkId = "5"
* item[=].prefix = "5"
* item[=].text = "Närvisüsteem"
* item[=].type = #group
* item[=].required = true
* item[=].item[0].linkId = "5.0"
* item[=].item[=].prefix = "5.0"
* item[=].item[=].text = "Varasemad diagnoosid"
* item[=].item[=].type = #group
* item[=].item[=].required = false
* item[=].item[=].item[0].linkId = "5.0.1"
* item[=].item[=].item[=].prefix = "5.0.1"
* item[=].item[=].item[=].text = "Varasem diagnoos"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].repeats = true
* item[=].item[=].item[=].item[0].linkId = "5.0.1.1"
* item[=].item[=].item[=].item[=].prefix = "5.0.1.1"
* item[=].item[=].item[=].item[=].text = "Diagnoos"
* item[=].item[=].item[=].item[=].type = #coding
* item[=].item[=].item[=].item[=].answerValueSet = "https://fhir.ee/ValueSet/td-narvisusteem"
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].readOnly = true
* item[=].item[=].item[=].item[+].linkId = "5.0.1.2"
* item[=].item[=].item[=].item[=].prefix = "5.0.1.2"
* item[=].item[=].item[=].item[=].text = "Sõnaline diagnoos"
* item[=].item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].item[=].required = false
* item[=].item[=].item[=].item[=].readOnly = true
* item[=].item[+].linkId = "5.1"
* item[=].item[=].prefix = "5.1"
* item[=].item[=].text = "Kaebused hetkel puuduvad"
* item[=].item[=].type = #boolean
* item[=].item[=].required = true
* item[=].item[+].linkId = "5.2"
* item[=].item[=].prefix = "5.2"
* item[=].item[=].text = "Teadvuse kaotuse hood"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "5.1"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true
* item[=].item[=].item[0].linkId = "5.2.1"
* item[=].item[=].item[=].prefix = "5.2.1"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "5.2"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true
* item[=].item[+].linkId = "5.3"
* item[=].item[=].prefix = "5.3"
* item[=].item[=].text = "Krambihood (epilepsia ehk langetõbi)"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "5.1"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true
* item[=].item[=].item[0].linkId = "5.3.1"
* item[=].item[=].item[=].prefix = "5.3.1"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "5.3"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true
* item[=].item[+].linkId = "5.4"
* item[=].item[=].prefix = "5.4"
* item[=].item[=].text = "Tasakaaluhäired (sh Meniere'i tõbi)"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "5.1"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true
* item[=].item[=].item[0].linkId = "5.4.1"
* item[=].item[=].item[=].prefix = "5.4.1"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "5.4"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true
* item[=].item[+].linkId = "5.5"
* item[=].item[=].prefix = "5.5"
* item[=].item[=].text = "Ajuinfarkt või ajuinsult"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "5.1"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true
* item[=].item[=].item[0].linkId = "5.5.1"
* item[=].item[=].item[=].prefix = "5.5.1"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "5.5"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true
* item[=].item[+].linkId = "5.6"
* item[=].item[=].prefix = "5.6"
* item[=].item[=].text = "Merehaigus"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "5.1"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true
* item[=].item[=].item[0].linkId = "5.6.1"
* item[=].item[=].item[=].prefix = "5.6.1"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "5.6"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true
* item[=].item[+].linkId = "5.7"
* item[=].item[=].prefix = "5.7"
* item[=].item[=].text = "Koordinatsioonihäired (sh. kätega seonduvad)"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "5.1"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true
* item[=].item[=].item[0].linkId = "5.7.1"
* item[=].item[=].item[=].prefix = "5.7.1"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "5.7"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true
* item[=].item[+].linkId = "5.8"
* item[=].item[=].prefix = "5.8"
* item[=].item[=].text = "Muu haigus/seisund/sümptom (palun täpsustage)"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "5.1"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true
* item[=].item[=].item[0].linkId = "5.8.1"
* item[=].item[=].item[=].prefix = "5.8.1"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "5.8"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true
* item[+].linkId = "6"
* item[=].prefix = "6"
* item[=].text = "Silmad ja nägemine"
* item[=].type = #group
* item[=].required = true
* item[=].item[0].linkId = "6.0"
* item[=].item[=].prefix = "6.0"
* item[=].item[=].text = "Varasemad diagnoosid"
* item[=].item[=].type = #group
* item[=].item[=].required = false
* item[=].item[=].item[0].linkId = "6.0.1"
* item[=].item[=].item[=].prefix = "6.0.1"
* item[=].item[=].item[=].text = "Varasem diagnoos"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].repeats = true
* item[=].item[=].item[=].item[0].linkId = "6.0.1.1"
* item[=].item[=].item[=].item[=].prefix = "6.0.1.1"
* item[=].item[=].item[=].item[=].text = "Diagnoos"
* item[=].item[=].item[=].item[=].type = #coding
* item[=].item[=].item[=].item[=].answerValueSet = "https://fhir.ee/ValueSet/td-silmad-ja-nagemine"
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].readOnly = true
* item[=].item[=].item[=].item[+].linkId = "6.0.1.2"
* item[=].item[=].item[=].item[=].prefix = "6.0.1.2"
* item[=].item[=].item[=].item[=].text = "Sõnaline diagnoos"
* item[=].item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].item[=].required = false
* item[=].item[=].item[=].item[=].readOnly = true
* item[=].item[+].linkId = "6.1"
* item[=].item[=].prefix = "6.1"
* item[=].item[=].text = "Kaebused hetkel puuduvad"
* item[=].item[=].type = #boolean
* item[=].item[=].required = true
* item[=].item[+].linkId = "6.2"
* item[=].item[=].prefix = "6.2"
* item[=].item[=].text = "Lühinägevus"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "6.1"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true
* item[=].item[=].item[0].linkId = "6.2.1"
* item[=].item[=].item[=].prefix = "6.2.1"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "6.2"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true
* item[=].item[+].linkId = "6.3"
* item[=].item[=].prefix = "6.3"
* item[=].item[=].text = "Kas üles-alla või külgedele vaadates esineb vaatevälja piiratust?"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "6.1"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true
* item[=].item[=].item[0].linkId = "6.3.1"
* item[=].item[=].item[=].prefix = "6.3.1"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "6.3"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true
* item[=].item[+].linkId = "6.4"
* item[=].item[=].prefix = "6.4"
* item[=].item[=].text = "Kahelinägemine"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "6.1"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true
* item[=].item[=].item[0].linkId = "6.4.1"
* item[=].item[=].item[=].prefix = "6.4.1"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "6.4"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true
* item[=].item[+].linkId = "6.5"
* item[=].item[=].prefix = "6.5"
* item[=].item[=].text = "Värvusmeele häired"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "6.1"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true
* item[=].item[=].item[0].linkId = "6.5.1"
* item[=].item[=].item[=].prefix = "6.5.1"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "6.5"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true
* item[=].item[+].linkId = "6.6"
* item[=].item[=].prefix = "6.6"
* item[=].item[=].text = "Muu haigus/seisund/sümptom (palun täpsustage)"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "6.1"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true
* item[=].item[=].item[0].linkId = "6.6.1"
* item[=].item[=].item[=].prefix = "6.6.1"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "6.6"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true
* item[+].linkId = "7"
* item[=].prefix = "7"
* item[=].text = "Kõrv, nina, neel"
* item[=].type = #group
* item[=].required = true
* item[=].item[0].linkId = "7.0"
* item[=].item[=].prefix = "7.0"
* item[=].item[=].text = "Varasemad diagnoosid"
* item[=].item[=].type = #group
* item[=].item[=].required = false
* item[=].item[=].item[0].linkId = "7.0.1"
* item[=].item[=].item[=].prefix = "7.0.1"
* item[=].item[=].item[=].text = "Varasem diagnoos"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].repeats = true
* item[=].item[=].item[=].item[0].linkId = "7.0.1.1"
* item[=].item[=].item[=].item[=].prefix = "7.0.1.1"
* item[=].item[=].item[=].item[=].text = "Diagnoos"
* item[=].item[=].item[=].item[=].type = #coding
* item[=].item[=].item[=].item[=].answerValueSet = "https://fhir.ee/ValueSet/td-korv-nina-neel"
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].readOnly = true
* item[=].item[=].item[=].item[+].linkId = "7.0.1.2"
* item[=].item[=].item[=].item[=].prefix = "7.0.1.2"
* item[=].item[=].item[=].item[=].text = "Sõnaline diagnoos"
* item[=].item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].item[=].required = false
* item[=].item[=].item[=].item[=].readOnly = true
* item[=].item[+].linkId = "7.1"
* item[=].item[=].prefix = "7.1"
* item[=].item[=].text = "Kaebused hetkel puuduvad"
* item[=].item[=].type = #boolean
* item[=].item[=].required = true
* item[=].item[+].linkId = "7.2"
* item[=].item[=].prefix = "7.2"
* item[=].item[=].text = "Kuulmislangus"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "7.1"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true
* item[=].item[=].item[0].linkId = "7.2.1"
* item[=].item[=].item[=].prefix = "7.2.1"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "7.2"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true
* item[=].item[+].linkId = "7.3"
* item[=].item[=].prefix = "7.3"
* item[=].item[=].text = "Allergiline nohu"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "7.1"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true
* item[=].item[=].item[0].linkId = "7.3.1"
* item[=].item[=].item[=].prefix = "7.3.1"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "7.3"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true
* item[=].item[+].linkId = "7.4"
* item[=].item[=].prefix = "7.4"
* item[=].item[=].text = "Otsmiku- või põskkoopa krooniline põletik"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "7.1"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true
* item[=].item[=].item[0].linkId = "7.4.1"
* item[=].item[=].item[=].prefix = "7.4.1"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "7.4"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true
* item[=].item[+].linkId = "7.5"
* item[=].item[=].prefix = "7.5"
* item[=].item[=].text = "Ninahingamise takistus"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "7.1"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true
* item[=].item[=].item[0].linkId = "7.5.1"
* item[=].item[=].item[=].prefix = "7.5.1"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "7.5"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true
* item[=].item[+].linkId = "7.6"
* item[=].item[=].prefix = "7.6"
* item[=].item[=].text = "Sagedane (rohkem kui 4x aastas) esinev kurguhaigus"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "7.1"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true
* item[=].item[=].item[0].linkId = "7.6.1"
* item[=].item[=].item[=].prefix = "7.6.1"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "7.6"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true
* item[=].item[+].linkId = "7.7"
* item[=].item[=].prefix = "7.7"
* item[=].item[=].text = "Muu haigus/seisund/sümptom (palun täpsustage)"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "7.1"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true
* item[=].item[=].item[0].linkId = "7.7.1"
* item[=].item[=].item[=].prefix = "7.7.1"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "7.7"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true
* item[+].linkId = "8"
* item[=].prefix = "8"
* item[=].text = "Hingamissüsteem"
* item[=].type = #group
* item[=].required = true
* item[=].item[0].linkId = "8.0"
* item[=].item[=].prefix = "8.0"
* item[=].item[=].text = "Varasemad diagnoosid"
* item[=].item[=].type = #group
* item[=].item[=].required = false
* item[=].item[=].item[0].linkId = "8.0.1"
* item[=].item[=].item[=].prefix = "8.0.1"
* item[=].item[=].item[=].text = "Varasem diagnoos"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].repeats = true
* item[=].item[=].item[=].item[0].linkId = "8.0.1.1"
* item[=].item[=].item[=].item[=].prefix = "8.0.1.1"
* item[=].item[=].item[=].item[=].text = "Diagnoos"
* item[=].item[=].item[=].item[=].type = #coding
* item[=].item[=].item[=].item[=].answerValueSet = "https://fhir.ee/ValueSet/td-hingamissusteem"
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].readOnly = true
* item[=].item[=].item[=].item[+].linkId = "8.0.1.2"
* item[=].item[=].item[=].item[=].prefix = "8.0.1.2"
* item[=].item[=].item[=].item[=].text = "Sõnaline diagnoos"
* item[=].item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].item[=].required = false
* item[=].item[=].item[=].item[=].readOnly = true
* item[=].item[+].linkId = "8.1"
* item[=].item[=].prefix = "8.1"
* item[=].item[=].text = "Kaebused hetkel puuduvad"
* item[=].item[=].type = #boolean
* item[=].item[=].required = true
* item[=].item[+].linkId = "8.2"
* item[=].item[=].prefix = "8.2"
* item[=].item[=].text = "Astma"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "8.1"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true
* item[=].item[=].item[0].linkId = "8.2.1"
* item[=].item[=].item[=].prefix = "8.2.1"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "8.2"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true
* item[=].item[+].linkId = "8.3"
* item[=].item[=].prefix = "8.3"
* item[=].item[=].text = "Krooniline obstruktiivne kopsuhaigus ehk KOK"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "8.1"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true
* item[=].item[=].item[0].linkId = "8.3.1"
* item[=].item[=].item[=].prefix = "8.3.1"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "8.3"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true
* item[=].item[+].linkId = "8.4"
* item[=].item[=].prefix = "8.4"
* item[=].item[=].text = "Muu haigus/seisund/sümptom (palun täpsustage)"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "8.1"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true
* item[=].item[=].item[0].linkId = "8.4.1"
* item[=].item[=].item[=].prefix = "8.4.1"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "8.4"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true
* item[=].item[+].linkId = "8.5"
* item[=].item[=].prefix = "8.5"
* item[=].item[=].text = "Uneapnoe"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "8.1"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true
* item[=].item[=].item[0].linkId = "8.5.1"
* item[=].item[=].item[=].prefix = "8.5.1"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "8.5"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true
* item[+].linkId = "9"
* item[=].prefix = "9"
* item[=].text = "Ainevahetuse häired (sh kilpnäärme haigused)"
* item[=].type = #group
* item[=].required = true
* item[=].item[0].linkId = "9.0"
* item[=].item[=].prefix = "9.0"
* item[=].item[=].text = "Varasemad diagnoosid"
* item[=].item[=].type = #group
* item[=].item[=].required = false
* item[=].item[=].item[0].linkId = "9.0.1"
* item[=].item[=].item[=].prefix = "9.0.1"
* item[=].item[=].item[=].text = "Varasem diagnoos"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].repeats = true
* item[=].item[=].item[=].item[0].linkId = "9.0.1.1"
* item[=].item[=].item[=].item[=].prefix = "9.0.1.1"
* item[=].item[=].item[=].item[=].text = "Diagnoos"
* item[=].item[=].item[=].item[=].type = #coding
* item[=].item[=].item[=].item[=].answerValueSet = "https://fhir.ee/ValueSet/td-ainevahetuse-haired"
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].readOnly = true
* item[=].item[=].item[=].item[+].linkId = "9.0.1.2"
* item[=].item[=].item[=].item[=].prefix = "9.0.1.2"
* item[=].item[=].item[=].item[=].text = "Sõnaline diagnoos"
* item[=].item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].item[=].required = false
* item[=].item[=].item[=].item[=].readOnly = true
* item[=].item[+].linkId = "9.1"
* item[=].item[=].prefix = "9.1"
* item[=].item[=].text = "Kaebused hetkel puuduvad"
* item[=].item[=].type = #boolean
* item[=].item[=].required = true
* item[=].item[+].linkId = "9.2"
* item[=].item[=].prefix = "9.2"
* item[=].item[=].text = "Suhkruhaigus"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "9.1"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true
* item[=].item[=].item[0].linkId = "9.2.1"
* item[=].item[=].item[=].prefix = "9.2.1"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "9.2"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true
* item[=].item[+].linkId = "9.3"
* item[=].item[=].prefix = "9.3"
* item[=].item[=].text = "Muu haigus/seisund/sümptom (palun täpsustage)"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "9.1"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true
* item[=].item[=].item[0].linkId = "9.3.1"
* item[=].item[=].item[=].prefix = "9.3.1"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "9.3"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true
* item[+].linkId = "10"
* item[=].prefix = "10"
* item[=].text = "Süda ja veresoonkond"
* item[=].type = #group
* item[=].required = true
* item[=].item[0].linkId = "10.0"
* item[=].item[=].prefix = "10.0"
* item[=].item[=].text = "Varasemad diagnoosid"
* item[=].item[=].type = #group
* item[=].item[=].required = false
* item[=].item[=].item[0].linkId = "10.0.1"
* item[=].item[=].item[=].prefix = "10.0.1"
* item[=].item[=].item[=].text = "Varasem diagnoos" 
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].repeats = true
* item[=].item[=].item[=].item[0].linkId = "10.0.1.1"
* item[=].item[=].item[=].item[=].prefix = "10.0.1.1"
* item[=].item[=].item[=].item[=].text = "Diagnoos"
* item[=].item[=].item[=].item[=].type = #coding
* item[=].item[=].item[=].item[=].answerValueSet = "https://fhir.ee/ValueSet/td-suda-ja-veresoonkond"
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].readOnly = true
* item[=].item[=].item[=].item[+].linkId = "10.0.1.2"
* item[=].item[=].item[=].item[=].prefix = "10.0.1.2"
* item[=].item[=].item[=].item[=].text = "Sõnaline diagnoos"
* item[=].item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].item[=].required = false
* item[=].item[=].item[=].item[=].readOnly = true
* item[=].item[+].linkId = "10.1" 
* item[=].item[=].prefix = "10.1"
* item[=].item[=].text = "Kaebused hetkel puuduvad"
* item[=].item[=].type = #boolean
* item[=].item[=].required = true
* item[=].item[+].linkId = "10.2"
* item[=].item[=].prefix = "10.2"
* item[=].item[=].text = "Koormusega seonduv valu rinnus"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "10.1"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true
* item[=].item[=].item[0].linkId = "10.2.1"
* item[=].item[=].item[=].prefix = "10.2.1"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "10.2"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true
* item[=].item[+].linkId = "10.3"
* item[=].item[=].prefix = "10.3"
* item[=].item[=].text = "Kõrge vererõhk"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "10.1"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true
* item[=].item[=].item[0].linkId = "10.3.1"
* item[=].item[=].item[=].prefix = "10.3.1"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "10.3"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true
* item[=].item[+].linkId = "10.4"
* item[=].item[=].prefix = "10.4"
* item[=].item[=].text = "Läbipõetud südameinfarkt"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "10.1"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true
* item[=].item[=].item[0].linkId = "10.4.1"
* item[=].item[=].item[=].prefix = "10.4.1"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "10.4"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true
* item[=].item[+].linkId = "10.5"
* item[=].item[=].prefix = "10.5"
* item[=].item[=].text = "Südame rütmihäired"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "10.1"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true
* item[=].item[=].item[0].linkId = "10.5.1"
* item[=].item[=].item[=].prefix = "10.5.1"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "10.5"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true
* item[=].item[+].linkId = "10.6"
* item[=].item[=].prefix = "10.6"
* item[=].item[=].text = "On tehtud südamesondeerimine või stentimine"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "10.1"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true
* item[=].item[=].item[0].linkId = "10.6.1"
* item[=].item[=].item[=].prefix = "10.6.1"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "10.6"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true
* item[=].item[+].linkId = "10.7"
* item[=].item[=].prefix = "10.7"
* item[=].item[=].text = "On paigaldatud südamerütmur"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "10.1"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true
* item[=].item[=].item[0].linkId = "10.7.1"
* item[=].item[=].item[=].prefix = "10.7.1"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "10.7"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true
* item[=].item[+].linkId = "10.8"
* item[=].item[=].prefix = "10.8"
* item[=].item[=].text = "On tehtud südameoperatsioon"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "10.1"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true
* item[=].item[=].item[0].linkId = "10.8.1"
* item[=].item[=].item[=].prefix = "10.8.1"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "10.8"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true
* item[=].item[+].linkId = "10.9"
* item[=].item[=].prefix = "10.9"
* item[=].item[=].text = "Muu haigus/seisund/sümptom (palun täpsustage)"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "10.1"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true
* item[=].item[=].item[0].linkId = "10.9.1"
* item[=].item[=].item[=].prefix = "10.9.1"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "10.9"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true
* item[+].linkId = "11"
* item[=].prefix = "11"
* item[=].text = "Luud, liigesed ja lihased"
* item[=].type = #group
* item[=].required = true
* item[=].item[0].linkId = "11.0"
* item[=].item[=].prefix = "11.0"
* item[=].item[=].text = "Varasemad diagnoosid"
* item[=].item[=].type = #group
* item[=].item[=].required = false
* item[=].item[=].item[0].linkId = "11.0.1"
* item[=].item[=].item[=].prefix = "11.0.1"
* item[=].item[=].item[=].text = "Varasem diagnoos" 
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].repeats = true
* item[=].item[=].item[=].item[0].linkId = "11.0.1.1"
* item[=].item[=].item[=].item[=].prefix = "11.0.1.1"
* item[=].item[=].item[=].item[=].text = "Diagnoos"
* item[=].item[=].item[=].item[=].type = #coding
* item[=].item[=].item[=].item[=].answerValueSet = "https://fhir.ee/ValueSet/td-luud-liigesed-ja-lihased"
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].readOnly = true
* item[=].item[=].item[=].item[+].linkId = "11.0.1.2"
* item[=].item[=].item[=].item[=].prefix = "11.0.1.2"
* item[=].item[=].item[=].item[=].text = "Sõnaline diagnoos"
* item[=].item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].item[=].required = false
* item[=].item[=].item[=].item[=].readOnly = true
* item[=].item[+].linkId = "11.1" 
* item[=].item[=].prefix = "11.1"
* item[=].item[=].text = "Kaebused hetkel puuduvad"
* item[=].item[=].type = #boolean
* item[=].item[=].required = true
* item[=].item[+].linkId = "11.2"
* item[=].item[=].prefix = "11.2"
* item[=].item[=].text = "Liigesejäikus"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "11.1"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true
* item[=].item[=].item[0].linkId = "11.2.1"
* item[=].item[=].item[=].prefix = "11.2.1"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "11.2"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true
* item[=].item[+].linkId = "11.3"
* item[=].item[=].prefix = "11.3"
* item[=].item[=].text = "Jäseme osaline või täielik halvatus (palun täpsustage)"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "11.1"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true
* item[=].item[=].item[0].linkId = "11.3.1"
* item[=].item[=].item[=].prefix = "11.3.1"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "11.3"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true
* item[=].item[+].linkId = "11.4"
* item[=].item[=].prefix = "11.4"
* item[=].item[=].text = "Jäseme või selle osa puudumine (palun täpsustage)"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "11.1"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true
* item[=].item[=].item[0].linkId = "11.4.1"
* item[=].item[=].item[=].prefix = "11.4.1"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "11.4"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true
* item[=].item[+].linkId = "11.5"
* item[=].item[=].prefix = "11.5"
* item[=].item[=].text = "Käte värisemine (treemor)"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "11.1"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true
* item[=].item[=].item[0].linkId = "11.5.1"
* item[=].item[=].item[=].prefix = "11.5.1"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "11.5"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true
* item[=].item[+].linkId = "11.6"
* item[=].item[=].prefix = "11.6"
* item[=].item[=].text = "Liigesevalu"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "11.1"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true
* item[=].item[=].item[0].linkId = "11.6.1"
* item[=].item[=].item[=].prefix = "11.6.1"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "11.6"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true
* item[=].item[+].linkId = "11.7"
* item[=].item[=].prefix = "11.7"
* item[=].item[=].text = "Kaelavalu"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "11.1"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true
* item[=].item[=].item[0].linkId = "11.7.1"
* item[=].item[=].item[=].prefix = "11.7.1"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "11.7"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true
* item[=].item[+].linkId = "11.8"
* item[=].item[=].prefix = "11.8"
* item[=].item[=].text = "Õlavöötmevalu"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "11.1"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true
* item[=].item[=].item[0].linkId = "11.8.1"
* item[=].item[=].item[=].prefix = "11.8.1"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "11.8"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true
* item[=].item[+].linkId = "11.9"
* item[=].item[=].prefix = "11.9"
* item[=].item[=].text = "Alaseljavalu"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "11.1"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true
* item[=].item[=].item[0].linkId = "11.9.1"
* item[=].item[=].item[=].prefix = "11.9.1"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "11.9"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true
* item[=].item[+].linkId = "11.10"
* item[=].item[=].prefix = "11.10"
* item[=].item[=].text = "Muu haigus/seisund/sümptom (palun täpsustage)"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "11.1"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true
* item[=].item[=].item[0].linkId = "11.10.1"
* item[=].item[=].item[=].prefix = "11.10.1"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "11.10"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true
* item[+].linkId = "12"
* item[=].prefix = "12"
* item[=].text = "Nakkushaigused"
* item[=].type = #group
* item[=].required = true
* item[=].item[0].linkId = "12.0"
* item[=].item[=].prefix = "12.0"
* item[=].item[=].text = "Varasemad diagnoosid"
* item[=].item[=].type = #group
* item[=].item[=].required = false
* item[=].item[=].item[0].linkId = "12.0.1"
* item[=].item[=].item[=].prefix = "12.0.1"
* item[=].item[=].item[=].text = "Varasem diagnoos" 
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].repeats = true
* item[=].item[=].item[=].item[0].linkId = "12.0.1.1"
* item[=].item[=].item[=].item[=].prefix = "12.0.1.1"
* item[=].item[=].item[=].item[=].text = "Diagnoos"
* item[=].item[=].item[=].item[=].type = #coding
* item[=].item[=].item[=].item[=].answerValueSet = "https://fhir.ee/ValueSet/td-nakkushaigused"
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].readOnly = true
* item[=].item[=].item[=].item[+].linkId = "12.0.1.2"
* item[=].item[=].item[=].item[=].prefix = "12.0.1.2"
* item[=].item[=].item[=].item[=].text = "Sõnaline diagnoos"
* item[=].item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].item[=].required = false
* item[=].item[=].item[=].item[=].readOnly = true
* item[=].item[+].linkId = "12.1" 
* item[=].item[=].prefix = "12.1"
* item[=].item[=].text = "Teadaolevalt ei ole põdenud"
* item[=].item[=].type = #boolean
* item[=].item[=].required = true
* item[=].item[+].linkId = "12.2"
* item[=].item[=].prefix = "12.2"
* item[=].item[=].text = "Tuberkuloos"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "12.1"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true
* item[=].item[=].item[0].linkId = "12.2.1"
* item[=].item[=].item[=].prefix = "12.2.1"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "12.2"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true
* item[=].item[+].linkId = "12.3"
* item[=].item[=].prefix = "12.3"
* item[=].item[=].text = "Viirushepatiidid (A-hepatiit, B-hepatiit, C-hepatiit)"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "12.1"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true
* item[=].item[=].item[0].linkId = "12.3.1"
* item[=].item[=].item[=].prefix = "12.3.1"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "12.3"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true
* item[=].item[+].linkId = "12.4"
* item[=].item[=].prefix = "12.4"
* item[=].item[=].text = "HIV kandja"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "12.1"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true
* item[=].item[=].item[0].linkId = "12.4.1"
* item[=].item[=].item[=].prefix = "12.4.1"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "12.4"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true
* item[=].item[+].linkId = "12.5"
* item[=].item[=].prefix = "12.5"
* item[=].item[=].text = "AIDS"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "12.1"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true
* item[=].item[=].item[0].linkId = "12.5.1"
* item[=].item[=].item[=].prefix = "12.5.1"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "12.5"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true
* item[=].item[+].linkId = "12.6"
* item[=].item[=].prefix = "12.6"
* item[=].item[=].text = "Soolenakkused (salmonelloos, kampülobakterioos, shigelloos, jersinioos ja rotaviirusenteriit, E. coli soolenakkus, Koolera, kõhutüüfus, paratüüfused, Noroviiruse tekkene äge enteropaatia, giardiaas (lambliaas), krüptosporidioos, amöbiaas, listerioos, helmintiaasid ehk nugiusshaigused, muud toidu- ja joogiveevahenduslikud nakkused)"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "12.1"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true
* item[=].item[=].item[0].linkId = "12.6.1"
* item[=].item[=].item[=].prefix = "12.6.1"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "12.6"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true
* item[=].item[+].linkId = "12.7"
* item[=].item[=].prefix = "12.7"
* item[=].item[=].text = "Hingamisteede nakkused (difteeria, läkaköha, leetrid, punetised, mumps)"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "12.1"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true
* item[=].item[=].item[0].linkId = "12.7.1"
* item[=].item[=].item[=].prefix = "12.7.1"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "12.7"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true
* item[=].item[+].linkId = "12.8"
* item[=].item[=].prefix = "12.8"
* item[=].item[=].text = "Nahainfektsioonid (MRSA kandlus, käte nahamädanikud, seenhaigused)"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "12.1"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true
* item[=].item[=].item[0].linkId = "12.8.1"
* item[=].item[=].item[=].prefix = "12.8.1"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "12.8"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true
* item[=].item[+].linkId = "12.9"
* item[=].item[=].prefix = "12.9"
* item[=].item[=].text = "Muu haigus (palun täpsustage, millised ja millal)"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "12.1"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true
* item[=].item[=].item[0].linkId = "12.9.1"
* item[=].item[=].item[=].prefix = "12.9.1"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "12.9"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true
* item[+].linkId = "13"
* item[=].prefix = "13"
* item[=].text = "Muud kroonilised haigused, seisundid või sümptomid, mida eespool ei kirjeldatud"
* item[=].type = #group
* item[=].required = true
* item[=].item[0].linkId = "13.1" 
* item[=].item[=].prefix = "13.1"
* item[=].item[=].text = "Puuduvad"
* item[=].item[=].type = #boolean
* item[=].item[=].required = true
* item[=].item[+].linkId = "13.2"
* item[=].item[=].prefix = "13.2"
* item[=].item[=].text = "Tuberkuloos"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "13.1"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true
* item[=].item[=].item[0].linkId = "13.2.1"
* item[=].item[=].item[=].prefix = "13.2.1"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "13.2"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true
* item[+].linkId = "14"
* item[=].prefix = "14"
* item[=].text = "Senine ravi"
* item[=].type = #group
* item[=].required = true
* item[=].item[0].linkId = "14.1" 
* item[=].item[=].prefix = "14.1"
* item[=].item[=].text = "Kas olete välismaal saanud  haiglaravi või käinud arsti vastuvõtul? Palun täpsustage millal, kus, ja millega seoses"
* item[=].item[=].type = #boolean
* item[=].item[=].required = true
* item[=].item[=].item[0].linkId = "14.1.1"
* item[=].item[=].item[=].prefix = "14.1.1"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "14.1"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true
* item[=].item[0].linkId = "14.2" 
* item[=].item[=].prefix = "14.2"
* item[=].item[=].text = "Kas tarvitate regulaarselt mingeid ravimeid (sh rasestumisvastaseid vahendeid)? Palun loetlege, milliseid"
* item[=].item[=].type = #boolean
* item[=].item[=].required = true
* item[=].item[=].item[0].linkId = "14.2.1"
* item[=].item[=].item[=].prefix = "14.2.1"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "14.2"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true
* item[=].item[0].linkId = "14.3" 
* item[=].item[=].prefix = "14.3"
* item[=].item[=].text = "Kas tarvitate regulaarselt mingeid ravimeid? Palun loetlege, milliseid"
* item[=].item[=].type = #boolean
* item[=].item[=].required = true
* item[=].item[=].item[0].linkId = "14.3.1"
* item[=].item[=].item[=].prefix = "14.3.1"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "14.3"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true
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