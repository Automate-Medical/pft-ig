/** @fileoverview FET pre Observation: seconds. */

import FHIR from '@automate-medical/fhir-schema-types';


/** FET pre (s) measurement. */
export const FET_PRE_S: FHIR.Observation = {
  resourceType: "Observation",
  id: "FET-PRE-S",
  status: "final",
  code: {
    coding: [
      {
        system: "http://loinc.org",
        code: "Forced expiratory time",
        display: "65819-5", // TODO: Is there a code to specify pre?
      },
    ],
    text: "FET pre (s)",
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
    value: 10.3,
    unit: "s",
    system: "http://unitsofmeasure.org",
    code: "s",
  },
};