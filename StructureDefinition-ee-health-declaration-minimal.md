# EEHealthDeclarationMinimal - Tervisedeklaratsiooni juurutusjuhend v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EEHealthDeclarationMinimal**

## Resource Profile: EEHealthDeclarationMinimal 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.ee/hdecl/StructureDefinition/ee-health-declaration-minimal | *Version*:1.0.0 |
| Draft as of 2024-01-01 | *Computable Name*:EEHealthDeclarationMinimal |

 
Tervisedeklaratsiooni metaandmestiku profiil ilma küsimustiku vastusteta. Eesmärk kuvada deklaratsiooni metaandmed TTO registraatoritele. HDECL teenus tagastab antud profiiliga ressursse kuid ei võta vastu. 

**Usages:**

* Examples for this Profile: [QuestionnaireResponse/ee-health-declaration-minimal-example](QuestionnaireResponse-ee-health-declaration-minimal-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ee.fhir.hdecl|current/StructureDefinition/StructureDefinition-ee-health-declaration-minimal.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ee-health-declaration-minimal.csv), [Excel](StructureDefinition-ee-health-declaration-minimal.xlsx), [Schematron](StructureDefinition-ee-health-declaration-minimal.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ee-health-declaration-minimal",
  "url" : "https://fhir.ee/hdecl/StructureDefinition/ee-health-declaration-minimal",
  "version" : "1.0.0",
  "name" : "EEHealthDeclarationMinimal",
  "status" : "draft",
  "date" : "2024-01-01",
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
  "description" : "Tervisedeklaratsiooni metaandmestiku profiil ilma küsimustiku vastusteta. Eesmärk kuvada deklaratsiooni metaandmed TTO registraatoritele. HDECL teenus tagastab antud profiiliga ressursse kuid ei võta vastu.",
  "fhirVersion" : "5.0.0",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "QuestionnaireResponse",
  "baseDefinition" : "https://fhir.ee/hdecl/StructureDefinition/ee-health-declaration",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "QuestionnaireResponse",
      "path" : "QuestionnaireResponse"
    },
    {
      "id" : "QuestionnaireResponse.item",
      "path" : "QuestionnaireResponse.item",
      "max" : "0"
    }]
  }
}

```
