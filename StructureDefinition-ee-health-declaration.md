# EEHealthDeclaration - Tervisedeklaratsiooni juurutusjuhend v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EEHealthDeclaration**

## Resource Profile: EEHealthDeclaration 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.ee/hdecl/StructureDefinition/ee-health-declaration | *Version*:1.0.0 |
| Draft as of 2024-01-01 | *Computable Name*:EEHealthDeclaration |

 
Tervisedeklaratsiooni küsimustiku vastuse profiil 

**Usages:**

* Derived from this Profile: [EEHealthDeclarationMinimal](StructureDefinition-ee-health-declaration-minimal.md)
* Examples for this Profile: [QuestionnaireResponse/ee-health-declaration-example](QuestionnaireResponse-ee-health-declaration-example.md) and [QuestionnaireResponse/ee-health-declaration-from-cda-example](QuestionnaireResponse-ee-health-declaration-from-cda-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ee.fhir.hdecl|current/StructureDefinition/StructureDefinition-ee-health-declaration.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ee-health-declaration.csv), [Excel](StructureDefinition-ee-health-declaration.xlsx), [Schematron](StructureDefinition-ee-health-declaration.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ee-health-declaration",
  "url" : "https://fhir.ee/hdecl/StructureDefinition/ee-health-declaration",
  "version" : "1.0.0",
  "name" : "EEHealthDeclaration",
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
  "description" : "Tervisedeklaratsiooni küsimustiku vastuse profiil",
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
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/QuestionnaireResponse",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "QuestionnaireResponse",
      "path" : "QuestionnaireResponse"
    },
    {
      "id" : "QuestionnaireResponse.meta.profile",
      "path" : "QuestionnaireResponse.meta.profile",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.implicitRules",
      "path" : "QuestionnaireResponse.implicitRules",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.language",
      "path" : "QuestionnaireResponse.language",
      "min" : 1
    },
    {
      "id" : "QuestionnaireResponse.contained",
      "path" : "QuestionnaireResponse.contained",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.extension",
      "path" : "QuestionnaireResponse.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "min" : 1
    },
    {
      "id" : "QuestionnaireResponse.extension:categories",
      "path" : "QuestionnaireResponse.extension",
      "sliceName" : "categories",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://fhir.ee/hdecl/StructureDefinition/ee-health-declaration-category"]
      }]
    },
    {
      "id" : "QuestionnaireResponse.modifierExtension",
      "path" : "QuestionnaireResponse.modifierExtension",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.basedOn",
      "path" : "QuestionnaireResponse.basedOn",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.partOf",
      "path" : "QuestionnaireResponse.partOf",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.subject",
      "path" : "QuestionnaireResponse.subject",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.ee/mpi/StructureDefinition/ee-mpi-patient-verified"]
      }]
    },
    {
      "id" : "QuestionnaireResponse.encounter",
      "path" : "QuestionnaireResponse.encounter",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.author",
      "path" : "QuestionnaireResponse.author",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.ee/mpi/StructureDefinition/ee-mpi-patient-verified",
        "http://hl7.org/fhir/StructureDefinition/PractitionerRole"]
      }]
    },
    {
      "id" : "QuestionnaireResponse.item.id",
      "path" : "QuestionnaireResponse.item.id",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item.extension",
      "path" : "QuestionnaireResponse.item.extension",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item.modifierExtension",
      "path" : "QuestionnaireResponse.item.modifierExtension",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item.definition",
      "path" : "QuestionnaireResponse.item.definition",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item.answer.id",
      "path" : "QuestionnaireResponse.item.answer.id",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item.answer.extension",
      "path" : "QuestionnaireResponse.item.answer.extension",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item.answer.modifierExtension",
      "path" : "QuestionnaireResponse.item.answer.modifierExtension",
      "max" : "0"
    }]
  }
}

```
