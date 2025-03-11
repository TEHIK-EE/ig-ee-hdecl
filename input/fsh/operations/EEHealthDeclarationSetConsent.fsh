Instance: EEHealthDeclarationSetConsent
InstanceOf: OperationDefinition
Usage: #definition
Description: "Tervisedeklaratsiooni ressursi ligipääsude muutmine. Ühe operatsiooniga saab muuta ligipääsu kas arstile (doctor) ja/või esindajale (representative). Lubatud väärtused on 'closed' või 'open'."
* version = "5.0.0"
* name = "EEHealthDeclarationSetConsent"
* title = "Tervisedeklaratsiooni ressursi ligipääsude muutmine"
* status = #active
* kind = #operation
* experimental = false
* affectsState = true
* code = #set-consent
* resource = #QuestionnaireResponse
* system = false
* type = false
* instance = true
* parameter[+].name = #representative
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].documentation = "Konfidentsiaalsus eestkostjale"
* parameter[=].type = #string
* parameter[+].name = #doctor
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].documentation = "Konfidentsiaalsus arstile"
* parameter[=].type = #string
