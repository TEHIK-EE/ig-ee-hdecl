Käesolevas juhendis kirjeldatakse toetatud otspunktid ja operatsioonid, operatsioonide üldine 
kirjeldus, parameetrid, ärireeglid ja päringu ja vastuse näited

## Uue tervisedeklaratsiooni algatamine
- UPTIS võtab vastu patsiendi või patsiendi esindaja poolt edastatud uue tervisedeklaratsiooni TD (QuestionnaireResponse). 
- UPTIS kontrollib päringu tegija õiguseid, andmete suletust ja edastab vastuseks 
eeltäidetud andmetega TD (QuestionnaireResponse). 
- Uut TD lubatakse teha juhul, kui patsiendil puudub ajaliselt kehtiv TD staatusega "completed" 
ja puudub täitmisel staatusega "in-progress" TD.

### Päring
- **URL**: `POST [base]/QuestionnaireResponse`

Uue TD algatamisel kasutatav QuestionnaireResponse ressursikirje sisaldab üksnes metaandmeid
ja kasutusaladele vastavaid laiendusi. Uue TD algatamisel ei ole kasutusala kehtivus määratud.

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
            "system" : "https://fhir.ee/CodeSystem/tervisekontrolli-kasutusala",
            "code" : "military-service"
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
            "system" : "https://fhir.ee/CodeSystem/tervisekontrolli-kasutusala",
            "code" : "driver-group-I"
          }
        }
      ],
      "url" : "https://fhir.ee/hdecl/StructureDefinition/ee-health-declaration-category"
    }
  ],
  "questionnaire": "https://fhir.ee/example-questionnaire|0.2",
  "status": "in-progress",
  "subject": {"reference": "Patient/123"},
  "authored": "2024-12-10T11:00:00+02:00",
  "author": {"reference": "Patient/123"}
}
```


### Vastus
- **HTTP kood**: 201 Created
- **Sisu**: Päringu päise parameetri `Prefer: return=representation` korral tagastatakse uus tervisedeklaratsioon (QuestionnaireResponse), mis sisaldab eeltäidetud andmeid.

```
HTTP/1.1 201 Created
Location: [base]/QuestionnaireResponse/21
```

## Tervisedeklaratsiooni muutmine
UPTIS võtab vastu patsiendi või patsiendi esindaja poolt edastatud täitmisel ("in-progress") tervisedeklaratsiooni TD (QuestionnaireResponse)
muutmise sõnumi. UPTIS kontrollib päringu tegija õiguseid, andmete suletust ja vajaduse korral edastab vastuseks 
TD uue versiooni eeltäidetud andmetega: kui TD muutub staatusest "completed"--> "in-progress" või kui on muudetud  
TD kasutusala, siis sel juhul uuendatakse TD eeltäidetud andmetega, muudel juhtudel toimub TD-l andmete uuendamine 
vajaduspõhiselt (terviseandmeid uuendatakse TD'l UPTIS-s süsteemses parameetris määratud aja tagant).

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
            "system" : "https://fhir.ee/CodeSystem/tervisekontrolli-kasutusala",
            "code" : "military-service"
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
            "system" : "https://fhir.ee/CodeSystem/tervisekontrolli-kasutusala",
            "code" : "driver-group-I"
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

## Tervisedeklaratsiooni kinnitamine
UPTIS võtab vastu patsiendi või patsiendi esindaja poolt edastatud täitmisel ("in-progress") tervisedeklaratsiooni (TD)
kinnitamise operatsiooni $complete. UPTIS kontrollib päringu tegija õiguseid, andmete suletust ja kontrollib, kas TD-l olevad terviseandmed
on vahepeal muutunud. Kui terviseandmed ei ole muutunud, siis TD kinnitatakse. Kui terviseandmed on muutunud, siis tagastatakse vastus
koos muutunud terviseandmetega ja antakse veateade. Patsient või patsiendi esindaja peab TD uuesti üle vaatama ja kinnitama.

### Päring
- **URL**: `POST [base]/QuestionnaireResponse/[id]/$complete`

```
POST [base]/QuestionnaireResponse/31/$complete
{
    "resourceType": "Parameters"
}
```

### Vastus
- **HTTP kood**: 200 OK

```
HTTP/1.1 200 OK
```

## Tervisedeklaratsiooni tühistamine
UPTIS võtab vastu patsiendi või patsiendi esindaja poolt edastatud tervisedeklaratsiooni TD (QuestionnaireResponse) tühistamise sõnumi. 
Tühistatakse kogu TD, mitte ainult TD viimane versioon. UPTIS kontrollib päringu tegija õiguseid, kontrollib, kas TD 
on lubatud tühistada ja salvestab UPTIS-sse uue versiooni TD-st staatusega "stopped" või "entered-in-error". TD ei lubata tühistada, kui TD
on juba tervisetõendi otsusega seotud või kui TD kasutusalaga "military-service" on päritud Kaitseministeeriumi asutuse poolt.

### Päring
- **URL**: `POST [base]/QuestionnaireResponse/[id]/$cancel`

```
POST [base]/QuestionnaireResponse/31/$cancel
{
    "resourceType": "Parameters"
}
```

### Vastus
- **HTTP kood**: 200 OK

```
HTTP/1.1 200 OK
```

## Tervisedeklaratsiooni pärimine
UPTIS võtab vastu tervisedeklaratsiooni TD (QuestionnaireResponse) päringu ja tagastab päringu tingimustele vastavad TD-d. 
Lubatud TD päringud ja päringu tingimused sõltuvad päringu autorist:

- patsient või patsiendi esindaja võib pärida patsiendi kõikides staatustes (ka tühistatud) TD-e, samuti võib pärib tõendiga seotud TD-i (ajaloo päring: konkreetse ID ja versiooni numbriga TD päring)
- TTO tervishoiutöötaja või spetsialist pärib kehtivat TD-i  või pärib tõendiga seotud TD-i (ajaloo päring)
- Registraator pärib kehtivat TD ja registraatorile tagastatakse päringu vastuses vaid TD metaandmed - registraatorile on oluline teada, kas patsiendil on olemas kehtiv TD ja kui kaua TD ajaliselt kehtib (patsient soovib broneerida arsitle aega ning registraator kontrollib TD olemasolu visiidi ajal).
- Kaitseministeeriumi asutuse tervishoiutöötaja pärib TD-i järgmistel juhtudel:
  - Kaitseressursside ameti arstlik komisjon (KRA AK): tegeleb isikutega, kes on potentsiaalsed ajateenistusse kutsutavad või isikud on ise avaldanud soovi AK läbimiseks. Arstliku komisjoni kuuluv arst pärib isiku hetkel kehtiva TD kasutusalaga "military-service".
  - Kaitseministeeriumi vaidekomisjon (KAVK): kui isik ei on nõus arstliku komisjoni otsusega, siis on tal võimalik otsus vaidlustada KAVK-s. Komisjoni koosoleku toimumisel päritakse eelneva arstliku komisjoni toimumise ajal päritud TD (TD ajaloo päring konkreetse ID ja versiooni numbriga).
  - Kaitseväe arstlik komisjon (KAK):  Isikud, kes jõuavad KAK-i on:
    - tegevväelased, kes tulevad korralisele tervisekontrollile (3 korda aastas).
    - ajateenijad, kelle väeosa arst suunab komisjoni seoses teenistuse jätkamist takistavate terviseprobleemidega.
    - tsiviilisikud, kes soovivad astuda tegevteenistusse (Värbamiskeskuse kaudu);
    - teenistusülesannete täitmisel tervisekahjustuse saanud isikud ja Kaitseväe teenistusest vabastatud isikud.
  - KAK arst pärib isiku hetkel kehtiva TD kasutusalaga "military-service".

### Päring id järgi
- **URL**: `GET [base]/QuestionnaireResponse/{id}`

```
GET [base]/QuestionnaireResponse/70
```

### Vastus
- **HTTP kood**: 200 OK
```
{
    "resourceType": "QuestionnaireResponse",
    "id": "70",
    "meta": {
        "versionId": "1",
        "lastUpdated": "2025-03-20T14:50:28.566+00:00",
        "profile": [
            "https://fhir.ee/hdecl/StructureDefinition/ee-health-declaration"
        ]
    },
    "extension": [
        {
            "extension": [
                {
                    "url": "category",
                    "valueCoding": {
                        "system": "https://fhir.ee/CodeSystem/tervisekontrolli-kasutusala",
                        "code": "military-service"
                    }
                }
            ],
            "url": "https://fhir.ee/hdecl/StructureDefinition/ee-health-declaration-category"
        },
        {
            "extension": [
                {
                    "url": "category",
                    "valueCoding": {
                        "system": "https://fhir.ee/CodeSystem/tervisekontrolli-kasutusala",
                        "code": "driver-group-I"
                    }
                }
            ],
            "url": "https://fhir.ee/hdecl/StructureDefinition/ee-health-declaration-category"
        }
    ],
    "questionnaire": "https://fhir.ee/example-questionnaire|0.2",
    "status": "in-progress",
    "subject": {
        "reference": "Patient/260920"
    },
    "authored": "2024-12-10T09:00:00+00:00",
    "author": {
        "reference": "Patient/260920"
    }
}
```


### Ajaloo päring
```
GET /QuestionnaireResponse/{id}/_history/{versionId}
```

```
GET [base]/QuestionnaireResponse/120/_history/3
```

### Vastus
- **HTTP kood**: 200 OK

```
{
    "resourceType": "QuestionnaireResponse",
    "id": "120",
    "meta": {
        "versionId": "3",
        "lastUpdated": "2025-01-15T22:00:25.729+00:00",
        "profile": [
            "https://fhir.ee/hdecl/StructureDefinition/ee-health-declaration"
        ]
    },
    "extension": [
        {
            "extension": [
                {
                    "url": "category",
                    "valueCoding": {
                        "system": "https://fhir.ee/CodeSystem/tervisekontrolli-kasutusala",
                        "code": "military-service"
                    }
                },
                {
                    "url": "effectivePeriod",
                    "valuePeriod": {
                        "start": "2025-01-15T22:00:00+00:00",
                        "end": "2025-02-15T21:00:00+00:00"
                    }
                }
            ],
            "url": "https://fhir.ee/hdecl/StructureDefinition/ee-health-declaration-category"
        },
        {
            "extension": [
                {
                    "url": "category",
                    "valueCoding": {
                        "system": "https://fhir.ee/CodeSystem/tervisekontrolli-kasutusala",
                        "code": "driver-group-I"
                    }
                },
                {
                    "url": "effectivePeriod",
                    "valuePeriod": {
                        "start": "2025-01-15T22:00:00+00:00",
                        "end": "2025-04-15T22:00:00+00:00"
                    }
                }
            ],
            "url": "https://fhir.ee/hdecl/StructureDefinition/ee-health-declaration-category"
        }
    ],
    "questionnaire": "https://fhir.ee/qre/Questionnaire-health-declaration-hdecl-test1|1.1.5",
    "status": "completed",
    "subject": {
        "reference": "Patient/65491"
    },
    "authored": "2025-01-15T22:00:00+00:00",
    "author": {
        "reference": "Patient/6549"
    },
    "item": [
        {
            "linkId": "category",
            "answer": [
                {
                    "valueCoding": {
                        "system": "https://fhir.ee/CodeSystem/tervisekontrolli-kasutusala",
                        "code": "military-service"
                    }
                },
                {
                     "valueCoding" : {
                        "system" : "https://fhir.ee/CodeSystem/tervisekontrolli-kasutusala",
                        "code" : "driver-group-I"
                    }
                }                                   
            ]
        },
        {
            "linkId": "patient-gender",
            "answer": [
                {
                    "valueCoding": {
                        "system": "http://hl7.org/fhir/administrative-gender",
                        "code": "male"
                    }
                }
            ]
        },
        {
            "linkId": "lifestyle",
            "item": [
                {
                    "linkId": "lifestyle.alcohol",
                    "answer": [
                        {
                            "valueBoolean": true,
                            "item": [
                                {
                                    "linkId": "lifestyle.alcohol.alcohol-units",
                                    "answer": [
                                        {
                                            "valueDecimal": 3.4
                                        }
                                    ]
                                }
                            ]
                        }
                    ]
                },
                {
                    "linkId": "lifestyle.smoking",
                    "answer": [
                        {
                            "valueBoolean": true,
                            "item": [
                                {
                                    "linkId": "lifestyle.smoking.smoking-amount",
                                    "answer": [
                                        {
                                            "valueInteger": 20
                                        }
                                    ]
                                },
                                {
                                    "linkId": "lifestyle.smoking.smoking-period",
                                    "answer": [
                                        {
                                            "valueDecimal": 45
                                        }
                                    ]
                                }
                            ]
                        }
                    ]
                },
                {
                    "linkId": "lifestyle.narcotics",
                    "answer": [
                        {
                            "valueBoolean": true,
                            "item": [
                                {
                                    "linkId": "lifestyle.narcotics.narcotics-frequency",
                                    "answer": [
                                        {
                                            "valueString": "Narkootilised valuvaigistid kroonilise valu vastu (opiaadid)"
                                        }
                                    ]
                                }
                            ]
                        }
                    ]
                },
                {
                    "linkId": "lifestyle.medication",
                    "answer": [
                        {
                            "valueBoolean": true,
                            "item": [
                                {
                                    "linkId": "lifestyle.medication.specification",
                                    "answer": [
                                        {
                                            "valueString": "Kodeiin ja muud opioidid"
                                        }
                                    ]
                                }
                            ]
                        }
                    ]
                }
            ]
        }
    ]
}
```

### Tervisedeklratsiooni TD (QuestionnaireResponse) päring

#### status
Patsiendil ja patsiendi esindajal on lubatud TD pärida staatustega "in-progress","completed","stopped" või "entered-in-error". Staatuse määramine päringus ei ole kohustuslik.

Muudel rollidel on lubatud TD pärida ainult "completed" staatusega ja staatuse määramine päringus on kohustuslik.

```
status=completed

