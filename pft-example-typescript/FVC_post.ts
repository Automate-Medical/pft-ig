/** @fileoverview FVC post Observations: Liters, z-score, % pred, change (mL), and % chng. */

import FHIR from '@automate-medical/fhir-schema-types';


/** FVC post (L) measurement. */
export const FVC_POST_L: FHIR.Observation = {
  resourceType: "Observation",
  id: "FVC-POST-L",
  status: "final",
  code: {
    coding: [
      {
        system: "http://loinc.org",
        code: "19874-7",
        display: "Forced vital capacity [Volume] Respiratory system by Spirometry --post bronchodilation",
      },
    ],
    text: "FVC post (L)",
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
    value: 4.70,
    unit: "L",
    system: "http://unitsofmeasure.org",
    code: "L",
  },
  referenceRange: [
    {
      low: {
        value: 3.70, // TODO: Check GLI 2012 to verify this is same as FVC pre
        unit: "L",
        system: "http://unitsofmeasure.org",
        code: "L",
      },
      type: {
        text: "FVC post normal bounds",
      },
    },
  ],
};

/** FVC post z-score, derived from FVC post (L) measurement. */
export const FVC_POST_zscore: FHIR.Observation = {
  resourceType: "Observation",
  id: "FVC-post-zscore",
  status: "final",
  code: {
    coding: [
      {
        // TODO: FVC post z-score LOINC code
      }
    ],
    text: "FVC post (z-score)",
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
    value: -0.09,
    unit: "",   // TODO: unit for z-score
    system: "", // TODO: system for z-score
    code: "LP164005-3",
  },
  derivedFrom: [
    {
      id: "FVC-POST-L",
      type: "Observation",
      display: "FVC post (L)",
    },
  ],
};

/** FVC post % predicted, derived from FVC post (L) measurement. */
export const FVC_POST_pred: FHIR.Observation = {
  resourceType: "Observation",
  id: "FVC-POST-pred",
  status: "final",
  code: {
    coding: [
      {
        system: "http://loinc.org",
        code: "19873-9",
        display: "FVC post bronchodilation measured/predicted",
      }
    ],
    text: "FVC post (% pred)",
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
    value: 99,
    unit: "%",
    system: "http://unitsofmeasure.org",
    code: "%"
  },
  derivedFrom: [
    {
      id: "FVC-POST-L",
      type: "Observation",
      display: "FVC post (L)",
    },
  ],
};

/** FVC post change (mL), derived from FVC pre (L) and FVC post (L) measurements. */
export const FVC_POST_change_ml: FHIR.Observation = {
  resourceType: "Observation",
  id: "FVC-POST-change-ml",
  status: "final",
  code: {
    coding: [
      {
        system: "http://loinc.org",
        code: "",    // TODO
        display: "", // TODO
      }
    ],
    text: "FVC post change (mL)",
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
    value: 600, // TODO: Should this be in L and then convert to mL in presentation layer?
    unit: "mL",
    system: "http://unitsofmeasure.org",
    code: "mL",
  },
  derivedFrom: [
    {
      id: "FVC-PRE-L",
      type: "Observation",
      display: "FVC pre (L)",
    },
    {
      id: "FVC-POST-L",
      type: "Observation",
      display: "FVC post (L)",
    },
  ],
};

/** FVC post change (%), derived from FVC pre (L) and FVC post (L) measurements. */
export const FVC_POST_change_percent: FHIR.Observation = {
  resourceType: "Observation",
  id: "FVC-POST-change-percent",
  status: "final",
  code: {
    coding: [
      {
        system: "http://loinc.org",
        code: "69982-7",
        display: "FVC percent change Respiratory system",
      }
    ],
    text: "FVC post change (%)",
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
    value: 20,
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
    {
      id: "FVC-POST-L",
      type: "Observation",
      display: "FVC post (L)",
    },
  ],
};
