/** @fileoverview V_A (volume of alveoli) Observations: result, z-score, % pred. */

import FHIR from '@automate-medical/fhir-schema-types';

// TODO: all the LOINC codes.

/** V_A (L) measurement. */
export const VA_L: FHIR.Observation = {
  resourceType: "Observation",
  id: "VA-L",
  status: "final",
  code: {
    coding: [
      {
        system: "http://loinc.org",
        code: "",
        display: "",
      },
    ],
    text: "V_A (L)",
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
    value: 5.83,
    unit: "L",
    system: "http://unitsofmeasure.org",
    code: "L",
  },
  referenceRange: [
    {
      low: {
        value: 5.75,
        unit: "L",
        system: "http://unitsofmeasure.org",
        code: "L",
      },
      type: {
        text: "V_A normal bounds", // TODO: Is this proper text description?
      },
    },
  ],
};

/** V_A z-score, derived from V_A (L) measurement. */
export const VA_zscore: FHIR.Observation = {
  resourceType: "Observation",
  id: "VA-zscore",
  status: "final",
  code: {
    coding: [
      {
        // TODO
      }
    ],
    text: "VA (L) z-score",
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
    value: -1.55,
    unit: "",   // TODO
    system: "", // TODO
    code: "",   // TODO
  },
  derivedFrom: [
    {
      id: "VA-L",
      type: "Observation",
      display: "V_A (L)",
    },
  ],
};

/** V_A % predicted, derived from V_A (L) measurement. */
export const VA_pred: FHIR.Observation = {
  resourceType: "Observation",
  id: "VA-pred",
  status: "final",
  code: {
    coding: [
      {
        system: "http://loinc.org",
        code: "", // TODO
        display: "",
      }
    ],
    text: "VA (L) %pred",
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
    value: 82,
    unit: "%",
    system: "http://unitsofmeasure.org",
    code: "%"
  },
  derivedFrom: [
    {
      id: "VA-L",
      type: "Observation",
      display: "V_A (L)",
    },
  ],
};