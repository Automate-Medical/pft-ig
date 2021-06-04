/** @fileoverview Example of a PFT using '@automate-medical/fhir-schema-types'. */

import FHIR from '@automate-medical/fhir-schema-types';
import { PFT_DiagnosticReport } from './PFT_DiagnosticReport';
import { FVC_PRE_L, FVC_PRE_pred, FVC_PRE_zscore } from './FVC_pre';
import { FVC_POST_L, FVC_POST_pred, FVC_POST_zscore, FVC_POST_change_ml, FVC_POST_change_percent } from './FVC_post';

/** TypeScript implementation of the PFT JSON example.
 *
 * Each element of `PFT_Bundle.entry` is an object with a FHIR Resource type.
 */
const PFT_Bundle: FHIR.Bundle = {
  resourceType: "Bundle",
  id: "1",
  type: "collection",
  entry: [
    // Spacing here is purely for readability.
    PFT_DiagnosticReport,

    FVC_PRE_L,
    FVC_PRE_zscore,
    FVC_PRE_pred,

    FVC_POST_L,
    FVC_POST_pred,
    FVC_POST_zscore,
    FVC_POST_change_ml,
    FVC_POST_change_percent,

  ],
};