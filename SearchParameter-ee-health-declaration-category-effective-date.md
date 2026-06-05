# Health declaration category effective date - Tervisedeklaratsiooni juurutusjuhend v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Health declaration category effective date**

## SearchParameter: Health declaration category effective date 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.ee/hdecl/SearchParameter/ee-health-declaration-category-effective-date | *Version*:1.0.0 |
| Active as of 2026-06-05 | *Computable Name*:EEHealthDeclarationCategoryEffectiveDate |

 
Search by category effective date in the Health Declaration 



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "ee-health-declaration-category-effective-date",
  "url" : "https://fhir.ee/hdecl/SearchParameter/ee-health-declaration-category-effective-date",
  "version" : "1.0.0",
  "name" : "EEHealthDeclarationCategoryEffectiveDate",
  "title" : "Health declaration category effective date",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-06-05T10:57:44+00:00",
  "publisher" : "TEHIK",
  "contact" : [{
    "name" : "TEHIK",
    "telecom" : [{
      "system" : "url",
      "value" : "https://tehik.ee"
    },
    {
      "system" : "email",
      "value" : "abi@tehik.ee"
    }]
  }],
  "description" : "Search by category effective date in the Health Declaration",
  "code" : "category-effective-date",
  "base" : ["QuestionnaireResponse"],
  "type" : "date",
  "expression" : "QuestionnaireResponse.extension('https://fhir.ee/hdecl/StructureDefinition/ee-health-declaration-category').extension('effectivePeriod').value.as(Period)",
  "processingMode" : "normal"
}

```
