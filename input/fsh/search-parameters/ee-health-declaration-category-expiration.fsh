Instance: ee-health-declaration-category-effective-date
InstanceOf: SearchParameter
Title: "Health declaration category effective date"
Description: "Search by category effective date in the Health Declaration"
Usage: #definition
* name = "EEHealthDeclarationCategoryEffectiveDate"
* status = #active
* experimental = false
* code = #category-effective-date
* base = #QuestionnaireResponse
* type = #date
* expression = "QuestionnaireResponse.extension('https://fhir.ee/hdecl/StructureDefinition/ee-health-declaration-category').extension('effectivePeriod').value.as(Period)"
* processingMode = #normal
