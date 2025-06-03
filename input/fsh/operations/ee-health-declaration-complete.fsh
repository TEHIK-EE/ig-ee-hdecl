Instance: ee-health-declaration-complete
InstanceOf: OperationDefinition
Usage: #definition
* version = "5.0.0"
* name = "EEHealthDeclarationComplete"
* title = "Tervisedeklaratsiooni kinnitamine"
* status = #active
* kind = #operation
* experimental = false
* description = "'In progress' tervisedeklaratsiooni kinnitamine ('completed' seisundisse)."
* affectsState = true
* code = #complete
* resource = #QuestionnaireResponse
* system = false
* type = false
* instance = true
* parameter[+].name = #medical-data-updates
* parameter[=].use = #out
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].documentation = "Teavitus eeltäidetud terviseandmete kohta"
* parameter[=].type = #OperationOutcome
