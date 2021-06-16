/* Profile for a PFT DiagnosticReport with referenced Observations. */

Profile:     PFT_DiagnosticReport
Parent:      DiagnosticReport
Id:          PFT-DiagnosticReport
Title:       "PFT DiagnosticReport"
Description: "Diagnostic report for a pulmonary function test."
* category = http://hl7.org/fhir/ValueSet/diagnostic-service-sections|4.0.1#PF "Pulmonary Function"
* code = $LNC#81458-2 "Pulmonary function test panel"
* result ^slicing.discriminator.type = #profile
* result ^slicing.discriminator.path = "reference"
* result ^slicing.rules = #open
* result contains
  SPO2_RESTING 0..1 and
  ForcedVitalCapacity 0..1 and
  ForcedVitalCapacity_Zscore 0..1 and
  ForcedVitalCapacity_percentPredicted 0..1 and
  ForcedVitalCapacity_PreBronchodilator 0..1 and
  ForcedVitalCapacity_PreBronchodilator_Zscore 0..1 and
  ForcedVitalCapacity_PreBronchodilator_percentPredicted 0..1 and
  ForcedVitalCapacity_PostBronchodilator 0..1 and
  ForcedVitalCapacity_PostBronchodilator_Zscore 0..1 and
  ForcedVitalCapacity_PostBronchodilator_percentPredicted 0..1 and
  ForcedVitalCapacity_PostBronchodilator_mLChange 0..1 and
  ForcedVitalCapacity_PostBronchodilator_percentChange 0..1 and
  ForcedExpiratoryVolume_1s 0..1 and
  ForcedExpiratoryVolume_1s_Zscore 0..1 and
  ForcedExpiratoryVolume_1s_percentPredicted 0..1 and
  ForcedExpiratoryVolume_1s_PreBronchodilator 0..1 and
  ForcedExpiratoryVolume_1s_PreBronchodilator_Zscore 0..1 and
  ForcedExpiratoryVolume_1s_PreBronchodilator_percentPredicted 0..1 and
  ForcedExpiratoryVolume_1s_PostBronchodilator 0..1 and
  ForcedExpiratoryVolume_1s_PostBronchodilator_Zscore 0..1 and
  ForcedExpiratoryVolume_1s_PostBronchodilator_percentPredicted 0..1 and
  FEV1_over_FVC 0..1 and
  FEV1_over_FVC_Zscore 0..1 and
  FEV1_over_FVC_PreBronchodilator 0..1 and
  FEV1_over_FVC_PreBronchodilator_Zscore 0..1 and
  FEV1_over_FVC_PostBronchodilator 0..1 and
  FEV1_over_FVC_PostBronchodilator_Zscore 0..1 and
  ForcedExpiratoryTime 0..1 and
  ForcedExpiratoryTime_PreBronchodilator 0..1 and
  ForcedExpiratoryTime_PostBronchodilator 0..1
* result[SPO2_RESTING] only Reference(SPO2_RESTING)
* result[ForcedVitalCapacity] only Reference(ForcedVitalCapacity)
* result[ForcedVitalCapacity_Zscore] only Reference(ForcedVitalCapacity_Zscore)
* result[ForcedVitalCapacity_percentPredicted] only Reference(ForcedVitalCapacity_percentPredicted)
* result[ForcedVitalCapacity_PreBronchodilator] only Reference(ForcedVitalCapacity_PreBronchodilator)
* result[ForcedVitalCapacity_PreBronchodilator] only Reference(ForcedVitalCapacity_PreBronchodilator)
* result[ForcedVitalCapacity_PreBronchodilator_Zscore] only Reference(ForcedVitalCapacity_PreBronchodilator_Zscore)
* result[ForcedVitalCapacity_PreBronchodilator_percentPredicted] only Reference(ForcedVitalCapacity_PreBronchodilator_percentPredicted)
* result[ForcedVitalCapacity_PostBronchodilator] only Reference(ForcedVitalCapacity_PostBronchodilator)
* result[ForcedVitalCapacity_PostBronchodilator_Zscore] only Reference(ForcedVitalCapacity_PostBronchodilator_Zscore)
* result[ForcedVitalCapacity_PostBronchodilator_percentPredicted] only Reference(ForcedVitalCapacity_PostBronchodilator_percentPredicted)
* result[ForcedVitalCapacity_PostBronchodilator_mLChange] only Reference(ForcedVitalCapacity_PostBronchodilator_mLChange)
* result[ForcedVitalCapacity_PostBronchodilator_percentChange] only Reference(ForcedVitalCapacity_PostBronchodilator_percentChange)
* result[ForcedExpiratoryVolume_1s] only Reference(ForcedExpiratoryVolume_1s)
* result[ForcedExpiratoryVolume_1s_Zscore] only Reference(ForcedExpiratoryVolume_1s_Zscore)
* result[ForcedExpiratoryVolume_1s_percentPredicted] only Reference(ForcedExpiratoryVolume_1s_percentPredicted)
* result[ForcedExpiratoryVolume_1s_PreBronchodilator] only Reference(ForcedExpiratoryVolume_1s_PreBronchodilator)
* result[ForcedExpiratoryVolume_1s_PreBronchodilator_Zscore] only Reference(ForcedExpiratoryVolume_1s_PreBronchodilator_Zscore)
* result[ForcedExpiratoryVolume_1s_PreBronchodilator_percentPredicted] only Reference(ForcedExpiratoryVolume_1s_PreBronchodilator_percentPredicted)
* result[ForcedExpiratoryVolume_1s_PostBronchodilator] only Reference(ForcedExpiratoryVolume_1s_PostBronchodilator)
* result[ForcedExpiratoryVolume_1s_PostBronchodilator_Zscore] only Reference(ForcedExpiratoryVolume_1s_PostBronchodilator_Zscore)
* result[ForcedExpiratoryVolume_1s_PostBronchodilator_percentPredicted] only Reference(ForcedExpiratoryVolume_1s_PostBronchodilator_percentPredicted)
* result[FEV1_over_FVC] only Reference(FEV1_over_FVC)
* result[FEV1_over_FVC_Zscore] only Reference(FEV1_over_FVC_Zscore)
* result[FEV1_over_FVC_PreBronchodilator] only Reference(FEV1_over_FVC_PreBronchodilator)
* result[FEV1_over_FVC_PreBronchodilator_Zscore] only Reference(FEV1_over_FVC_PreBronchodilator_Zscore)
* result[FEV1_over_FVC_PostBronchodilator] only Reference(FEV1_over_FVC_PostBronchodilator)
* result[FEV1_over_FVC_PostBronchodilator_Zscore] only Reference(FEV1_over_FVC_PostBronchodilator_Zscore)
* result[ForcedExpiratoryTime] only Reference(ForcedExpiratoryTime)
* result[ForcedExpiratoryTime_PreBronchodilator] only Reference(ForcedExpiratoryTime_PreBronchodilator)
* result[ForcedExpiratoryTime_PostBronchodilator] only Reference(ForcedExpiratoryTime_PostBronchodilator)