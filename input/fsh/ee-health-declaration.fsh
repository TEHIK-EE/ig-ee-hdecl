Profile: EEHealthDeclaration
Parent: QuestionnaireResponse
Id: ee-health-declaration
Description: "Tervisedeklaratsiooni küsimustiku vastuse profiil"
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
* extension contains EEHealthDeclarationExpiration named ResponseExpiration 0..1
//* extension[ResponseExpiration] 0..1
* item 0..*
  * linkId 1..1
  * definition 0..0
  * text 0..1
  * answer 0..*
    * value[x] 1..1
    * item 0..*
  * item 0..*
