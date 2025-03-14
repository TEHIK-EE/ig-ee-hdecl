Profile: EEHealthDeclarationMinimal
Parent: QuestionnaireResponse
Id: ee-health-declaration-minimal
Description: "Tervisedeklaratsiooni metaandmestiku profiil ilma küsimustiku vastusteta. Eesmärk kuvada deklaratsiooni metaandmed TTO registraatoritele"
* ^version = "1.0.0"
* ^status = #draft
* ^date = "2024-01-01"
* meta.profile 1..1
* questionnaire 1..1
* language 0..1
* status 1..1
* basedOn 0..0
* partOf 0..0
* subject 1..1
* encounter 0..0
* modifierExtension 0..0
* contained 0..0
* implicitRules 0..0
//* text 0..0
* author 1..1
* extension contains EEHealthDeclarationCategory named categories 1..*
* item 0..0

