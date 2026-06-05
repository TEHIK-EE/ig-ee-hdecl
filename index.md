# Sissejuhatus - Tervisedeklaratsiooni juurutusjuhend v1.0.0

* [**Table of Contents**](toc.md)
* **Sissejuhatus**

## Sissejuhatus

| | |
| :--- | :--- |
| *Official URL*:https://fhir.ee/hdecl/ImplementationGuide/ee.fhir.hdecl | *Version*:1.0.0 |
| Active as of 2026-06-05 | *Computable Name*:HDECL |

# Tervisedeklaratsioon (Health declaration)

### Üldine informatsioon

Tervisedeklaratsioon on tervisetõendi osa, mille patsient koostab Terviseportaalis.

Deklaratsiooni esitatakse küsimustiku vastuse FHIR ressursina [QuestionnaireResponse](https://hl7.org/fhir/questionnaireresponse.html). Tervisedeklaratsiooni küsimustik on kirjeladatud [QRE juurutusjuhendis](https://github.com/TEHIK-EE/ig-ee-qre).

Deklaratsiooni on võimalik täita eesti, vene ja inglise keeles. Tervisedeklaratsioon koosneb:

* taotleja enda poolt tervisliku seisundi kohta sisestatud infost
* tervise infosüsteemis taotleja kohta olemasolevast terviseinfost.

Täitja saab tervisedeklaratsioonil eeltäidetud ning varasemalt märgitud vastuseid muuta ning vajadusel deklaratsiooni tühistada senikaua, kuniks deklaratsioon pole tervisetõendiga seotud.

Tervisedeklaratsioon kehtib kinnitamise hetkest tervisetõendi taotlemise korral 30 päeva ning Kaitseministeeriumi jaoks 3 kuud.

Lisainfo:

* https://www.tehik.ee/tervisetoend-ja-tervisedeklaratsioon
* https://teabekeskus.tehik.ee/et/teenused/tis-teenused/tervisetoendid/tervisedeklaratsioon

### Arendusvahendid ja lähtekood

* HDECL-i juurutusjuhendi lähtekood on leitav [GitHubis](https://github.com/TEHIK-EE/ig-ee-hdecl).
* Antud sait on välja töötatud [FHIR Shorthand](https://build.fhir.org/ig/HL7/fhir-shorthand) abiga.
* Juurutusjuhendi avaldamiseks on kasutatud [FHIR IG Auto-Builderit](https://github.com/FHIR/auto-ig-builder) ja Github Pages.

### Juurutusjuhendi kasutus

Juurutusjuhendis on profiilid ja loodud näidised leitavad [artefaktide all](artifacts.md). Eraldi on eristatud tervisedeklaratsiooni profiil patsiendile/arstile [EEHealthDeclaration](StructureDefinition-ee-health-declaration.md) ja piiratud andmehulgaga profiil näiteks TTO registraatorile [EEHealthDeclarationMinimal](StructureDefinition-ee-health-declaration-minimal.md). Tervisedeklaratsiooni all mõtleme inimese poolt antud vastuseid küsimustikule [QRE-st](https://github.com/TEHIK-EE/ig-ee-qre).

Reaalne tervisedeklaratsiooni ülesehitus on leitav maksimaalse andmekooseisuga näitest [ee-health-declaration-example](QuestionnaireResponse-ee-health-declaration-example.md).

### IG metadata

No use of external IP (other than from the FHIR specification)






*There are no Global profiles defined*



## Resource Content

```json
{
  "resourceType" : "ImplementationGuide",
  "id" : "ee.fhir.hdecl",
  "url" : "https://fhir.ee/hdecl/ImplementationGuide/ee.fhir.hdecl",
  "version" : "1.0.0",
  "name" : "HDECL",
  "title" : "Tervisedeklaratsiooni juurutusjuhend",
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
  "packageId" : "ee.fhir.hdecl",
  "license" : "CC0-1.0",
  "fhirVersion" : ["5.0.0"],
  "dependsOn" : [{
    "id" : "hl7tx",
    "extension" : [{
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/implementationguide-dependency-comment",
      "valueMarkdown" : "Automatically added as a dependency - all IGs depend on HL7 Terminology"
    }],
    "uri" : "http://terminology.hl7.org/ImplementationGuide/hl7.terminology",
    "packageId" : "hl7.terminology.r5",
    "version" : "7.1.0"
  },
  {
    "id" : "hl7ext",
    "extension" : [{
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/implementationguide-dependency-comment",
      "valueMarkdown" : "Automatically added as a dependency - all IGs depend on the HL7 Extension Pack"
    }],
    "uri" : "http://hl7.org/fhir/extensions/ImplementationGuide/hl7.fhir.uv.extensions",
    "packageId" : "hl7.fhir.uv.extensions.r5",
    "version" : "5.3.0"
  },
  {
    "id" : "ee_fhir_mpi",
    "uri" : "https://fhir.ee/mpi/ImplementationGuide/ee.fhir.mpi",
    "packageId" : "ee.fhir.mpi",
    "version" : "1.1.1"
  }],
  "definition" : {
    "extension" : [{
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-internal-dependency",
      "valueCode" : "hl7.fhir.uv.tools.r5#1.1.2"
    }],
    "resource" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "QuestionnaireResponse"
      }],
      "reference" : {
        "reference" : "QuestionnaireResponse/ee-health-declaration-example"
      },
      "name" : "ee-health-declaration-example",
      "description" : "Näidis maksimaalse andmekoosseisuga tervisedeklaratsioonist (töötervishoid).",
      "isExample" : true,
      "profile" : ["https://fhir.ee/hdecl/StructureDefinition/ee-health-declaration"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "QuestionnaireResponse"
      }],
      "reference" : {
        "reference" : "QuestionnaireResponse/ee-health-declaration-from-cda-example"
      },
      "name" : "ee-health-declaration-from-cda-example",
      "description" : "Näidis CDA tervisedeklaratsioonist migreeritud andmetega",
      "isExample" : true,
      "profile" : ["https://fhir.ee/hdecl/StructureDefinition/ee-health-declaration"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "QuestionnaireResponse"
      }],
      "reference" : {
        "reference" : "QuestionnaireResponse/ee-health-declaration-minimal-example"
      },
      "name" : "ee-health-declaration-minimal-example",
      "description" : "Näidisdeklaratsioon minimaalsete andmetega (metaandmed). Eesmärk kuvada TTO registraatoritele deklaratsiooni metaandmed, ilma küsimustiku vastusteta",
      "isExample" : true,
      "profile" : ["https://fhir.ee/hdecl/StructureDefinition/ee-health-declaration-minimal"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ee-health-declaration"
      },
      "name" : "EEHealthDeclaration",
      "description" : "Tervisedeklaratsiooni küsimustiku vastuse profiil",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ee-health-declaration-minimal"
      },
      "name" : "EEHealthDeclarationMinimal",
      "description" : "Tervisedeklaratsiooni metaandmestiku profiil ilma küsimustiku vastusteta. Eesmärk kuvada deklaratsiooni metaandmed TTO registraatoritele. HDECL teenus tagastab antud profiiliga ressursse kuid ei võta vastu.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "SearchParameter"
      }],
      "reference" : {
        "reference" : "SearchParameter/ee-health-declaration-category"
      },
      "name" : "Health declaration category",
      "description" : "Search by category in the Health Declaration",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "SearchParameter"
      }],
      "reference" : {
        "reference" : "SearchParameter/ee-health-declaration-category-effective-date"
      },
      "name" : "Health declaration category effective date",
      "description" : "Search by category effective date in the Health Declaration",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Patient"
      }],
      "reference" : {
        "reference" : "Patient/katipiiriylene"
      },
      "name" : "Questionnaire-patient",
      "description" : "Patsient erinevate identifikaatoritega",
      "isExample" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      }],
      "reference" : {
        "reference" : "CodeSystem/sagedus-ajas"
      },
      "name" : "Sagedus ajas",
      "description" : "No actual CS in terminology server. Sageduse mõõtühikud UCUM notatsioonis",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/sagedus-ajas"
      },
      "name" : "Sagedus ajas loend",
      "description" : "No actual VS in terminology server. Sageduse mõõtühikud UCUM notatsioonis",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ee-health-declaration-category"
      },
      "name" : "Tervise deklaratsiooni kasutusala",
      "description" : "Tervise deklaratsiooni kasutusala ja selle kehtivuse periood",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "OperationDefinition"
      }],
      "reference" : {
        "reference" : "OperationDefinition/ee-health-declaration-complete"
      },
      "name" : "Tervisedeklaratsiooni kinnitamine",
      "description" : "'In progress' tervisedeklaratsiooni kinnitamine ('completed' seisundisse).",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "OperationDefinition"
      }],
      "reference" : {
        "reference" : "OperationDefinition/ee-health-declaration-set-consent"
      },
      "name" : "Tervisedeklaratsiooni ressursi ligipääsude muutmine",
      "description" : "Tervisedeklaratsiooni ressursi ligipääsude muutmine. Ühe operatsiooniga saab muuta ligipääsu kas arstile (doctor) ja/või esindajale (representative). Lubatud väärtused on 'closed' või 'open'.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "OperationDefinition"
      }],
      "reference" : {
        "reference" : "OperationDefinition/ee-health-declaration-get-consent"
      },
      "name" : "Tervisedeklaratsiooni ressursi ligipääsude päring",
      "description" : "Tervisedeklaratsiooni ressursi ligipääsude päring",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "OperationDefinition"
      }],
      "reference" : {
        "reference" : "OperationDefinition/ee-health-declaration-cancel"
      },
      "name" : "Tervisedeklaratsiooni tühistamine",
      "description" : "'In progress' või 'completed' staatuses tervisedeklaratsiooni tühistamise sõnum.",
      "isExample" : false
    }],
    "page" : {
      "sourceUrl" : "toc.html",
      "name" : "toc.html",
      "title" : "Table of Contents",
      "generation" : "html",
      "page" : [{
        "sourceUrl" : "index.html",
        "name" : "index.html",
        "title" : "Sissejuhatus",
        "generation" : "markdown"
      },
      {
        "sourceUrl" : "download.html",
        "name" : "download.html",
        "title" : "Download",
        "generation" : "markdown"
      },
      {
        "sourceUrl" : "hdecl-api.html",
        "name" : "hdecl-api.html",
        "title" : "Healthdeclaration API",
        "generation" : "markdown"
      }]
    },
    "parameter" : [{
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "copyrightyear"
      },
      "value" : "2025+"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "releaselabel"
      },
      "value" : "ci-build"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "autoload-resources"
      },
      "value" : "true"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/guide-parameter-code",
        "code" : "path-resource"
      },
      "value" : "input/capabilities"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/guide-parameter-code",
        "code" : "path-resource"
      },
      "value" : "input/examples"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/guide-parameter-code",
        "code" : "path-resource"
      },
      "value" : "input/extensions"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/guide-parameter-code",
        "code" : "path-resource"
      },
      "value" : "input/models"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/guide-parameter-code",
        "code" : "path-resource"
      },
      "value" : "input/operations"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/guide-parameter-code",
        "code" : "path-resource"
      },
      "value" : "input/profiles"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/guide-parameter-code",
        "code" : "path-resource"
      },
      "value" : "input/resources"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/guide-parameter-code",
        "code" : "path-resource"
      },
      "value" : "input/vocabulary"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/guide-parameter-code",
        "code" : "path-resource"
      },
      "value" : "input/maps"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/guide-parameter-code",
        "code" : "path-resource"
      },
      "value" : "input/testing"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/guide-parameter-code",
        "code" : "path-resource"
      },
      "value" : "input/history"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/guide-parameter-code",
        "code" : "path-resource"
      },
      "value" : "fsh-generated/resources"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/guide-parameter-code",
        "code" : "path-pages"
      },
      "value" : "template/config"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/guide-parameter-code",
        "code" : "path-pages"
      },
      "value" : "input/images"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "path-liquid"
      },
      "value" : "template/liquid"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "path-liquid"
      },
      "value" : "input/liquid"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "path-qa"
      },
      "value" : "temp/qa"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "path-temp"
      },
      "value" : "temp/pages"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "path-output"
      },
      "value" : "output"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/guide-parameter-code",
        "code" : "path-tx-cache"
      },
      "value" : "input-cache/txcache"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "path-suppressed-warnings"
      },
      "value" : "input/ignoreWarnings.txt"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "path-history"
      },
      "value" : "https://fhir.ee/hdecl/history.html"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "template-html"
      },
      "value" : "template-page.html"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "template-md"
      },
      "value" : "template-page-md.html"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "apply-contact"
      },
      "value" : "true"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "apply-context"
      },
      "value" : "true"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "apply-copyright"
      },
      "value" : "true"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "apply-jurisdiction"
      },
      "value" : "true"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "apply-license"
      },
      "value" : "true"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "apply-publisher"
      },
      "value" : "true"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "apply-version"
      },
      "value" : "true"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "apply-wg"
      },
      "value" : "true"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "active-tables"
      },
      "value" : "true"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "fmm-definition"
      },
      "value" : "http://hl7.org/fhir/versions.html#maturity"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "propagate-status"
      },
      "value" : "true"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "excludelogbinaryformat"
      },
      "value" : "true"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "tabbed-snapshots"
      },
      "value" : "true"
    }]
  }
}

```
