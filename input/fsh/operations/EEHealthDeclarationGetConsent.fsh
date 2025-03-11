Instance: EEHealthDeclarationGetConsent
InstanceOf: OperationDefinition
Usage: #definition
Description: "Tervisedeklaratsiooni ressursi ligipääsude päring"
* version = "5.0.0"
* name = "EEHealthDeclarationGetConsent"
* title = "Tervisedeklaratsiooni ressursi ligipääsude päring"
* status = #active
* kind = #operation
* experimental = false
* affectsState = false
* code = #get-consent
* resource = #QuestionnaireResponse
* system = false
* type = false
* instance = true
* parameter[+].name = #representative
* parameter[=].use = #out
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].documentation = "Konfidentsiaalsus eestkostjale"
* parameter[=].type = #string
* parameter[+].name = #doctor
* parameter[=].use = #out
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].documentation = "Konfidentsiaalsus arstile"
* parameter[=].type = #string
