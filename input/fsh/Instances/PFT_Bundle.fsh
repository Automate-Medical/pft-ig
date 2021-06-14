// NOTE: It's a bit confusing to have line breaks inside the Instance definition.

/*
 * PFT Bundle. This includes all relevant Resources for the PFT.
 * Can be thought of as the "entry point".
 */
Instance: PFT_Bundle
InstanceOf: Bundle
Title: "PFT Bundle"
Usage: #example
* id = "pft-bundle"
* type = #collection

/* The following are all Resources included in the Bundle. */

/* The Composition can be thought of as the "primary" Resource. It's what gives
 * context and logical structure for the rest of the Resources, and what defines
 * the PFT as a "clinical document". */
* entry[+].resource = PFT_Composition

/* Non-Observation Resources referenced by the Composition.
 *
 * For a list of which Composition-associated Resources should be
 * included in the Bundle and which can be left to the author's
 * discretion, see: https://www.hl7.org/fhir/composition.html#bnr. */
* entry[+].resource = PFT_Patient
* entry[+].resource = PFT_Pulmonologist
* entry[+].resource = PFT_Technician
* entry[+].resource = PFT_Organization
* entry[+].resource = PFT_Encounter
* entry[+].resource = PFT_ServiceRequest
* entry[+].resource = PFT_DiagnosticReport

/* Observations referenced by the Composition or DiagnosticReport */
* entry[+].resource = SPO2_RESTING

* entry[+].resource = FVC_PRE
* entry[+].resource = FVC_PRE_zScore
* entry[+].resource = FVC_PRE_percentPredicted
* entry[+].resource = FVC_POST
* entry[+].resource = FVC_POST_zScore
* entry[+].resource = FVC_POST_percentPredicted
* entry[+].resource = FVC_POST_mLChange
* entry[+].resource = FVC_POST_percentChange

// TODO: Could have a script add entry Resources to this from a directory.
//
// If `PFT_Bundle.fsh` is in our input/fsh directory, then have a subdirectory
// containing all the entry Resources, and the script iterates through those
// and adds them all as part of the build process. This means we don't need to
// manually edit the Bundle whenever we add/remove an entry (and we could do the
// same for `PFT_DiagnosticReport`).