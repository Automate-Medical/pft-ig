/*
 * PFT Bundle
 */
Instance: PFT_Bundle
InstanceOf: Bundle
Title: "PFT Bundle"
Usage: #example
* id = "pft-bundle"
* type = #collection
* entry[+].resource = PFT_Composition
* entry[+].resource = PFT_DiagnosticReport
* entry[+].resource = FVC_PRE
* entry[+].resource = FVC_PRE_zScore
* entry[+].resource = FVC_PRE_percentPredicted
* entry[+].resource = FVC_POST
* entry[+].resource = FVC_POST_zScore
* entry[+].resource = FVC_POST_percentPredicted
* entry[+].resource = FVC_POST_mLChange
* entry[+].resource = FVC_POST_percentChange
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