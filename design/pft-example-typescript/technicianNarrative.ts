/** @fileoverview FHIR Narrative Resource for including technician comments. */

import FHIR from '@automate-medical/fhir-schema-types';


/** Narrative for the technician's comment on the PFT Observations. */
export const technicianNarrative: FHIR.Narrative = {
  status: "additional",
  // TODO: `Narrative.div` has `type xhtml = undefined`, not `string`.
  div: "<div><b>TECHNICIAN COMMENTS</b>: No medications given in past 24 hr. 400 mcg albuterol given for reversibility testing.</div>"
}