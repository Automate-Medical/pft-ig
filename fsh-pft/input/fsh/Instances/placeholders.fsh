/* Placeholder Instances for the PFT examples. */
Instance: patient
InstanceOf: Patient
Title: "The PFT Patient"
Usage: #inline
* id = "patient-01"

Instance: pulmonologist
InstanceOf: Practitioner
Title: "Dr. P. Pulmonologist"
Usage: #inline
* id = "practitioner-01"

Instance: technician
InstanceOf: Practitioner
Title: "The technician (respiratory therapist) who performed the PFT"
Usage: #inline
* id = "practitioner-02"

Instance: organization
InstanceOf: Organization
Title: "Sample Pulmonary Function Laboratory"
Usage: #inline
* id = "organization-01"

Instance: encounter
InstanceOf: Encounter
Title: "PLACEHOLDER: Encounter"
Usage: #inline
* id = "encounter-01"
* status = #finished
* class = #outpatient // We assume this PFT was an outpatient procedure.

Instance: service_request
InstanceOf: ServiceRequest
Title: "Reason for the encounter"
Usage: #inline
* id = "serviceRequest-01"
* status = #completed // This assumes the test panels (and maybe the diagnostic interpretation?) have been completed
* intent = #order // See: https://www.hl7.org/fhir/valueset-request-intent.html
* category = $SCT#108252007 "Laboratory procedure"
* code = $SCT#23426006 "Measurement of respiratory function (procedure)"
* subject = Reference(patient)