Extension: EEHealthDeclarationExpiration
Title: "Health declaration expiration"
Description: "Indicates the date on which this health declaration is considered expired."
* ^context.type = #element
* ^context.expression = "QuestionnaireResponse"
* extension contains category 0..1 and expiration 1..1

* extension[category].valueCodeableConcept 0..1
* extension[expiration].valueDate 1..1
