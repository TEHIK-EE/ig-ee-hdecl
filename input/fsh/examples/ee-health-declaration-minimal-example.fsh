Instance: ee-health-declaration-minimal-example
InstanceOf: EEHealthDeclarationMinimal
Description: "Näidisdeklaratsioon minimaalsete andmetega (metaandmed). Eesmärk kuvada TTO registraatoritele deklaratsiooni metaandmed, ilma küsimustiku vastusteta"
Usage: #example

* extension[0].url = "https://fhir.ee/hdecl/StructureDefinition/EEHealthDeclarationExpiration"

* extension[0].extension[0].url = "category"
* extension[0].extension[0].valueCodeableConcept.coding[0].system = "https://fhir.ee/CodeSystem/terviestendi-otsuse-kasutusala"
* extension[0].extension[0].valueCodeableConcept.coding[0].code = #military

* extension[0].extension[1].url = "expiration"
* extension[0].extension[1].valueDate = "2025-06-16"
* version = "1.0"
* identifier.system = "http://example.org/fhir/identifiers"
* identifier.value = "1234567"
* questionnaire = "https://fhir.ee/qre/Questionnaire-health-declaration|1.0.0"
* status = #completed
* subject = Reference(Questionnaire-patient)
* authored =  2024-01-01
* author = Reference(Questionnaire-patient)
