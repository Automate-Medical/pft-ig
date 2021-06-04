/** @fileoverview FVC pre Observations: Liters, z-score, and % pred. */

import FHIR from '@automate-medical/fhir-schema-types';


/** FVC pre (L) measurement. */
export const FVC_PRE_L: FHIR.Observation = {
  resourceType: "Observation",
  id: "FVC-PRE-L",
  status: "final",
  code: {
    coding: [
      {
        system: "http://loinc.org",
        code: "19876-2",
        display: "Forced vital capacity [Volume] Respiratory system by Spirometry --pre bronchodilation",
      },
    ],
    text: "FVC pre (L)",
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
    value: 3.90,
    unit: "L",
    system: "http://unitsofmeasure.org",
    code: "L",
  },
  referenceRange: [
    {
      low: {
        value: 3.70,
        unit: "L",
        system: "http://unitsofmeasure.org",
        code: "L",
      },
      type: {
        text: "FVC pre normal bounds",
      },
    },
  ],
};

/** FVC pre z-score, derived from FVC pre (L) measurement. */
export const FVC_PRE_zscore: FHIR.Observation = {
  resourceType: "Observation",
  id: "FVC-PRE-zscore",
  status: "final",
  code: {
    coding: [
      {
        // TODO
      }
    ],
    text: "FVC pre (z-score)",
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
    value: -1.34,
    unit: "",   // TODO
    system: "", // TODO
    code: "LP164005-3",
  },
  derivedFrom: [
    {
      id: "FVC-PRE-L",
      type: "Observation",
      display: "FVC pre (L)",
    },
  ],
};

/** FVC pre % predicted, derived from FVC pre (L) measurement. */
export const FVC_PRE_pred: FHIR.Observation = {
  resourceType: "Observation",
  id: "FVC-PRE-pred",
  status: "final",
  code: {
    coding: [
      {
        system: "http://loinc.org",
        code: "19871-3",
        display: "FVC pre bronchodilation measured/predicted",
      }
    ],
    text: "FVC pre (% pred)",
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
      id: "FVC-PRE-L",
      type: "Observation",
      display: "FVC pre (L)",
    },
  ],
};