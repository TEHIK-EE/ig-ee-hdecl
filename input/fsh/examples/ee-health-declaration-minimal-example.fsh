Instance: ee-health-declaration-minimal-example
InstanceOf: EEHealthDeclarationMinimal
Description: "Näidisdeklaratsioon minimaalsete andmetega (metaandmed). Eesmärk kuvada TTO registraatoritele deklaratsiooni metaandmed, ilma küsimustiku vastusteta"
Usage: #example

* extension[categories].extension[category].valueCoding = $HDC#military-service
* extension[categories].extension[effectivePeriod].valuePeriod.start = "2025-01-16"
* extension[categories].extension[effectivePeriod].valuePeriod.end = "2025-06-16"

* extension[categories][1].extension[category].valueCoding = $HDC#driver-group-I
* extension[categories][1].extension[effectivePeriod].valuePeriod.start = "2025-01-16"
* extension[categories][1].extension[effectivePeriod].valuePeriod.end = "2025-03-16"

* identifier.system = "http://example.org/fhir/identifiers"
* identifier.value = "1234567"
* questionnaire = "https://fhir.ee/qre/Questionnaire-health-declaration|1.0.0"
* status = #completed
* subject = Reference(Questionnaire-patient)
* authored =  2024-01-01
* author = Reference(Questionnaire-patient)
