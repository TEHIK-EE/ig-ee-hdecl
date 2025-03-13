Extension: EEHealthDeclarationCategory
Id: ee-health-declaration-category
Title: "Tervise deklaratsiooni kasutusala"
Description: "Tervise deklaratsiooni kasutusala ja selle kehtivuse lõppkuupäev"
* ^context.type = #element
* ^context.expression = "QuestionnaireResponse"
* extension contains category 1..1 and effectivePeriod 1..1

* extension[category].value[x] only Coding
* extension[category].value[x] 1..1
* extension[category].value[x] from https://fhir.ee/CodeSystem/tervisetoendi-otsuse-kasutusala //FIXME: not sure
* extension[effectivePeriod].value[x] only Period
* extension[effectivePeriod].value[x] 1..1
* extension[effectivePeriod].valuePeriod.start 1..1
* extension[effectivePeriod].valuePeriod.end 1..1
