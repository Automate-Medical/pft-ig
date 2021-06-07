/** @fileoverview Example of a PFT using '@automate-medical/fhir-schema-types'. */

import FHIR from '@automate-medical/fhir-schema-types';
import { PFT_DiagnosticReport_final } from './PFT_DiagnosticReport_final';
import { FVC_PRE_L, FVC_PRE_pred, FVC_PRE_zscore } from './spirometry/FVC_pre';
import { FVC_POST_L, FVC_POST_pred, FVC_POST_zscore, FVC_POST_change_ml, FVC_POST_change_percent } from './spirometry/FVC_post';
import { FEV1_PRE_L, FEV1_PRE_pred, FEV1_PRE_zscore } from './spirometry/FEV1_pre';
import { FEV1_POST_L, FEV1_POST_zscore, FEV1_POST_pred, FEV1_POST_change_ml, FEV1_POST_change_percent } from './spirometry/FEV1_post';
import { FEV1_PRE_over_FVC_PRE, FEV1_PRE_over_FVC_PRE_zscore } from './spirometry/FEV1_pre_over_FVC_pre';
import { FEV1_POST_over_FVC_POST, FEV1_POST_over_FVC_POST_zscore } from './spirometry/FEV1_post_over_FVC_post';
import { FET_PRE_S } from './spirometry/FET_pre';
import { FET_POST_S } from './spirometry/FET_post';

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
    PFT_DiagnosticReport_final,

    FVC_PRE_L,
    FVC_PRE_zscore,
    FVC_PRE_pred,

    FVC_POST_L,
    FVC_POST_pred,
    FVC_POST_zscore,
    FVC_POST_change_ml,
    FVC_POST_change_percent,

    FEV1_PRE_L,
    FEV1_PRE_pred,
    FEV1_PRE_zscore,

    FEV1_POST_L,
    FEV1_POST_zscore,
    FEV1_POST_pred,
    FEV1_POST_change_ml,
    FEV1_POST_change_percent,

    FEV1_PRE_over_FVC_PRE,
    FEV1_PRE_over_FVC_PRE_zscore,

    FEV1_POST_over_FVC_POST,
    FEV1_POST_over_FVC_POST_zscore,

    FET_PRE_S,

    FET_POST_S,

    // TODO: Add diffusing-capacity Observations
  ],
};