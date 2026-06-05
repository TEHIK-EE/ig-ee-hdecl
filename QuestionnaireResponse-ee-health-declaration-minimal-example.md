# ee-health-declaration-minimal-example - Tervisedeklaratsiooni juurutusjuhend v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ee-health-declaration-minimal-example**

## Example QuestionnaireResponse: ee-health-declaration-minimal-example

Language: et-EE

Profile: [EEHealthDeclarationMinimal](StructureDefinition-ee-health-declaration-minimal.md)

* [LinkID](https://hl7.org/fhir/R5/formats.html#table): ee-health-declaration-minimal-example
  * [Text](https://hl7.org/fhir/R5/formats.html#table): 
  * [Definition](https://hl7.org/fhir/R5/formats.html#table): 
  * [Answer](https://hl7.org/fhir/R5/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): Questionnaire:https://fhir.ee/qre/Questionnaire-health-declaration|1.0.0
* [LinkID](https://hl7.org/fhir/R5/formats.html#table): ![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC) Documentation for this format



## Resource Content

```json
{
  "resourceType" : "QuestionnaireResponse",
  "id" : "ee-health-declaration-minimal-example",
  "meta" : {
    "profile" : ["https://fhir.ee/hdecl/StructureDefinition/ee-health-declaration-minimal"]
  },
  "language" : "et-EE",
  "extension" : [{
    "extension" : [{
      "url" : "category",
      "valueCoding" : {
        "system" : "https://fhir.ee/CodeSystem/labivaatuse-tyyp",
        "code" : "military-service"
      }
    },
    {
      "url" : "effectivePeriod",
      "valuePeriod" : {
        "start" : "2025-01-16",
        "end" : "2025-06-16"
      }
    }],
    "url" : "https://fhir.ee/hdecl/StructureDefinition/ee-health-declaration-category"
  },
  {
    "extension" : [{
      "url" : "category",
      "valueCoding" : {
        "system" : "https://fhir.ee/CodeSystem/labivaatuse-tyyp",
        "code" : "driver-group-I"
      }
    },
    {
      "url" : "effectivePeriod",
      "valuePeriod" : {
        "start" : "2025-01-16",
        "end" : "2025-03-16"
      }
    }],
    "url" : "https://fhir.ee/hdecl/StructureDefinition/ee-health-declaration-category"
  }],
  "identifier" : [{
    "system" : "http://example.org/fhir/identifiers",
    "value" : "1234567"
  }],
  "questionnaire" : "https://fhir.ee/qre/Questionnaire-health-declaration|1.0.0",
  "status" : "completed",
  "subject" : {
    "reference" : "Patient/katipiiriylene"
  },
  "authored" : "2024-01-01",
  "author" : {
    "reference" : "Patient/katipiiriylene"
  }
}

```
