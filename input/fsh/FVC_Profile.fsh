// // TODO: Should we have a more general `PFT_Observation` which `FVC_Observation` inherits from?
// Profile:     FVC_Observation
// Parent:      Observation
// Id:          fvc-observation
// Title:       "FVC Observation"
// Description: "A measurement of Forced Vital Capacity."
// * code from FVC_ValueSet

// ValueSet:    FVC_ValueSet
// Title:       "FVC Value Set"
// Id:          fvc-value-set
// Description: "LOINC part codes for forced vital capacity."
// // TODO: I want this to select all LOINC codes which are children of "Forced vital capacity"
// //       but I'm not sure that's what it actually does.
// * codes from system $LNC where concept is-a $LNC#LP72220-4 "Forced vital capacity"

// // Profile:     PFT_DiagnosticReport
// // Parent:      DiagnosticReport
// // Id:          pft-diagnostic-report
// // Title:       "PFT DiagnosticReport"
// // Description: "Diagnostic report for a Pulmonary Function Test"