# Tervisedeklaratsiooni kinnitamine - Tervisedeklaratsiooni juurutusjuhend v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Tervisedeklaratsiooni kinnitamine**

## OperationDefinition: Tervisedeklaratsiooni kinnitamine 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.ee/hdecl/OperationDefinition/ee-health-declaration-complete | *Version*:1.0.0 |
| Active as of 2026-06-05 | *Computable Name*:EEHealthDeclarationComplete |

 
'In progress' tervisedeklaratsiooni kinnitamine ('completed' seisundisse). 



## Resource Content

```json
{
  "resourceType" : "OperationDefinition",
  "id" : "ee-health-declaration-complete",
  "url" : "https://fhir.ee/hdecl/OperationDefinition/ee-health-declaration-complete",
  "version" : "1.0.0",
  "name" : "EEHealthDeclarationComplete",
  "title" : "Tervisedeklaratsiooni kinnitamine",
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
  "description" : "'In progress' tervisedeklaratsiooni kinnitamine ('completed' seisundisse).",
  "affectsState" : true,
  "code" : "complete",
  "resource" : ["QuestionnaireResponse"],
  "system" : false,
  "type" : false,
  "instance" : true,
  "parameter" : [{
    "name" : "medical-data-updates",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "documentation" : "Teavitus eeltäidetud terviseandmete kohta",
    "type" : "OperationOutcome"
  }]
}

```
