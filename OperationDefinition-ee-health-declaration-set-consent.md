# Tervisedeklaratsiooni ressursi ligipääsude muutmine - Tervisedeklaratsiooni juurutusjuhend v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Tervisedeklaratsiooni ressursi ligipääsude muutmine**

## OperationDefinition: Tervisedeklaratsiooni ressursi ligipääsude muutmine 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.ee/hdecl/OperationDefinition/ee-health-declaration-set-consent | *Version*:1.0.0 |
| Active as of 2026-06-05 | *Computable Name*:EEHealthDeclarationSetConsent |

 
Tervisedeklaratsiooni ressursi ligipääsude muutmine. Ühe operatsiooniga saab muuta ligipääsu kas arstile (doctor) ja/või esindajale (representative). Lubatud väärtused on 'closed' või 'open'. 



## Resource Content

```json
{
  "resourceType" : "OperationDefinition",
  "id" : "ee-health-declaration-set-consent",
  "url" : "https://fhir.ee/hdecl/OperationDefinition/ee-health-declaration-set-consent",
  "version" : "1.0.0",
  "name" : "EEHealthDeclarationSetConsent",
  "title" : "Tervisedeklaratsiooni ressursi ligipääsude muutmine",
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
  "description" : "Tervisedeklaratsiooni ressursi ligipääsude muutmine. Ühe operatsiooniga saab muuta ligipääsu kas arstile (doctor) ja/või esindajale (representative). Lubatud väärtused on 'closed' või 'open'.",
  "affectsState" : true,
  "code" : "set-consent",
  "resource" : ["QuestionnaireResponse"],
  "system" : false,
  "type" : false,
  "instance" : true,
  "parameter" : [{
    "name" : "representative",
    "use" : "in",
    "min" : 0,
    "max" : "1",
    "documentation" : "Konfidentsiaalsus eestkostjale",
    "type" : "string"
  },
  {
    "name" : "doctor",
    "use" : "in",
    "min" : 0,
    "max" : "1",
    "documentation" : "Konfidentsiaalsus arstile",
    "type" : "string"
  }]
}

```
