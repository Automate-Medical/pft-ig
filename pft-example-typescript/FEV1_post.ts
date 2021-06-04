/** @fileoverview FEV1 post Observations: Liters, z-score, % pred, change (mL), and % chng. */

import FHIR from '@automate-medical/fhir-schema-types';


/** FEV1 post (L) measurement. */
export const FEV1_POST_L: FHIR.Observation = {
  resourceType: "Observation",
  id: "FEV1-POST-L",
  status: "final",
  code: {
    coding: [
      {
        system: "http://loinc.org",
        code: "20155-8",
        display: "FEV1 --post bronchodilation",
      },
    ],
    text: "FEV1 post (L)",
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
    value: 2.61,
    unit: "L",
    system: "http://unitsofmeasure.org",
    code: "L",
  },
  referenceRange: [
    {
      low: {
        value: 2.91, // TODO: Check GLI 2012 to verify this is same as FEV1 pre
        unit: "L",
        system: "http://unitsofmeasure.org",
        code: "L",
      },
      type: {
        text: "FEV1 post normal bounds",
      },
    },
  ],
};

/** FEV1 post z-score, derived from FEV1 post (L) measurement. */
export const FEV1_POST_zscore: FHIR.Observation = {
  resourceType: "Observation",
  id: "FEV1-post-zscore",
  status: "final",
  code: {
    coding: [
      {
        // TODO: FEV1 post z-score LOINC code
      }
    ],
    text: "FEV1 post (z-score)",
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
    value: -2.21,
    unit: "",   // TODO: unit for z-score
    system: "", // TODO: system for z-score
    code: "",   // TODO
  },
  derivedFrom: [
    {
      id: "FEV1-POST-L",
      type: "Observation",
      display: "FEV1 post (L)",
    },
  ],
};

/** FEV1 post % predicted, derived from FEV1 post (L) measurement. */
export const FEV1_POST_pred: FHIR.Observation = {
  resourceType: "Observation",
  id: "FEV1-POST-pred",
  status: "final",
  code: {
    coding: [
      {
        // TODO: Is there a LOINC code to specify this is post?
        system: "http://loinc.org",
        code: "20152-5",
        display: "FEV1 measured/predicted",
      }
    ],
    text: "FEV1 post (% pred)",
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
      id: "FEV1-POST-L",
      type: "Observation",
      display: "FEV1 post (L)",
    },
  ],
};

/** FEV1 post change (mL), derived from FEV1 pre (L) and FEV1 post (L) measurements. */
export const FEV1_POST_change_ml: FHIR.Observation = {
  resourceType: "Observation",
  id: "FEV1-POST-change-ml",
  status: "final",
  code: {
    coding: [
      {
        system: "http://loinc.org",
        code: "",    // TODO
        display: "", // TODO
      }
    ],
    text: "FEV1 post change (mL)",
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
    value: 590, // TODO: Should this be in L and then convert to mL in presentation layer?
    unit: "mL",
    system: "http://unitsofmeasure.org",
    code: "mL",
  },
  derivedFrom: [
    {
      id: "FEV1-PRE-L",
      type: "Observation",
      display: "FEV1 pre (L)",
    },
    {
      id: "FEV1-POST-L",
      type: "Observation",
      display: "FEV1 post (L)",
    },
  ],
};

/** FEV1 post change (%), derived from FEV1 pre (L) and FEV1 post (L) measurements. */
export const FEV1_POST_change_percent: FHIR.Observation = {
  resourceType: "Observation",
  id: "FEV1-POST-change-percent",
  status: "final",
  code: {
    coding: [
      {
        system: "http://loinc.org",
        code: "69982-7",
        display: "FEV1 percent change",
      }
    ],
    text: "FEV1 post change (%)",
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
    value: 29,
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
    {
      id: "FEV1-POST-L",
      type: "Observation",
      display: "FEV1 post (L)",
    },
  ],
};
