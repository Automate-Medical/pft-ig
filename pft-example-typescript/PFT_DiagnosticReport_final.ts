import FHIR from '@automate-medical/fhir-schema-types';

/** PFT implemented as Diagnostic Report with multiple Observations in result. */
export const PFT_DiagnosticReport: FHIR.DiagnosticReport = {
  resourceType: "DiagnosticReport",
  id: "report-01",
  status: "final",
  code: {
    coding: [
      {
        system: "http://loinc.org",
        code: "81458-2",
        display: "Pulmonary function test panel",
      }
    ],
    text: "Pulmonary Function Test"
  },
  subject: {
    id: "patient-01",
    type: "Patient",
  },
  encounter: {
    id: "encounter-01",
    type: "Encounter",
    display: "Example Patient Name",
  },
  effectiveDateTime: "2017-02-24",
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
  resultsInterpreter: [
    {
      id: "practitioner-01",
      type: "Practitioner",
      display: "Dr. P. Pulmonologist",
    },
  ],
  result: [
    {
      id: "FVC-PRE-L",
      type: "Observation",
      display: "FVC pre (L)",
    },
    {
      id: "FVC-PRE-zscore",
      type: "Observation",
      display: "FVC pre (z-score)",
    },
    {
      id: "FVC-PRE-pred",
      type: "Observation",
      display: "FVC pre (% pred)",
    },
    {
      id: "FVC-POST-L",
      type: "Observation",
      display: "FVC post (L)",
    },
    {
      id: "FVC-POST-zscore",
      type: "Observation",
      display: "FVC post (z-score)",
    },
    {
      id: "FVC-POST-pred",
      type: "Observation",
      display: "FVC post (% pred)",
    },
    {
      id: "FVC-POST-change-ml",
      type: "Observation",
      display: "FVC post change (mL)",
    },
    {
      id: "FVC-POST-change-percent",
      type: "Observation",
      display: "FVC post change (%)",
    },
    {
      id: "FEV1-PRE-L",
      type: "Observation",
      display: "FEV1 pre (L)",
    },
    {
      id: "FEV1-PRE-zscore",
      type: "Observation",
      display: "FEV1 pre (z-score)",
    },
    {
      id: "FEV1-PRE-pred",
      type: "Observation",
      display: "FEV1 pre (% pred)",
    },
    {
      id: "FEV1-POST-L",
      type: "Observation",
      display: "FEV1 post (L)",
    },
    {
      id: "FEV1-POST-zscore",
      type: "Observation",
      display: "FEV1 post (z-score)",
    },
    {
      id: "FEV1-POST-pred",
      type: "Observation",
      display: "FEV1 post (% pred)",
    },
    {
      id: "FEV1-POST-change-ml",
      type: "Observation",
      display: "FEV1 post change (mL)",
    },
    {
      id: "FEV1-POST-change-percent",
      type: "Observation",
      display: "FEV1 post change (%)",
    },
    {
      id: "FEV1-PRE-over-FVC-PRE",
      type: "Observation",
      display: "FEV1/FVC pre",
    },
    {
      id: "FEV1-PRE-over-FVC-PRE-zscore",
      type: "Observation",
      display: "FEV1/PVC pre (z-score)",
    },
    {
      id: "FEV1-POST-over-FVC-POST",
      type: "Observation",
      display: "FEV1/FVC post",
    },
    {
      id: "FEV1-POST-over-FVC-POST-zscore",
      type: "Observation",
      display: "FEV1/PVC post (z-score)",
    },
    {
      id: "FET-PRE-S",
      type: "Observation",
      display: "FET pre (s)",
    },
    {
      id: "FET-POST-S",
      type: "Observation",
      display: "FET post (s)",
    },
  ],
  conclusion: "Moderately severe, partially reversible airflow obstruction.",
  conclusionCode: [
    // TODO
   ],
   presentedForm: [
     {
       contentType: "application/pdf",
       language: "en-US",
       title: "Example PFT DiagnosticReport",
     }
   ],
};