Instance: ee-health-declaration-category
InstanceOf: SearchParameter
Title: "Health declaration category"
Description: "Search by category in the Health Declaration"
Usage: #definition
* name = "EEHealthDeclarationCategory"
* status = #active
* experimental = false
* code = #category
* base = #QuestionnaireResponse
* type = #token
* expression = "QuestionnaireResponse.extension.where(url='https://fhir.ee/hdecl/StructureDefinition/ee-health-declaration-category').extension.where(url='category').value"
* processingMode = #normal
