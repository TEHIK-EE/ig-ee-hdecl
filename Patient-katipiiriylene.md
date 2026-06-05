# Questionnaire-patient - Tervisedeklaratsiooni juurutusjuhend v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Questionnaire-patient**

## Example Patient: Questionnaire-patient

Profile: [EE MPI Patient Verified](https://fhir.ee/packages/mpi/1.1.1/site/StructureDefinition-ee-mpi-patient-verified.html)

Kati Piiriülene (official) Female, DoB Unknown ( https://fhir.ee/sid/pid/est/ni#Estonian Personal National Identification Code#49406240016)

-------

| | |
| :--- | :--- |
| Active: | true |



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "katipiiriylene",
  "meta" : {
    "profile" : ["https://fhir.ee/mpi/StructureDefinition/ee-mpi-patient-verified"]
  },
  "identifier" : [{
    "system" : "https://fhir.ee/sid/pid/est/ni",
    "value" : "49406240016"
  }],
  "active" : true,
  "name" : [{
    "use" : "official",
    "family" : "Piiriülene",
    "given" : ["Kati"]
  }],
  "gender" : "female"
}

```
