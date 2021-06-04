/** @fileoverview FEV1/FEVC pre Observations: ratio and z-score. */

import FHIR from '@automate-medical/fhir-schema-types';


/** FEV1/FVC pre ratio, derived from FEV1 pre (L) and FVC pre (L) measurements. */
export const FEV1_PRE_over_FVC_PRE: FHIR.Observation = {
  resourceType: "Observation",
  id: "FEV1-PRE-over-FVC-PRE",
  status: "final",
  code: {
    coding: [
      {
        system: "http://loinc.org",
        code: "19926-5",
        display: "FEV1/FVC", // TODO: Is there a code to specify pre?
      },
    ],
    text: "FEV1/FVC pre",
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
    value: 0.52,
    unit: "{Number}",
    system: "http://unitsofmeasure.org",
    code: "{Number}",
  },
  referenceRange: [
    {
      low: {
        value: 0.68,
        unit: "{Number}",
        system: "http://unitsofmeasure.org",
        code: "{Number}",
      },
      type: {
        text: "FEV1/FVC pre normal bounds",
      },
    },
  ],
  derivedFrom: [
    {
      id: "FEV1-PRE-L",
      type: "Observation",
      display: "FEV1 pre (L)",
    },
    {
      id: "FVC-PRE-L",
      type: "Observation",
      display: "FVC pre (L)",
    },
  ],
};

/** FEV1/FVC pre z-score, derived from FEV1/FVC pre ratio. */
export const FEV1_PRE_over_FVC_PRE_zscore: FHIR.Observation = {
  resourceType: "Observation",
  id: "FEV1-PRE-over-FVC-PRE-zscore",
  status: "final",
  code: {
    coding: [
      {
        // TODO: code for FEV1/FVC pre z-score
      }
    ],
    text: "FEV1/FVC pre (z-score)",
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
    value: -3.54,
    unit: "",   // TODO: z-score
    system: "", // TODO
    code: "",
  },
  derivedFrom: [
    {
      id: "FEV1-PRE-over-FVC-PRE",
      type: "Observation",
      display: "FEV1/FVC pre",
    },
  ],
};