/** @fileoverview TLC_sb (Total Lung Volume, single breath) Observation: Liters */

import FHIR from '@automate-medical/fhir-schema-types';


/** TLC_sb (L) measurement. */
export const TLC_sb: FHIR.Observation = {
  resourceType: "Observation",
  id: "TLC-sb",
  status: "final",
  code: {
    coding: [
      {
        system: "http://loinc.org",
        code: "19858-0",
        display: "Total lung capacity by Helium single breath", // TODO: This is masurement is by helium, right
      },
    ],
    text: "TLC_sb (L)",
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
    value: 6.01,
    unit: "L",
    system: "http://unitsofmeasure.org",
    code: "L",
  },
};