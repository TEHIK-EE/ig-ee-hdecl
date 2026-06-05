# Artifacts Summary - Tervisedeklaratsiooni juurutusjuhend v1.0.0

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Behavior: Operation Definitions 

These are custom operations that can be supported by and/or invoked by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Tervisedeklaratsiooni kinnitamine](OperationDefinition-ee-health-declaration-complete.md) | 'In progress' tervisedeklaratsiooni kinnitamine ('completed' seisundisse). |
| [Tervisedeklaratsiooni ressursi ligipääsude muutmine](OperationDefinition-ee-health-declaration-set-consent.md) | Tervisedeklaratsiooni ressursi ligipääsude muutmine. Ühe operatsiooniga saab muuta ligipääsu kas arstile (doctor) ja/või esindajale (representative). Lubatud väärtused on 'closed' või 'open'. |
| [Tervisedeklaratsiooni ressursi ligipääsude päring](OperationDefinition-ee-health-declaration-get-consent.md) | Tervisedeklaratsiooni ressursi ligipääsude päring |
| [Tervisedeklaratsiooni tühistamine](OperationDefinition-ee-health-declaration-cancel.md) | 'In progress' või 'completed' staatuses tervisedeklaratsiooni tühistamise sõnum. |

### Behavior: Search Parameters 

These define the properties by which a RESTful server can be searched. They can also be used for sorting and including related resources.

| | |
| :--- | :--- |
| [Health declaration category](SearchParameter-ee-health-declaration-category.md) | Search by category in the Health Declaration |
| [Health declaration category effective date](SearchParameter-ee-health-declaration-category-effective-date.md) | Search by category effective date in the Health Declaration |

### Structures: Resource Profiles 

These define constraints on FHIR resources for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [EEHealthDeclaration](StructureDefinition-ee-health-declaration.md) | Tervisedeklaratsiooni küsimustiku vastuse profiil |
| [EEHealthDeclarationMinimal](StructureDefinition-ee-health-declaration-minimal.md) | Tervisedeklaratsiooni metaandmestiku profiil ilma küsimustiku vastusteta. Eesmärk kuvada deklaratsiooni metaandmed TTO registraatoritele. HDECL teenus tagastab antud profiiliga ressursse kuid ei võta vastu. |

### Structures: Extension Definitions 

These define constraints on FHIR data types for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Tervise deklaratsiooni kasutusala](StructureDefinition-ee-health-declaration-category.md) | Tervise deklaratsiooni kasutusala ja selle kehtivuse periood |

### Terminology: Value Sets 

These define sets of codes used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Sagedus ajas loend](ValueSet-sagedus-ajas.md) | No actual VS in terminology server. Sageduse mõõtühikud UCUM notatsioonis |

### Terminology: Code Systems 

These define new code systems used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Sagedus ajas](CodeSystem-sagedus-ajas.md) | No actual CS in terminology server. Sageduse mõõtühikud UCUM notatsioonis |

### Example: Example Instances 

These are example instances that show what data produced and consumed by systems conforming with this implementation guide might look like.

| | |
| :--- | :--- |
| [Questionnaire-patient](Patient-katipiiriylene.md) | Patsient erinevate identifikaatoritega |
| [ee-health-declaration-example](QuestionnaireResponse-ee-health-declaration-example.md) | Näidis maksimaalse andmekoosseisuga tervisedeklaratsioonist (töötervishoid). |
| [ee-health-declaration-from-cda-example](QuestionnaireResponse-ee-health-declaration-from-cda-example.md) | Näidis CDA tervisedeklaratsioonist migreeritud andmetega |
| [ee-health-declaration-minimal-example](QuestionnaireResponse-ee-health-declaration-minimal-example.md) | Näidisdeklaratsioon minimaalsete andmetega (metaandmed). Eesmärk kuvada TTO registraatoritele deklaratsiooni metaandmed, ilma küsimustiku vastusteta |

