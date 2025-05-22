Extension: EEHealthDeclarationCategory
Id: ee-health-declaration-category
Title: "Tervise deklaratsiooni kasutusala"
Description: "Tervise deklaratsiooni kasutusala ja selle kehtivuse periood"
* ^context.type = #element
* ^context.expression = "QuestionnaireResponse"
* extension contains category 1..1 and effectivePeriod 0..1 MS SU

* extension[category] ^short = "Kasutusala" 
* extension[category].value[x] only Coding
* extension[category].value[x] 1..1
* extension[category].value[x] from $HDC_VS
* extension[effectivePeriod] ^short = "Kehtivusperiood"
* extension[effectivePeriod].value[x] only Period
* extension[effectivePeriod].value[x] 1..1
* extension[effectivePeriod].valuePeriod.start 1..1
* extension[effectivePeriod].valuePeriod.end 1..1
