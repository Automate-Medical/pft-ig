/** @fileoverview `Reference` objects for reuse in examples.`
 *
 * Our examples repeat this code a lot so reusing them makes it cleaner.
 */

import FHIR from '@automate-medical/fhir-schema-types';


/** Reference to a FHIR `Patient` resource. */
export const subjectRef: FHIR.Reference = {
  id: "patient-01",
  type: "Patient",
  display: "Example Patient Name",
};

/** Reference to a FHIR `Encounter` resource. */
export const encounterRef: FHIR.Reference = {
  id: "encounter-01",
  type: "Encounter",
};

/** Reference to a FHIR `Practitioner` resource. */
const practitionerRef: FHIR.Reference = {
  id: "practitioner-01",
  type: "Practitioner",
  display: "Dr. P. Pulmonologist",
};

/** Reference to a FHIR `Organization` resource. */
const organizationRef: FHIR.Reference = {
  id: "org-01",
  type: "Organization",
  display: "Sample Pulmonary Function Laboratory",
};

/** Array of References for the `performer` field on FHIR resources.
 *
 * Resources with thie field include `DiagnosticReport` and `Observation`.
 * For our examples, we include our Practitioner and Organization References.
 */
export const performerRefs: FHIR.Reference[] = [
  practitionerRef,
  organizationRef,
];