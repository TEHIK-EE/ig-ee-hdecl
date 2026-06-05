# Tervisedeklaratsiooni ressursi ligipääsude päring - Tervisedeklaratsiooni juurutusjuhend v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Tervisedeklaratsiooni ressursi ligipääsude päring**

## OperationDefinition: Tervisedeklaratsiooni ressursi ligipääsude päring 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.ee/hdecl/OperationDefinition/ee-health-declaration-get-consent | *Version*:1.0.0 |
| Active as of 2026-06-05 | *Computable Name*:EEHealthDeclarationGetConsent |

 
Tervisedeklaratsiooni ressursi ligipääsude päring 



## Resource Content

```json
{
  "resourceType" : "OperationDefinition",
  "id" : "ee-health-declaration-get-consent",
  "url" : "https://fhir.ee/hdecl/OperationDefinition/ee-health-declaration-get-consent",
  "version" : "1.0.0",
  "name" : "EEHealthDeclarationGetConsent",
  "title" : "Tervisedeklaratsiooni ressursi ligipääsude päring",
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
  "description" : "Tervisedeklaratsiooni ressursi ligipääsude päring",
  "affectsState" : false,
  "code" : "get-consent",
  "resource" : ["QuestionnaireResponse"],
  "system" : false,
  "type" : false,
  "instance" : true,
  "parameter" : [{
    "name" : "representative",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "documentation" : "Konfidentsiaalsus eestkostjale",
    "type" : "string"
  },
  {
    "name" : "doctor",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "documentation" : "Konfidentsiaalsus arstile",
    "type" : "string"
  }]
}

```
