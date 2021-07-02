/*
 * Coding system aliases.
 *
 * Aliases are global within a FSH project.
 *
 * Prefacing aliases with the dollar sign ("$") protects against mispellings.
 * (https://build.fhir.org/ig/HL7/fhir-shorthand/reference.html#defining-aliases)
 */

Alias: $LNC = http://loinc.org
/*
 * Note: $SCT is aliased to http://snomed.info/sct but that redirects to https://www.snomed.org/snomed-ct/five-step-briefing.
 *
 * Appending a SNOMED code to the url http://snomed.info/id/ will bring you to the code's definition.
 *
 * We still use http://snomed.info/sct because that is the URL defined in HL7 Terminology 2.1.0
 * https://terminology.hl7.org/2.1.0/CodeSystem-v3-snomed-CT.html
 */
Alias: $SCT = http://snomed.info/sct
Alias: $FHIR_ObservationCategory = http://terminology.hl7.org/CodeSystem/observation-category|0.1.0
Alias: $UCUM =  http://unitsofmeasure.org