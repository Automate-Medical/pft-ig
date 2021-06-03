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
      id: "ob-01",
      type: "Observation",
      display: "FVC pre (L)",
    },
    {
      id: "ob-01-zscore",
      type: "Observation",
      display: "FVC pre (z-score)",
    },
    {
      id: "ob-01-pred",
      type: "Observation",
      display: "FVC pre (% pred)",
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