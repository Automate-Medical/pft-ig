/** @fileoverview V_I / V_C (inspired volume/vital capacity) Observation.
 * 
 * Abbreviations:
 *  - V_I: Inspired volume
 *  - V_C: Pulmonary capillary blood volume
 * 
 * TODO: Double-check they do mean V_C here, not VC (vital capacity).
 */

import FHIR from '@automate-medical/fhir-schema-types';


// TODO: Don't like this variable name.
/** V_I / V_C percentage, derived from V_I and V_C measurements. */
export const VI_over_VC: FHIR.Observation = {
  resourceType: "Observation",
  id: "VI-over-VC",
  status: "final",
  code: {
    coding: [
      {
        system: "http://loinc.org",
        code: "",
        display: "",
      },
    ],
    text: "V_I / V_L (%)",
  },
  subject: {
    id: "patient-01",
    type: "Patient",
    display: "Example Patient Name",
  },
  encounter: {
    id: "encounter-01",
    type: "Encounter",
  },
  effectiveDateTime: "2017-02-20 14:30",
  performer: [
    {
      id: "practitioner-02",
      type: "Practitioner",
      display: "Technician (Respiratory Therapist)",
    },
    {
      id: "org-01",
      type: "Organization",
      display: "Sample Pulmonary Function Laboratory",
    },
  ],
  valueQuantity: {
    value: 85,
    unit: "%",
    system: "http://unitsofmeasure.org",
    code: "%",
  },
  derivedFrom: [
    // TODO: This should reference V_I and V_C Observations
  ]
};