# Tervise deklaratsiooni kasutusala - Tervisedeklaratsiooni juurutusjuhend v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Tervise deklaratsiooni kasutusala**

## Extension: Tervise deklaratsiooni kasutusala 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.ee/hdecl/StructureDefinition/ee-health-declaration-category | *Version*:1.0.0 |
| Active as of 2026-06-05 | *Computable Name*:EEHealthDeclarationCategory |

Tervise deklaratsiooni kasutusala ja selle kehtivuse periood

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [EEHealthDeclaration](StructureDefinition-ee-health-declaration.md)
* Examples for this Extension: [QuestionnaireResponse/ee-health-declaration-example](QuestionnaireResponse-ee-health-declaration-example.md), [QuestionnaireResponse/ee-health-declaration-from-cda-example](QuestionnaireResponse-ee-health-declaration-from-cda-example.md) and [QuestionnaireResponse/ee-health-declaration-minimal-example](QuestionnaireResponse-ee-health-declaration-minimal-example.md)
* Search Parameters using this Extension: [EEHealthDeclarationCategoryEffectiveDate](SearchParameter-ee-health-declaration-category-effective-date.md) and [EEHealthDeclarationCategory](SearchParameter-ee-health-declaration-category.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ee.fhir.hdecl|current/StructureDefinition/StructureDefinition-ee-health-declaration-category.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ee-health-declaration-category.csv), [Excel](StructureDefinition-ee-health-declaration-category.xlsx), [Schematron](StructureDefinition-ee-health-declaration-category.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ee-health-declaration-category",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-bind"
  }],
  "url" : "https://fhir.ee/hdecl/StructureDefinition/ee-health-declaration-category",
  "version" : "1.0.0",
  "name" : "EEHealthDeclarationCategory",
  "title" : "Tervise deklaratsiooni kasutusala",
  "status" : "active",
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
  "description" : "Tervise deklaratsiooni kasutusala ja selle kehtivuse periood",
  "fhirVersion" : "5.0.0",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [{
    "type" : "element",
    "expression" : "QuestionnaireResponse"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "Tervise deklaratsiooni kasutusala",
      "definition" : "Tervise deklaratsiooni kasutusala ja selle kehtivuse periood"
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "min" : 1
    },
    {
      "id" : "Extension.extension:category",
      "path" : "Extension.extension",
      "sliceName" : "category",
      "short" : "Kasutusala",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:category.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:category.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "category"
    },
    {
      "id" : "Extension.extension:category.value[x]",
      "path" : "Extension.extension.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.ee/ValueSet/labivaatuse-tyyp"
      }
    },
    {
      "id" : "Extension.extension:effectivePeriod",
      "path" : "Extension.extension",
      "sliceName" : "effectivePeriod",
      "short" : "Kehtivusperiood",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:effectivePeriod.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:effectivePeriod.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "effectivePeriod"
    },
    {
      "id" : "Extension.extension:effectivePeriod.value[x]",
      "path" : "Extension.extension.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Period"
      }]
    },
    {
      "id" : "Extension.extension:effectivePeriod.value[x].start",
      "path" : "Extension.extension.value[x].start",
      "min" : 1
    },
    {
      "id" : "Extension.extension:effectivePeriod.value[x].end",
      "path" : "Extension.extension.value[x].end",
      "min" : 1
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://fhir.ee/hdecl/StructureDefinition/ee-health-declaration-category"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "max" : "0"
    }]
  }
}

```
