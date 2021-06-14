/** @fileoverview DLCO (also known as TLCO) Observations
 *  
 * - DLCO (mL/min/mmHg): result
 * - DLCO (at standard P_B): result, LLN, z-score, %pred
 * - DLCO (pred adj Hb 1.38 g/dL): result, %pred
 */ 

import FHIR from '@automate-medical/fhir-schema-types';

// TODO: The example PFT these measurements are from specifies all of them are
//       post-bronchodilator. Do there exist codes specifying that?

/** DLCO (mL/min/mmHg) measurement. */
export const DLCO: FHIR.Observation = {
  resourceType: "Observation",
  id: "DLCO",
  status: "final",
  code: {
    coding: [
      {
        system: "http://loinc.org",
        code: "19911-7",
        display: "Diffusion capacity.carbon monoxide",
      },
    ],
    text: "DLCO (mL/min/mmHg)",
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
    value: 13.4,
    // TODO: Think "mL/min/mmHg" is valid UCUM units, but double-check.
    //       LOINC says under "exUCUMunits" column that DLCO is "cm3/min/mm[Hg]".
    //       See: https://search.loinc.org/searchLOINC/search.zul?query=DLCO
    unit: "mL/min/mmHg",
    system: "http://unitsofmeasure.org",
    code: "mL/min/mmHg",
  },
};

// TODO: What unit? Same as DLCO, ML/min/mmHg?
/** DLCO (at standard P_B) measurement. */
export const DLCO_at_standard_PB: FHIR.Observation = {
  resourceType: "Observation",
  id: "DLCO-at-standard-PB",
  status: "final",
  code: {
    coding: [
      {
        system: "http://loinc.org",
        code: "19911-7",
        display: "Diffusion capacity.carbon monoxide", // TODO: Is there LOINC code for "at standard P_B"?
      },
    ],
    text: "DLCO (at standard P_B)",
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
    value: 13.0,
    unit: "mL/min/mmHg", // TODO: See `DLCO.valueQuantity` comment regarding units.
    system: "http://unitsofmeasure.org",
    code: "mL/min/mmHg", // TODO: See `DLCO.valueQuantity` comment regarding units.
  },
  referenceRange: [
    {
      low: {
        value: 23.4,
        unit: "mL/min/mmHg", // TODO: See `DLCO.valueQuantity` comment regarding units.
        system: "http://unitsofmeasure.org",
        code: "mL/min/mmHg", // TODO: See `DLCO.valueQuantity` comment regarding units.
      },
      type: {
        text: "DLCO (at standard P_B) normal bounds",
      },
    },
  ],
};

/** DLCO (at standard P_B) z-score, derived from DLCO (at standard P_B) measurement. */
export const DLCO_at_standard_PB_zscore: FHIR.Observation = {
  resourceType: "Observation",
  id: "DLCO-at-standard-PB-zscore",
  status: "final",
  code: {
    coding: [
      {
        // TODO
      }
    ],
    text: "DLCO (at standard P_B) z-score",
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
    value: -4.55,
    unit: "",   // TODO
    system: "", // TODO
    code: "",   // TODO
  },
  derivedFrom: [
    {
      id: "DLCO-at-standard-PB",
      type: "Observation",
      display: "DLCO (at standard P_B)",
    },
  ],
};

/** DLCO (at standard P_B) % predicted, derived from DLCO (at standard P_B) measurement. */
export const DLCO_at_standard_PB_pred: FHIR.Observation = {
  resourceType: "Observation",
  id: "DLCO-at-standard-PB-pred",
  status: "final",
  code: {
    coding: [
      {
        system: "http://loinc.org",
        code: "", // TODO: No LOINC code for actual/predicted? Only see LOINC code for predicted: https://loinc.org/19910-9/
        display: "",
      }
    ],
    text: "DLCO (at standard P_B) % pred",
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
    value: 42,
    unit: "%",
    system: "http://unitsofmeasure.org",
    code: "%"
  },
  derivedFrom: [
    {
      id: "DLCO-at-standard-PB",
      type: "Observation",
      display: "DLCO (at standard P_B)",
    },
  ],
};

// TODO: Come up with a better name for this variable.
/** DLCO (pred adj Hb 13.8 g/dL) measurement. */
export const DLCO_pred_adj: FHIR.Observation = {
  resourceType: "Observation",
  id: "DLCO-pred-adj", // TODO: Change `id` to reflect variable name.
  status: "final",
  code: {
    coding: [
      {
        system: "http://loinc.org",
        code: "",    // TODO
        display: "", // TODO
      },
    ],
    text: "DLCO (pred adj Hb 13.8 g/dL)",
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
    value: 13.0,
    unit: "mL/min/mmHg", // TODO: See `DLCO.valueQuantity` comment regarding units.
    system: "http://unitsofmeasure.org",
    code: "mL/min/mmHg", // TODO: See `DLCO.valueQuantity` comment regarding units.
  },
};

// TODO: Come up with a better name for this variable. Don't repeat "pred".
/** DLCO (pred adj Hb 13.8 g/dL) % predicted, derived from DLCO (pred adj Hb 13.8 g/dL) measurement. */
export const DLCO_pred_adj_pred: FHIR.Observation = {
  resourceType: "Observation",
  id: "DLCO-pred-adj-pred", // TODO: Change `id` to reflect variable name.
  status: "final",
  code: {
    coding: [
      {
        system: "http://loinc.org",
        code: "",    // TODO
        display: "", // TODO
      },
    ],
    text: "DLCO (pred adj Hb 13.8 g/dL) %pred",
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
    value: 13.0,
    unit: "mL/min/mmHg", // TODO: See `DLCO.valueQuantity` comment regarding units.
    system: "http://unitsofmeasure.org",
    code: "mL/min/mmHg", // TODO: See `DLCO.valueQuantity` comment regarding units.
  },
  derivedFrom: [
    {
      id: "DLCO-pred-adj", // TODO: Change `id` when we change the referenced Observation's `id`
      type: "Observation",
      display: "DLCO (pred adj Hb 13.8 g/dL)",
    },
  ],
};