Käesolevas juhendis kirjeldatakse toetatud otspunktid ja operatsioonid, operatsioonide üldine 
kirjeldus, parameetrid, ärireeglid ja päringu ja vastuse näited

## Uue tervisedeklaratsiooni algatamine
- UPTIS võtab vastu patsiendi või patsiendi esindaja poolt edastatud uue tervisedeklaratsiooni. 
- UPTIS kontrollib päringu tegija õiguseid, andmete suletust ja genereerib vastuseks 
eeltäidetud andmetega tervisedeklaratsiooni (QuestionnaireResponse). 
- Uut tervisedeklaratsiooni lubatakse teha juhul, kui patsiendil puudub ajaliselt kehtiv TD staatusega "completed" 
ja puudub täitmisel staatusega "in-progress" TD.

### Päring
- **URL**: `POST [base]/QuestionnaireResponse`

Uue TD algatamisel kasutatav QuestionnaireResponse ressursikirje sisaldab üksnes metaandmeid
ja kasutusaladele vastavaid laiendusi.

```
POST [base]/QuestionnaireResponse
{
  "resourceType": "QuestionnaireResponse",
  "meta": {
    "profile": ["https://fhir.ee/hdecl/StructureDefinition/ee-health-declaration"]
  },
  "language" : "et-EE",
  "extension" : [
    {
      "extension" : [
        {
          "url" : "category",
          "valueCoding" : {
            "system" : "https://fhir.ee/CodeSystem/tervisekontrolli-liik",
            "code" : "military-service"
          }
        },
        {
          "url" : "effectivePeriod",
          "valuePeriod" : {
            "start" : "2025-01-16",
            "end" : "2025-06-16"
          }
        }
      ],
      "url" : "https://fhir.ee/hdecl/StructureDefinition/ee-health-declaration-category"
    },
    {
      "extension" : [
        {
          "url" : "category",
          "valueCoding" : {
            "system" : "https://fhir.ee/CodeSystem/tervisekontrolli-liik",
            "code" : "driver-group-I"
          }
        },
        {
          "url" : "effectivePeriod",
          "valuePeriod" : {
            "start" : "2025-01-16",
            "end" : "2025-03-16"
          }
        }
      ],
      "url" : "https://fhir.ee/hdecl/StructureDefinition/ee-health-declaration-category"
    }
  ],
  "questionnaire": "https://fhir.ee/example-questionnaire|0.2",
  "status": "in-progress",
  "subject": {"reference": "Patient/48806140249"},
  "authored": "2024-12-10T11:00:00+02:00",
  "author": {"reference": "Patient/48806140249"}
}
```


### Vastus
- **HTTP kood**: 201 Created
- **Sisu**: Päringu päise parameetri `Prefer: return=representation` korral tagastatakse uus tervisedeklaratsioon (QuestionnaireResponse), mis sisaldab eeltäidetud andmeid.

```
HTTP/1.1 201 Created
Location: [base]/QuestionnaireResponse/21
```

### Kasutuslugu
UC 187: Uue tervisedeklaratsiooni algatamine https://wiki.sm.ee/spaces/UPTISDEV/pages/314258802/UC187+HDECL+Uue+tervisedeklaratsiooni+algatamine

## Tervisedeklaratsiooni muutmine
UPTIS võtab vastu patsiendi või patsiendi esindaja poolt edastatud täitmisel ("in-progress") tervisedeklaratsiooni
muutmise sõnumi. UPTIS kontrollib päringu tegija õiguseid, andmete suletust ja vajaduse korral genereerib vastuseks 
TD uue versiooni eeltäidetud andmetega: kui TD muutub staatusest "completed"-->"in-progress" või kui on muudetud  
TD kasutusala, siis sel juhul uuendatakse TD eeltäidetud andmetega, muudel juhtudel toimub TD-l andmete uuendamine 
vajaduspõhiselt (vastavalt süsteemsele parameetrile).

### Päring
- **URL**: `PUT [base]/QuestionnaireResponse/[id]`

TODO Alljärgnevas näites puudub vastuste osa, muus osas peaks näide olema valiidne
```
PUT [base]/QuestionnaireResponse/31
{
  "resourceType": "QuestionnaireResponse",
  "meta": {
    "profile": ["https://fhir.ee/hdecl/StructureDefinition/ee-health-declaration"]
  },
  "language" : "et-EE",
  "extension" : [
    {
      "extension" : [
        {
          "url" : "category",
          "valueCoding" : {
            "system" : "https://fhir.ee/CodeSystem/tervisekontrolli-liik",
            "code" : "military-service"
          }
        },
        {
          "url" : "effectivePeriod",
          "valuePeriod" : {
            "start" : "2025-01-16",
            "end" : "2025-06-16"
          }
        }
      ],
      "url" : "https://fhir.ee/hdecl/StructureDefinition/ee-health-declaration-category"
    },
    {
      "extension" : [
        {
          "url" : "category",
          "valueCoding" : {
            "system" : "https://fhir.ee/CodeSystem/tervisekontrolli-liik",
            "code" : "driver-group-I"
          }
        },
        {
          "url" : "effectivePeriod",
          "valuePeriod" : {
            "start" : "2025-01-16",
            "end" : "2025-03-16"
          }
        }
      ],
      "url" : "https://fhir.ee/hdecl/StructureDefinition/ee-health-declaration-category"
    }
  ],
  "questionnaire": "https://fhir.ee/example-questionnaire|0.2",
  "status": "in-progress",
  "subject": {"reference": "Patient/48806140249"},
  "authored": "2024-12-10T11:00:00+02:00",
  "author": {"reference": "Patient/48806140249"}
}
```


### Vastus
- **HTTP kood**: 201 Created
- **Sisu**: Päringu päise parameetri `Prefer: return=representation` korral tagastatakse uus tervisedeklaratsioon (QuestionnaireResponse), mis sisaldab eeltäidetud andmeid.

```
HTTP/1.1 201 Created
Location: [base]/QuestionnaireResponse/31/_history/2
```
### Kasutuslugu
UC 190: Tervisedeklaratsiooni muutmine ja kinnitamine https://wiki.sm.ee/spaces/UPTISDEV/pages/316845066/UC190+HDECL+Tervisedeklaratsiooni+muutmine+ja+kinnitamine

## Tervisedeklaratsiooni kinnitamine
UPTIS võtab vastu patsiendi või patsiendi esindaja poolt edastatud täitmisel ("in-progress") tervisedeklaratsiooni (TD)
kinnitamise operatsiooni $complete. UPTIS kontrollib päringu tegija õiguseid, andmete suletust ja vajaduse korral 
genereerib vastuseks TD uue versiooni eeltäidetud andmetega: kui toimub kinnitamine, siis sel juhul uuendatakse TD 
eeltäidetud andmetega.
