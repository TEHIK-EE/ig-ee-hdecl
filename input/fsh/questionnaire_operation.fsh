Alias: $m49.htm = http://unstats.un.org/unsd/methods/m49/m49.htm

Instance: cancel
InstanceOf: OperationDefinition
Usage: #definition
* url = "https://fhir.ee/hdecl/OperationDefinition/cancel"
* version = "5.0.0"
* name = "EEHealthDeclarationCancel"
* title = "Tervisedeklaratsiooni tühistamine"
* status = #active
* kind = #operation
* experimental = false
* publisher = "HL7 Estonia"
* description = "'In progress' või 'completed' staatuses tervisedeklaratsiooni tühistamise sõnum."
* jurisdiction = $m49.htm#Estonia "Estonia"
* affectsState = true
* code = #cancel
* resource = #QuestionnaireResponse
* system = false
* type = false
* instance = true


Instance: complete
InstanceOf: OperationDefinition
Usage: #definition
* url = "https://fhir.ee/hdecl/OperationDefinition/complete"
* version = "5.0.0"
* name = "EEHealthDeclarationComplete"
* title = "Tervisedeklaratsiooni kinnitamine"
* status = #active
* kind = #operation
* experimental = false
* publisher = "HL7 Estonia"
* description = "'In progress' tervisedeklaratsiooni kinnitamine ('completed' seisundisse)."
* jurisdiction = $m49.htm#Estonia "Estonia"
* affectsState = true
* code = #complete
* resource = #QuestionnaireResponse
* system = false
* type = false
* instance = true


Instance: get-consent
InstanceOf: OperationDefinition
Usage: #definition
* url = "https://fhir.ee/hdecl/OperationDefinition/get-consent"
* version = "5.0.0"
* name = "EEHealthDeclarationGetConsent"
* title = "Tervisedeklaratsiooni ressursi ligipääsude päring"
* status = #active
* kind = #operation
* experimental = false
* publisher = "HL7 Estonia"
* description = "Tervisedeklaratsiooni ressursi ligipääsude päring."
* jurisdiction = $m49.htm#Estonia "Estonia"
* affectsState = false
* code = #get-consent
* resource = #QuestionnaireResponse
* system = false
* type = false
* instance = true
* parameter[0].name = #return
* parameter[=].use = #out
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "Patsiendi nõusoleku andmed 'Parameters' kujul. Sisaldab parameetreid 'patient', 'doctor', 'representative' ning nendele vastavaid väärtuseid."
* parameter[=].type = #Parameters
* parameter[=].targetProfile = "http://hl7.org/fhir/StructureDefinition/Parameters"


Instance: set-consent
InstanceOf: OperationDefinition
Usage: #definition
* url = "https://fhir.ee/hdecl/OperationDefinition/set-consent"
* version = "5.0.0"
* name = "EEHealthDeclarationSetConsent"
* title = "Tervisedeklaratsiooni ressursi ligipääsude muutmine"
* status = #active
* kind = #operation
* experimental = false
* publisher = "HL7 Estonia"
* description = "Tervisedeklaratsiooni sulgemine või avamine arstile või esindajale."
* jurisdiction = $m49.htm#Estonia "Estonia"
* affectsState = true
* code = #set-consent
* resource = #QuestionnaireResponse
* system = false
* type = false
* instance = true
* parameter[0].name = #representative
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].documentation = "Ligipääs esindatavale. Ühe operatsiooniga saab muuta ligipääsu kas arstile (doctor) või esindajale (representative). Lubatud väärtused on closed | open."
* parameter[=].type = #string
* parameter[+].name = #doctor
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].documentation = "Ligipääs arstile. Ühe operatsiooniga saab muuta ligipääsu kas arstile (doctor) või esindajale (representative). Lubatud väärtused on closed | open."
* parameter[=].type = #string
