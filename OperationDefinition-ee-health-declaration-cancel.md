# Tervisedeklaratsiooni tühistamine - Tervisedeklaratsiooni juurutusjuhend v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Tervisedeklaratsiooni tühistamine**

## OperationDefinition: Tervisedeklaratsiooni tühistamine 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.ee/hdecl/OperationDefinition/ee-health-declaration-cancel | *Version*:1.0.0 |
| Active as of 2026-06-05 | *Computable Name*:EEHealthDeclarationCancel |

 
'In progress' või 'completed' staatuses tervisedeklaratsiooni tühistamise sõnum. 



## Resource Content

```json
{
  "resourceType" : "OperationDefinition",
  "id" : "ee-health-declaration-cancel",
  "url" : "https://fhir.ee/hdecl/OperationDefinition/ee-health-declaration-cancel",
  "version" : "1.0.0",
  "name" : "EEHealthDeclarationCancel",
  "title" : "Tervisedeklaratsiooni tühistamine",
  "status" : "active",
  "kind" : "operation",
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
  "description" : "'In progress' või 'completed' staatuses tervisedeklaratsiooni tühistamise sõnum.",
  "affectsState" : true,
  "code" : "cancel",
  "resource" : ["QuestionnaireResponse"],
  "system" : false,
  "type" : false,
  "instance" : true
}

```
