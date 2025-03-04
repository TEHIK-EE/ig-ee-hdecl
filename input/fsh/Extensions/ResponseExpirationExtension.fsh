Extension: ResponseExpiration
Id: response-expiration
Title: "Response Expiration"
Description: "Indicates the date on which this QuestionnaireResponse is considered expired."
* extension contains category 0..1 and expiration 1..1

* extension[category].valueCodeableConcept 0..1
* extension[expiration].valueDate 1..1