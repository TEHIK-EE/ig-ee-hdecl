# Health declaration category - Tervisedeklaratsiooni juurutusjuhend v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Health declaration category**

## SearchParameter: Health declaration category 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.ee/hdecl/SearchParameter/ee-health-declaration-category | *Version*:1.0.0 |
| Active as of 2026-06-05 | *Computable Name*:EEHealthDeclarationCategory |

 
Search by category in the Health Declaration 



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "ee-health-declaration-category",
  "url" : "https://fhir.ee/hdecl/SearchParameter/ee-health-declaration-category",
  "version" : "1.0.0",
  "name" : "EEHealthDeclarationCategory",
  "title" : "Health declaration category",
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
  "description" : "Search by category in the Health Declaration",
  "code" : "category",
  "base" : ["QuestionnaireResponse"],
  "type" : "token",
  "expression" : "QuestionnaireResponse.extension('https://fhir.ee/hdecl/StructureDefinition/ee-health-declaration-category').extension.where(url='category').value.as(Coding)",
  "processingMode" : "normal"
}

```