status=stopped,entered-in-error
```

#### patient
Patsient - MPI id / isikukood
```
patient=123

patient=Patient/123

patient.identifier=https://fhir.ee/sid/pid/est/ni|52007010062

patient.identifier=urn:oid:1.3.6.1.4.1.28284.6.2.2.1|52007010062

patient:Patient.identifier=https://fhir.ee/sid/pid/est/ni|52007010062

```

#### category-effective-date

TD kehtivuse aeg

Lubatud prefiksid: eq, lt

Kui prefiks on määramata, siis on vaikimisi "eq".

Tervisedeklaratsioonil on mitu kehtivust kasutusalade lõikes. Kui päringu tingimuses on kasutusala määramata või on määratud mitu kasutusala, siis category-effective-date tingimus peab sobima vähemalt ühele kasutusala kehtivuse lõpule.

```
category-effective-date=2025-01-14  (14.01.2025 kehtivad QR)

category-effective-date=eq2025-01-14  (14.01.2025 kehtivad QR)

category-effective-date=lt2025-01-14  (QR'd, mille kehtivus lõpeb 13.01.2025, kaasa arvatud)
```

#### category
TD kasutusala kood.

KAM asutuste korral on kohustuslik määrata category=military-service

```
category=driver-group-1,occupational,military-service
```

#### _summary
Tagastatakse päringu vastuses piiratud komplekt andmeid, profiilis määratakse summary elemendid.

```
_summary=true
```

#### _sort
Vastuse sorteerimine

#### _page
Lehekülgede kaupa pärimine

#### _id
Tervisedeklaratsiooni ID

```
_id=21321321
```

#### _count
Kui mitu ressurssi ühe otsinguga tagastatakse.

### Otsingu näited

#### Patsient või patsiendi esindaja pärib TD

```
GET /QuestionnaireResponse/{id}
GET /QuestionnaireResponse/{id}/_history/{versionId}
GET /QuestionnaireResponse?patient={id}&{parameter1=value1}&...
```

#### Näidispäring
```
GET [base]/QuestionnaireResponse?patient.identifier=https://fhir.ee/sid/pid/est/ni%7C39702232035
```

#### Vastus
- **HTTP kood**: 200 OK

```
{
    "resourceType": "Bundle",
    "type": "searchset",
    "total": 1,
    "link": [
        {
            "relation": "self",
            "url": "http://127.0.0.1:4507/hdecl/fhir/QuestionnaireResponse?patient.identifier=https://fhir.ee/sid/pid/est/ni%7C39702232035&_page=1"
        },
        {
            "relation": "first",
            "url": "http://127.0.0.1:4507/hdecl/fhir/QuestionnaireResponse?patient.identifier=https://fhir.ee/sid/pid/est/ni%7C39702232035&_page=1"
        },
        {
            "relation": "last",
            "url": "http://127.0.0.1:4507/hdecl/fhir/QuestionnaireResponse?patient.identifier=https://fhir.ee/sid/pid/est/ni%7C39702232035&_page=1"
        }
    ],
    "entry": [
        {
            "fullUrl": "QuestionnaireResponse/198",
            "resource": {
                "resourceType": "QuestionnaireResponse",
                "id": "198",
                "meta": {
                    "versionId": "1",
                    "lastUpdated": "2025-01-16T15:03:50.770+00:00",
                    "profile": [
                        "https://fhir.ee/hdecl/StructureDefinition/ee-health-declaration"
                    ]                    
                },
                "extension": [
                    {
                        "extension": [
                            {
                                "url": "category",
                                "valueCoding": {
                                    "system": "https://fhir.ee/CodeSystem/tervisekontrolli-kasutusala",
                                    "code": "military-service"
                                }
                            },
                            {
                                "url": "effectivePeriod",
                                "valuePeriod": {
                                    "start": "2025-01-16T00:00:00+00:00",
                                    "end": "2025-04-16T00:00:00+00:00"
                                }
                            }
                        ],
                        "url": "https://fhir.ee/hdecl/StructureDefinition/ee-health-declaration-category"
                    },
                    {
                        "extension": [
                            {
                                "url": "category",
                                "valueCoding": {
                                    "system": "https://fhir.ee/CodeSystem/tervisekontrolli-kasutusala",
                                    "code": "driver-group-II"
                                }
                            },
                            {
                                "url": "effectivePeriod",
                                "valuePeriod": {
                                    "start": "2025-01-16T00:00:00+00:00",
                                    "end": "2025-02-16T00:00:00+00:00"
                                }
                            }
                        ],
                        "url": "https://fhir.ee/hdecl/StructureDefinition/ee-health-declaration-category"
                    }
                ],
                "questionnaire": "https://fhir.ee/example-questionnaire|0.2",
                "status": "in-progress",
                "subject": {
                    "reference": "Patient/260920"
                },
                "authored": "2025-01-16T09:00:00+00:00",
                "author": {
                    "reference": "Patient/260920"
                }
            }
        }
    ]
}
```


#### Raviteekonnal osalev roll (välja arvatud registraator) pärib TD

```
GET /QuestionnaireResponse/{id}
GET /QuestionnaireResponse/{id}/_history/{versionId}
GET /QuestionnaireResponse?patient={id}&status=completed&{parameter1=value1}&...
```
kohustuslik on määrata päringus status=completed

#### Näidispäring
```
GET [base]/QuestionnaireResponse?patient.identifier=https://fhir.ee/sid/pid/est/ni%7C39702232035&status=completed
```

#### Vastus
- **HTTP kood**: 200 OK

```
{
    "resourceType": "Bundle",
    "type": "searchset",
    "total": 1,
    "link": [
        {
            "relation": "self",
            "url": "http://127.0.0.1:4507/hdecl/fhir/QuestionnaireResponse?patient.identifier=https://fhir.ee/sid/pid/est/ni%7C39702232035&status=completed&_page=1"
        },
        {
            "relation": "first",
            "url": "http://127.0.0.1:4507/hdecl/fhir/QuestionnaireResponse?patient.identifier=https://fhir.ee/sid/pid/est/ni%7C39702232035&status=completed&_page=1"
        },
        {
            "relation": "last",
            "url": "http://127.0.0.1:4507/hdecl/fhir/QuestionnaireResponse?patient.identifier=https://fhir.ee/sid/pid/est/ni%7C39702232035&status=completed&_page=1"
        }
    ],
    "entry": [
        {
            "fullUrl": "QuestionnaireResponse/194",
            "resource": {
                "resourceType": "QuestionnaireResponse",
                "id": "194",
                "meta": {
                    "versionId": "2",
                    "lastUpdated": "2025-03-26T14:45:24.887+00:00",
                    "profile": [
                        "https://fhir.ee/hdecl/StructureDefinition/ee-health-declaration"
                    ]                    
                },
                "extension": [
                    {
                        "extension": [
                            {
                                "url": "category",
                                "valueCoding": {
                                    "system": "https://fhir.ee/CodeSystem/tervisekontrolli-kasutusala",
                                    "code": "military-service"
                                }
                            },
                            {
                                "url": "effectivePeriod",
                                "valuePeriod": {
                                    "start": "2025-01-15T22:00:00+00:00",
                                    "end": "2025-04-15T00:00:00+00:00"
                                }
                            }
                        ],
                        "url": "https://fhir.ee/hdecl/StructureDefinition/ee-health-declaration-category"
                    },
                    {
                        "extension": [
                            {
                                "url": "category",
                                "valueCoding": {
                                    "system": "https://fhir.ee/CodeSystem/tervisekontrolli-kasutusala",
                                    "code": "driver-group-I"
                                }
                            },
                            {
                                "url": "effectivePeriod",
                                "valuePeriod": {
                                    "start": "2025-01-15T22:00:00+00:00",
                                    "end": "2025-02-15T00:00:00+00:00"
                                }
                            }
                        ],
                        "url": "https://fhir.ee/hdecl/StructureDefinition/ee-health-declaration-category"
                    }
                ],
                "questionnaire": "https://fhir.ee/qre/Questionnaire-health-declaration-hdecl-test1|1.1.5",
                "status": "completed",
                "subject": {
                    "reference": "Patient/260920"
                },
                "authored": "2025-01-15T22:00:00+00:00",
                "author": {
                    "reference": "Patient/260920"
                },
                "item": [
                    {
                        "linkId": "category",
                        "answer": [
                            {
                                "valueCoding": {
                                    "system": "https://fhir.ee/CodeSystem/tervisekontrolli-kasutusala",
                                    "code": "military-service"
                                }
                            },
                            {
                                "valueCoding" : {
                                    "system" : "https://fhir.ee/CodeSystem/tervisekontrolli-kasutusala",
                                    "code" : "driver-group-I"
                                }
                            }                               
                        ]
                    },
                    {
                        "linkId": "patient-gender",
                        "answer": [
                            {
                                "valueCoding": {
                                    "system": "http://hl7.org/fhir/administrative-gender",
                                    "code": "male"
                                }
                            }
                        ]
                    },
                    {
                        "linkId": "lifestyle",
                        "item": [
                            {
                                "linkId": "lifestyle.alcohol",
                                "answer": [
                                    {
                                        "valueBoolean": true,
                                        "item": [
                                            {
                                                "linkId": "lifestyle.alcohol.alcohol-units",
                                                "answer": [
                                                    {
                                                        "valueDecimal": 3.4
                                                    }
                                                ]
                                            }
                                        ]
                                    }
                                ]
                            },
                            {
                                "linkId": "lifestyle.smoking",
                                "answer": [
                                    {
                                        "valueBoolean": true,
                                        "item": [
                                            {
                                                "linkId": "lifestyle.smoking.smoking-amount",
                                                "answer": [
                                                    {
                                                        "valueInteger": 20
                                                    }
                                                ]
                                            },
                                            {
                                                "linkId": "lifestyle.smoking.smoking-period",
                                                "answer": [
                                                    {
                                                        "valueDecimal": 45
                                                    }
                                                ]
                                            }
                                        ]
                                    }
                                ]
                            },
                            {
                                "linkId": "lifestyle.narcotics",
                                "answer": [
                                    {
                                        "valueBoolean": true,
                                        "item": [
                                            {
                                                "linkId": "lifestyle.narcotics.narcotics-frequency",
                                                "answer": [
                                                    {
                                                        "valueString": "Narkootilised valuvaigistid kroonilise valu vastu (opiaadid)"
                                                    }
                                                ]
                                            }
                                        ]
                                    }
                                ]
                            },
                            {
                                "linkId": "lifestyle.medication",
                                "answer": [
                                    {
                                        "valueBoolean": true,
                                        "item": [
                                            {
                                                "linkId": "lifestyle.medication.specification",
                                                "answer": [
                                                    {
                                                        "valueString": "Kodeiin ja muud opioidid"
                                                    }
                                                ]
                                            }
                                        ]
                                    }
                                ]
                            }
                        ]
                    }
                ]
            }
        }
    ]
}
```

#### TTO registraator pärib TD

```
GET /QuestionnaireResponse?patient={id}&status=completed&{parameter1=value1}&...
```
kohustuslik on määrata päringus status=completed
Tagastatakse ainult TD metaandmed (profiiliga EEHealthDeclarationMinimal)

#### Näidispäring
```
GET [base]/QuestionnaireResponse?patient=Patient/260920&status=completed
```

#### Vastus
- **HTTP kood**: 200 OK

```
{
    "resourceType": "Bundle",
    "type": "searchset",
    "total": 2,
    "link": [
        {
            "relation": "self",
            "url": "http://127.0.0.1:4507/hdecl/fhir/QuestionnaireResponse?patient=Patient/260920&status=completed&_summary=true&_page=1"
        },
        {
            "relation": "first",
            "url": "http://127.0.0.1:4507/hdecl/fhir/QuestionnaireResponse?patient=Patient/260920&status=completed&_summary=true&_page=1"
        },
        {
            "relation": "last",
            "url": "http://127.0.0.1:4507/hdecl/fhir/QuestionnaireResponse?patient=Patient/260920&status=completed&_summary=true&_page=1"
        }
    ],
    "entry": [
        {
            "fullUrl": "QuestionnaireResponse/70",
            "resource": {
                "resourceType": "QuestionnaireResponse",
                "id": "70",
                "meta": {
                    "versionId": "2",
                    "lastUpdated": "2025-01-15T22:00:00.566+00:00",
                    "profile": [
                        "https://fhir.ee/hdecl/StructureDefinition/ee-health-declaration-minimal"
                    ]                    
                },
                "extension": [
                    {
                        "extension": [
                            {
                                "url": "category",
                                "valueCoding": {
                                    "system": "https://fhir.ee/CodeSystem/tervisekontrolli-kasutusala",
                                    "code": "military-service"
                                }
                            },
                            {
                                "url": "effectivePeriod",
                                "valuePeriod": {
                                    "start": "2025-01-15T22:00:00+00:00",
                                    "end": "2025-04-15T00:00:00+00:00"
                                }
                            }
                        ],
                        "url": "https://fhir.ee/hdecl/StructureDefinition/ee-health-declaration-category"
                    },
                    {
                        "extension": [
                            {
                                "url": "category",
                                "valueCoding": {
                                    "system": "https://fhir.ee/CodeSystem/tervisekontrolli-kasutusala",
                                    "code": "driver-group-I"
                                }
                            },
                            {
                                "url": "effectivePeriod",
                                "valuePeriod": {
                                    "start": "2025-01-15T22:00:00+00:00",
                                    "end": "2025-02-15T00:00:00+00:00"
                                }
                            }
                        ],
                        "url": "https://fhir.ee/hdecl/StructureDefinition/ee-health-declaration-category"
                    }
                ],
                "questionnaire": "https://fhir.ee/example-questionnaire|0.2",
                "status": "completed",
                "subject": {
                    "reference": "Patient/260920"
                },
                "authored": "2025-01-15T22:00:00+00:00",
                "author": {
                    "reference": "Patient/260920"
                }
            }
        },
        {
            "fullUrl": "QuestionnaireResponse/194",
            "resource": {
                "resourceType": "QuestionnaireResponse",
                "id": "194",
                "meta": {
                    "versionId": "2",
                    "lastUpdated": "2025-05-15T14:45:24.887+00:00",
                    "profile": [
                        "https://fhir.ee/hdecl/StructureDefinition/ee-health-declaration-minimal"
                    ]    
                },
                "extension": [
                    {
                        "extension": [
                            {
                                "url": "occupational",
                                "valueCoding": {
                                    "system": "https://fhir.ee/CodeSystem/tervisekontrolli-kasutusala",
                                    "code": "occupational"
                                }
                            },
                            {
                                "url": "effectivePeriod",
                                "valuePeriod": {
                                    "start": "2025-05-15T22:00:00+00:00",
                                    "end": "2025-06-15T21:00:00+00:00"
                                }
                            }
                        ],
                        "url": "https://fhir.ee/hdecl/StructureDefinition/ee-health-declaration-category"
                    }                        
                ],                
                "questionnaire": "https://fhir.ee/qre/Questionnaire-health-declaration-hdecl-test1|1.1.5",
                "status": "completed",
                "subject": {
                    "reference": "Patient/260920"
                },
                "authored": "2025-05-15T22:00:00+00:00",
                "author": {
                    "reference": "Patient/260920"
                }
            }
        }
    ]
}
```

#### KAM asutuse tervishoiutöötaja pärib TD

```
GET /QuestionnaireResponse/id
GET /QuestionnaireResponse/{id}/_history/{versionId}
GET /QuestionnaireResponse?patient={id}&status=completed&category=military-service&{parameter1=value1}&...
```
kohustuslik on määrata päringus status=completed ja category=military-service

#### Näidispäring
```
GET [base]/QuestionnaireResponse?patient.identifier=https://fhir.ee/sid/pid/est/ni%7C39702232035&category=military-service&status=completed&_sort=-authored&_count=1&_page=1
```

#### Vastus
- **HTTP kood**: 200 OK

```
{
    "resourceType": "Bundle",
    "type": "searchset",
    "total": 2,
    "link": [
        {
            "relation": "self",
            "url": "http://127.0.0.1:4507/hdecl/fhir/QuestionnaireResponse?patient.identifier=https://fhir.ee/sid/pid/est/ni%7C39702232035&category=military-service&status=completed&_count=1&_sort=authored&_page=1"
        },
        {
            "relation": "first",
            "url": "http://127.0.0.1:4507/hdecl/fhir/QuestionnaireResponse?patient.identifier=https://fhir.ee/sid/pid/est/ni%7C39702232035&category=military-service&status=completed&_count=1&_sort=authored&_page=1"
        },
        {
            "relation": "last",
            "url": "http://127.0.0.1:4507/hdecl/fhir/QuestionnaireResponse?patient.identifier=https://fhir.ee/sid/pid/est/ni%7C39702232035&category=military-service&status=completed&_count=1&_sort=authored&_page=2"
        },
        {
            "relation": "next",
            "url": "http://127.0.0.1:4507/hdecl/fhir/QuestionnaireResponse?patient.identifier=https://fhir.ee/sid/pid/est/ni%7C39702232035&category=military-service&status=completed&_count=1&_sort=authored&_page=2"
        }
    ],
    "entry": [
        {
            "fullUrl": "QuestionnaireResponse/194",
            "resource": {
                "resourceType": "QuestionnaireResponse",
                "id": "194",
                "meta": {
                    "versionId": "2",
                    "lastUpdated": "2025-01-15T22:00:00.887+00:00",
                    "profile": [
                        "https://fhir.ee/hdecl/StructureDefinition/ee-health-declaration"
                    ]                        
                },
                "extension": [
                    {
                        "extension": [
                            {
                                "url": "category",
                                "valueCoding": {
                                    "system": "https://fhir.ee/CodeSystem/tervisekontrolli-kasutusala",
                                    "code": "military-service"
                                }
                            },
                            {
                                "url": "effectivePeriod",
                                "valuePeriod": {
                                    "start": "2025-01-15T22:00:00+00:00",
                                    "end": "2025-04-15T21:00:00+00:00"
                                }
                            }
                        ],
                        "url": "https://fhir.ee/hdecl/StructureDefinition/ee-health-declaration-category"
                    },
                    {
                        "extension": [
                            {
                                "url": "category",
                                "valueCoding": {
                                    "system": "https://fhir.ee/CodeSystem/tervisekontrolli-kasutusala",
                                    "code": "driver-group-I"
                                }
                            },
                            {
                                "url": "effectivePeriod",
                                "valuePeriod": {
                                    "start": "2025-01-15T22:00:00+00:00",
                                    "end": "2025-02-15T22:00:00+00:00"
                                }
                            }
                        ],
                        "url": "https://fhir.ee/hdecl/StructureDefinition/ee-health-declaration-category"
                    }
                ],
                "questionnaire": "https://fhir.ee/qre/Questionnaire-health-declaration-hdecl-test1|1.1.5",
                "status": "completed",
                "subject": {
                    "reference": "Patient/260920"
                },
                "authored": "2025-01-15T22:00:00+00:00",
                "author": {
                    "reference": "Patient/260920"
                },
                "item": [
                    {
                        "linkId": "category",
                        "answer": [
                            {
                                "valueCoding": {
                                    "system": "https://fhir.ee/CodeSystem/tervisekontrolli-kasutusala",
                                    "code": "military-service"
                                }
                            },
                            {
                                "valueCoding" : {
                                    "system" : "https://fhir.ee/CodeSystem/tervisekontrolli-kasutusala",
                                    "code" : "driver-group-I"
                                }
                            }                                               
                        ]
                    },
                    {
                        "linkId": "patient-gender",
                        "answer": [
                            {
                                "valueCoding": {
                                    "system": "http://hl7.org/fhir/administrative-gender",
                                    "code": "male"
                                }
                            }
                        ]
                    },
                    {
                        "linkId": "lifestyle",
                        "item": [
                            {
                                "linkId": "lifestyle.alcohol",
                                "answer": [
                                    {
                                        "valueBoolean": true,
                                        "item": [
                                            {
                                                "linkId": "lifestyle.alcohol.alcohol-units",
                                                "answer": [
                                                    {
                                                        "valueDecimal": 3.4
                                                    }
                                                ]
                                            }
                                        ]
                                    }
                                ]
                            },
                            {
                                "linkId": "lifestyle.smoking",
                                "answer": [
                                    {
                                        "valueBoolean": true,
                                        "item": [
                                            {
                                                "linkId": "lifestyle.smoking.smoking-amount",
                                                "answer": [
                                                    {
                                                        "valueInteger": 20
                                                    }
                                                ]
                                            },
                                            {
                                                "linkId": "lifestyle.smoking.smoking-period",
                                                "answer": [
                                                    {
                                                        "valueDecimal": 45
                                                    }
                                                ]
                                            }
                                        ]
                                    }
                                ]
                            },
                            {
                                "linkId": "lifestyle.narcotics",
                                "answer": [
                                    {
                                        "valueBoolean": true,
                                        "item": [
                                            {
                                                "linkId": "lifestyle.narcotics.narcotics-frequency",
                                                "answer": [
                                                    {
                                                        "valueString": "Narkootilised valuvaigistid kroonilise valu vastu (opiaadid)"
                                                    }
                                                ]
                                            }
                                        ]
                                    }
                                ]
                            },
                            {
                                "linkId": "lifestyle.medication",
                                "answer": [
                                    {
                                        "valueBoolean": true,
                                        "item": [
                                            {
                                                "linkId": "lifestyle.medication.specification",
                                                "answer": [
                                                    {
                                                        "valueString": "Kodeiin ja muud opioidid"
                                                    }
                                                ]
                                            }
                                        ]
                                    }
                                ]
                            }
                        ]
                    }
                ]
            }
        }
    ]
}
```