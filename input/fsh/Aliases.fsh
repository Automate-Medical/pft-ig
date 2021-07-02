/*
 * Coding system aliases.
 *
 * Aliases are global within a FSH project.
 *
 * Prefacing aliases with the dollar sign ("$") protects against mispellings.
 * (https://build.fhir.org/ig/HL7/fhir-shorthand/reference.html#defining-aliases)
 */

Alias: $LNC = http://loinc.org
// $SCT was previously aliased to http://snomed.info/sct but that
// redirects to https://www.snomed.org/snomed-ct/five-step-briefing
Alias: $SCT = http://snomed.info/id
Alias: $FHIR_ObservationCategory = http://terminology.hl7.org/CodeSystem/observation-category|0.1.0
Alias: $UCUM =  http://unitsofmeasure.org
Alias: $ReferenceRangeMeaning = http://terminology.hl7.org/CodeSystem/referencerange-meaning|0.1.0
