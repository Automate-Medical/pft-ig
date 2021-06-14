/** @fileoverview FEV1/FEVC post Observations: ratio and z-score. */

import FHIR from '@automate-medical/fhir-schema-types';


/** FEV1/FVC post ratio, derived from FEV1 post (L) and FVC post (L) measurements. */
export const FEV1_POST_over_FVC_POST: FHIR.Observation = {
  resourceType: "Observation",
  id: "FEV1-POST-over-FVC-POST",
  status: "final",
  code: {
    coding: [
      {
        system: "http://loinc.org",
        code: "19926-5",
        display: "FEV1/FVC", // TODO: Is there a code to specify post?
      },
    ],
    text: "FEV1/FVC post",
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
    value: 0.55,
    unit: "{Number}",
    system: "http://unitsofmeasure.org",
    code: "{Number}",
  },
  derivedFrom: [
    {
      id: "FEV1-POST-L",
      type: "Observation",
      display: "FEV1 post (L)",
    },
    {
      id: "FVC-POST-L",
      type: "Observation",
      display: "FVC post (L)",
    },
  ],
};

/** FEV1/FVC post z-score, derived from FEV1/FVC post ratio. */
export const FEV1_POST_over_FVC_POST_zscore: FHIR.Observation = {
  resourceType: "Observation",
  id: "FEV1-POST-over-FVC-POST-zscore",
  status: "final",
  code: {
    coding: [
      {
        // TODO: code for FEV1/FVC post z-score
      }
    ],
    text: "FEV1/FVC post (z-score)",
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
    value: -3.35,
    unit: "",   // TODO: z-score
    system: "", // TODO
    code: "",
  },
  derivedFrom: [
    {
      id: "FEV1-POST-over-FVC-POST",
      type: "Observation",
      display: "FEV1/FVC post",
    },
  ],
};