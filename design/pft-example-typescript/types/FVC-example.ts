import FHIR from '@automate-medical/fhir-schema-types';

// Idea: Maybe extend Resource types to enforce proper coding,
// or even proper valueQuantity or referenceRange units/system/code.

interface FVC_PRE_L extends FHIR.Observation {
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
}

interface FVC_PRE_pred extends FHIR.Observation {
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
}