Extension: EEHealthDeclarationCategory
Id: ee-health-declaration-category
Title: "Tervise deklaratsiooni kasutusala"
Description: "Tervise deklaratsiooni kasutusala ja selle kehtivuse lõppkuupäev"
* ^context.type = #element
* ^context.expression = "QuestionnaireResponse"
* extension contains category 1..1 and expiration 0..1

* extension[category].value[x] only Coding
* extension[category].value[x] 1..1
* extension[category].value[x] from https://fhir.ee/CodeSystem/tervisetoendi-otsuse-kasutusala //FIXME: not sure
* extension[expiration].value[x] only date
