/** @fileoverview FEV1 pre Observations: Liters, z-score, and % pred. */

import FHIR from '@automate-medical/fhir-schema-types';


/** FEV1 pre (L) measurement. */
export const FEV1_PRE_L: FHIR.Observation = {
  resourceType: "Observation",
  id: "FEV1-PRE-L",
  status: "final",
  code: {
    coding: [
      {
        system: "http://loinc.org",
        code: "20157-4",
        display: "FEV1 --pre bronchodilation",
      },
    ],
    text: "FEV1 pre (L)",
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
      id: "practitioner-01",
      type: "Practitioner",
      display: "Dr. P. Pulmonologist",
    },
    {
      id: "org-01",
      type: "Organization",
      display: "Sample Pulmonary Function Laboratory",
    },
  ],
  valueQuantity: {
    value: 2.02,
    unit: "L",
    system: "http://unitsofmeasure.org",
    code: "L",
  },
  referenceRange: [
    {
      low: {
        value: 2.91,
        unit: "L",
        system: "http://unitsofmeasure.org",
        code: "L",
      },
      type: {
        text: "FEV1 pre normal bounds",
      },
    },
  ],
};

/** FEV1 pre z-score, derived from FEV1 pre (L) measurement. */
export const FEV1_PRE_zscore: FHIR.Observation = {
  resourceType: "Observation",
  id: "FEV1-PRE-zscore",
  status: "final",
  code: {
    coding: [
      {
        // TODO
      }
    ],
    text: "FEV1 pre (z-score)",
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
      id: "practitioner-01",
      type: "Practitioner",
      display: "Dr. P. Pulmonologist",
    },
    {
      id: "org-01",
      type: "Organization",
      display: "Sample Pulmonary Function Laboratory",
    },
  ],
  valueQuantity: {
    value: -3.78,
    unit: "",   // TODO: unit for z-score
    system: "", // TODO: system for z-score
    code: "",   // TODO
  },
  derivedFrom: [
    {
      id: "FEV1-PRE-L",
      type: "Observation",
      display: "FEV1 pre (L)",
    },
  ],
};

/** FEV1 pre % predicted, derived from FEV1 pre (L) measurement. */
export const FEV1_PRE_pred: FHIR.Observation = {
  resourceType: "Observation",
  id: "FEV1-PRE-pred",
  status: "final",
  code: {
    coding: [
      {
        // TODO: Is there a LOINC code to specify this is pre?
        system: "http://loinc.org",
        code: "20152-5",
        display: "FEV1 measured/predicted",
      }
    ],
    text: "FEV1 pre (% pred)",
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
      id: "practitioner-01",
      type: "Practitioner",
      display: "Dr. P. Pulmonologist",
    },
    {
      id: "org-01",
      type: "Organization",
      display: "Sample Pulmonary Function Laboratory",
    },
  ],
  valueQuantity: {
    value: 54,
    unit: "%",
    system: "http://unitsofmeasure.org",
    code: "%"
  },
  derivedFrom: [
    {
      id: "FEV1-PRE-L",
      type: "Observation",
      display: "FEV1 pre (L)",
    },
  ],
};