// This is a simple example of a FSH file.
// This file can be renamed, and additional FSH files can be added.
// SUSHI will look for definitions in any file using the .fsh ending.
Profile: MyPatient
Parent: Patient
Title: "My Patient"
Description: "An example profile of the Patient resource."

* ^text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">This is a test StructureDefinition</div>"
* ^text.status = #generated
* ^version = "0.2.0"
* ^date = "2023-09-18"
* ^experimental = false
* ^publisher = "Robert Koch Institut"
* ^baseDefinition = https://demis.rki.de/fhir/StructureDefinition/NotifiedPerson

* maritalStatus from http://terminology.hl7.org/ValueSet/v2-0002 (required)
* name 1..* MS

Instance: PatientExample
InstanceOf: MyPatient
Description: "An example of a patient with a license to krill."
* text
  * div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">This is a test Patient</div>"
  * status = #generated
* maritalStatus = http://terminology.hl7.org/CodeSystem/v2-0002#D "Divorced"
* name
  * given[0] = "James"
  * family = "Pond"