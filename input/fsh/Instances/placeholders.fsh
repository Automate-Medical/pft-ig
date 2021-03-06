/* Placeholder Instances for the PFT examples. */

Instance: PFT_Patient
InstanceOf: Patient
Title: "The PFT Patient"
Usage: #inline
Description: """An example patient who is the subject of the pulmonary function test observations and diagnostic report.

This resource is a stub for use in examples and has no relevance on its own."""
* text
  * status = #additional
  * div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>An example patient who is the subject of the pulmonary function test observations and diagnostic report.</p><p><i>This resource is a stub for use in examples.</i></p></div>"
* id = "patient-01"

Instance: PFT_Pulmonologist
InstanceOf: Practitioner
Title: "Dr. P. Pulmonologist"
Usage: #example
Description: """An example practitioner (typically a pulmonologist) who is responsible for the interpretation of pulmonary function test results and diagnosis.

This resource is a stub for use in examples and has no relevance on its own."""
* text
  * status = #additional
  * div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>An example practitioner (typically a pulmonologist) responsible for the interpretation of pulmonary function test results and diagnosis.</p><p><i>This resource is a stub for use in examples and has no relevance on its own.</i></p></div>"
* id = "practitioner-01"
* name
  * text = "Dr. P. Pulmonologist"
  * family = "Pulmonologist"
  * given = "P."
  * prefix = "Dr."

Instance: PFT_Technician
InstanceOf: Practitioner
Title: "Technician or Respiratory Therapist"
Usage: #example
Description: """An example practitioner (typically a technician or respiratory therapist) who performed the pulmonary function test observations.

This resource is a stub for use in examples and has no relevance on its own."""
* text
  * status = #additional
  * div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>An example practitioner (typically a technician or respiratory therapist) who performed the pulmonary function tests.</p><p><i>This resource is a stub for use in examples and has no relevance on its own.</i></p></div>"
* id = "practitioner-02"

/* Organization responsible for performing the PFT Observations.
 *
 * Assumed that the technician and diagnostic pulmonologist are associated with
 * the organization, and that the organization is the entity which stores the
 * PFT data records.
 */
Instance: PFT_Organization
InstanceOf: Organization
Title: "Sample Pulmonary Function Laboratory"
Usage: #inline
Description: """An example organization.

This resource is a stub for use in examples and has no relevance on its own."""
* text
  * status = #additional
  * div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><i>This resource is a stub for use in examples and has no relevance on its own.</i></p></div>"
* id = "organization-01"
* type = http://hl7.org/fhir/ValueSet/organization-type|4.0.1#prov "Healthcare Provider"
* name = "Sample Pulmonary Function Laboratory"
* telecom[+]
  * system = #phone
  * value = "p555-345-6789"
  * use = #work
* telecom[+]
  * system = #email
  * value = "pftests@lunglab.com"
  * use = #work
* address
  * use = #work
  * type = #both
  * text = "Anytown, Anywhere"
  * city = "Anytown"
  * state = "Anywhere"

/* Encounter associated with the PFT and diagnosis.
 *
 * We assume the Encounter was an outpatient procedure.
 */
Instance: PFT_Encounter
InstanceOf: Encounter
Title: "PLACEHOLDER: Encounter"
Usage: #inline
* text
  * status = #additional
  * div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><i>This resource is a stub for use in examples and has no relevance on its own.</i></p></div>"
* id = "encounter-01"
* status = #finished
// In this value set, "ambulatory" means outpatient.
* class = http://terminology.hl7.org/ValueSet/v3-ActEncounterCode|2.0.0#AMB "ambulatory"

// Not sure if these are necessary to model,
// but this is possibly-relevant data included in the PFT.

/* ServiceRequest for the PFT and pulmonologist interpretation. */
Instance: PFT_ServiceRequest
InstanceOf: ServiceRequest
Title: "Reason for the encounter"
Usage: #inline
* text
  * status = #additional
  * div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><i>This resource is a stub for use in examples and has no relevance on its own.</i></p></div>"
* id = "serviceRequest-01"
* status = #completed // This assumes the test panels (and maybe the diagnostic interpretation?) have been completed
* intent = #order // See: https://www.hl7.org/fhir/valueset-request-intent.html
* category = $SCT#108252007 "Laboratory procedure"
* code = $SCT#23426006 "Measurement of respiratory function (procedure)"
* subject = Reference(PFT_Patient)
* requester = Reference(PFT_RequesterPractitioner)

/* Entity responsible for requesting the PFT. */
Instance: PFT_RequesterPractitioner
InstanceOf: Practitioner
Title: "Practitioner who requested the PFT"
Usage: #inline
* text
  * status = #additional
  * div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><i>This resource is a stub for use in examples and has no relevance on its own.</i></p></div>"
* id = "practitioner-03"
* name
  * text = "Dr. G. Practitioner"
  * family = "Practitioner"
  * given = "G."
  * prefix = "Dr."