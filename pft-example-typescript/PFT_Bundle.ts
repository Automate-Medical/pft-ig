/** @fileoverview Example of a PFT using '@automate-medical/fhir-schema-types'. */

import FHIR from '@automate-medical/fhir-schema-types';
import { PFT_DiagnosticReport } from './PFT_DiagnosticReport';
import { FVC_PRE_L, FVC_PRE_pred, FVC_PRE_zscore } from './FVC_pre';

/** TypeScript implementation of the PFT JSON example. */
const PFT_Bundle: FHIR.Bundle = {
  resourceType: "Bundle",
  id: "1",
  type: "collection",
  entry: [
    PFT_DiagnosticReport,
    FVC_PRE_L,
    FVC_PRE_zscore,
    FVC_PRE_pred,
  ]
};