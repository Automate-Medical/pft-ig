/** @fileoverview KCO Observations: mL/min/mmHg/L, z-score, and % predicted. */

import FHIR from '@automate-medical/fhir-schema-types';


/** KCO value, derived from DLCO and V_A measurements. */
export const KCO: FHIR.Observation = {
  resourceType: "Observation",
  id: "KCO",
  status: "final",
  code: {
    coding: [
      {
        system: "http://loinc.org",
        code: "", // TODO
        display: "",
      },
    ],
    text: "KCO (mL/min/mmHg/L)",
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
    value: 2.23,
    unit: "mL/min/mmHg/L",
    system: "http://unitsofmeasure.org",
    code: "mL/min/mmHg/L",
  },
  referenceRange: [
    {
      low: {
        value: 3.25,
        unit: "mL/min/mmHg/L",
        system: "http://unitsofmeasure.org",
        code: "mL/min/mmHg/L",
      },
      type: {
        text: "KCO normal bounds",
      },
    },
  ],
  derivedFrom: [
    // TODO: Double-check KCO is derived from DLCO and V_A.
    {
      id: "DLCO",
      type: "Observation",
      display: "DLCO (mL/min/mmHg)"
    },
    {
      id: "VA-L",
      type: "Observation",
      display: "V_A (L)"
    }
  ]
};

/** KCO z-score, derived from KCO measurement. */
export const KCO_zscore: FHIR.Observation = {
  resourceType: "Observation",
  id: "KCO-zscore",
  status: "final",
  code: {
    coding: [
      {
        // TODO
      }
    ],
    text: "KCO (z-score)",
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
    value: -3.47,
    unit: "",   // TODO
    system: "", // TODO
    code: "",   // TODO
  },
  derivedFrom: [
    {
      id: "KCO",
      type: "Observation",
      display: "KCO (mL/min/mmHg/L)",
    },
  ],
};

/** KCO % predicted, derived from KCO measurement. */
export const KCO_pred: FHIR.Observation = {
  resourceType: "Observation",
  id: "KCO-pred",
  status: "final",
  code: {
    coding: [
      {
        system: "http://loinc.org",
        code: "", // TODO
        display: "",
      }
    ],
    text: "KCO (%pred)",
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
    value: 52,
    unit: "%",
    system: "http://unitsofmeasure.org",
    code: "%"
  },
  derivedFrom: [
    {
      id: "KCO",
      type: "Observation",
      display: "KCO (mL/min/mmHg/L)",
    },
  ],
};