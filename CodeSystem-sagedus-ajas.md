# Sagedus ajas - Tervisedeklaratsiooni juurutusjuhend v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Sagedus ajas**

## CodeSystem: Sagedus ajas 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.ee/CodeSystem/sagedus-ajas | *Version*:1.0.0 |
| Draft as of 2026-06-05 | *Computable Name*:Sagedus_CS |

 
No actual CS in terminology server. Sageduse mõõtühikud UCUM notatsioonis 

 This Code system is referenced in the content logical definition of the following value sets: 

* [Sagedus_VS](ValueSet-sagedus-ajas.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "sagedus-ajas",
  "url" : "https://fhir.ee/CodeSystem/sagedus-ajas",
  "version" : "1.0.0",
  "name" : "Sagedus_CS",
  "title" : "Sagedus ajas",
  "status" : "draft",
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
  "description" : "No actual CS in terminology server. Sageduse mõõtühikud UCUM notatsioonis",
  "content" : "fragment",
  "concept" : [{
    "code" : "/wk",
    "display" : "nädalas"
  },
  {
    "code" : "/d",
    "display" : "päevas"
  },
  {
    "code" : "/mo",
    "display" : "kuus"
  }]
}

```
