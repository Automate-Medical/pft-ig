/* Profile for a PFT DiagnosticReport with referenced Observations. */

Profile:     PFT_DiagnosticReport
Parent:      DiagnosticReport
Id:          PulmonaryFunctionTestDiagnosticReport
Title:       "Pulmonary Function Test (PFT) Diagnostic Report"
Description: "Diagnostic report for a pulmonary function test."
* category = http://terminology.hl7.org/CodeSystem/v2-0074#PF "Pulmonary Function"
* code = $LNC#81458-2 "Pulmonary function test panel"
* result ^slicing.discriminator.type = #profile
* result ^slicing.discriminator.path = "reference"
* result ^slicing.rules = #open
* result contains
  SPO2AtRest 0..1 and
  ForcedVitalCapacity 0..1 and
  ForcedVitalCapacity_Zscore 0..1 and
  ForcedVitalCapacity_PercentOfPredicted 0..1 and
  ForcedVitalCapacityPreBronchodilator 0..1 and
  ForcedVitalCapacityPreBronchodilator_Zscore 0..1 and
  ForcedVitalCapacityPreBronchodilator_PercentOfPredicted 0..1 and
  ForcedVitalCapacityPostBronchodilator 0..1 and
  ForcedVitalCapacityPostBronchodilator_Zscore 0..1 and
  ForcedVitalCapacityPostBronchodilator_PercentOfPredicted 0..1 and
  ForcedVitalCapacityPostBronchodilator_mLChange 0..1 and
  ForcedVitalCapacityPostBronchodilator_PercentChange 0..1 and
  ForcedExpiratoryVolume1Sec 0..1 and
  ForcedExpiratoryVolume1Sec_Zscore 0..1 and
  ForcedExpiratoryVolume1Sec_PercentOfPredicted 0..1 and
  ForcedExpiratoryVolume1SecPreBronchodilator 0..1 and
  ForcedExpiratoryVolume1SecPreBronchodilator_Zscore 0..1 and
  ForcedExpiratoryVolume1SecPreBronchodilator_PercentOfPredicted 0..1 and
  ForcedExpiratoryVolume1SecPostbronchodilator 0..1 and
  ForcedExpiratoryVolume1SecPostbronchodilator_Zscore 0..1 and
  ForcedExpiratoryVolume1SecPostbronchodilator_PercentOfPredicted 0..1 and
  ForcedExpiratoryVolume1SecPostbronchodilator_mLChange 0..1 and
  ForcedExpiratoryVolume1SecPostbronchodilator_PercentChange 0..1 and
  FEV1_over_FVC 0..1 and
  FEV1_over_FVC_Zscore 0..1 and
  FEV1_over_FVC_PreBronchodilator 0..1 and
  FEV1_over_FVC_PreBronchodilator_Zscore 0..1 and
  FEV1_over_FVC_PostBronchodilator 0..1 and
  FEV1_over_FVC_PostBronchodilator_Zscore 0..1 and
  ForcedExpiratoryTime 0..1 and
  ForcedExpiratoryTimePreBronchodilator 0..1 and
  ForcedExpiratoryTimePostBronchodilator 0..1 and
  DLCO 0..1 and
  DLCOAtStandardBarometricPressure 0..1 and
  DLCOAtStandardBarometricPressure_Zscore 0..1 and
  DLCOAtStandardBarometricPressure_PercentOfPredicted 0..1 and
  DLCOAdjustedForHemoglobin 0..1 and
  DLCOAdjustedForHemoglobin_PercentOfPredicted 0..1 and
  AlveolarVolume 0..1 and
  AlveolarVolume_Zscore 0..1 and
  AlveolarVolume_PercentOfPredicted 0..1 and
  TotalLungCapacityByHeliumSingleBreath 0..1 and
  VI_over_VC 0..1 and
  KCO 0..1 and
  KCO_Zscore 0..1 and
  KCO_PercentOfPredicted 0..1 and
  KCOPreBronchodilator 0..1 and
  KCOPreBronchodilator_Zscore 0..1 and
  KCOPreBronchodilator_PercentOfPredicted 0..1 and
  KCOPostBronchodilator 0..1 and
  KCOPostBronchodilator_Zscore 0..1 and
  KCOPostBronchodilator_PercentOfPredicted 0..1
* result[SPO2AtRest] only Reference(SPO2AtRest)
* result[ForcedVitalCapacity] only Reference(ForcedVitalCapacity)
* result[ForcedVitalCapacity_Zscore] only Reference(ForcedVitalCapacity_Zscore)
* result[ForcedVitalCapacity_PercentOfPredicted] only Reference(ForcedVitalCapacity_PercentOfPredicted)
* result[ForcedVitalCapacityPreBronchodilator] only Reference(ForcedVitalCapacityPreBronchodilator)
* result[ForcedVitalCapacityPreBronchodilator_Zscore] only Reference(ForcedVitalCapacityPreBronchodilator_Zscore)
* result[ForcedVitalCapacityPreBronchodilator_PercentOfPredicted] only Reference(ForcedVitalCapacityPreBronchodilator_PercentOfPredicted)
* result[ForcedVitalCapacityPostBronchodilator] only Reference(ForcedVitalCapacityPostBronchodilator)
* result[ForcedVitalCapacityPostBronchodilator_Zscore] only Reference(ForcedVitalCapacityPostBronchodilator_Zscore)
* result[ForcedVitalCapacityPostBronchodilator_PercentOfPredicted] only Reference(ForcedVitalCapacityPostBronchodilator_PercentOfPredicted)
* result[ForcedVitalCapacityPostBronchodilator_mLChange] only Reference(ForcedVitalCapacityPostBronchodilator_mLChange)
* result[ForcedVitalCapacityPostBronchodilator_PercentChange] only Reference(ForcedVitalCapacityPostBronchodilator_PercentChange)
* result[ForcedExpiratoryVolume1Sec] only Reference(ForcedExpiratoryVolume1Sec)
* result[ForcedExpiratoryVolume1Sec_Zscore] only Reference(ForcedExpiratoryVolume1Sec_Zscore)
* result[ForcedExpiratoryVolume1Sec_PercentOfPredicted] only Reference(ForcedExpiratoryVolume1Sec_PercentOfPredicted)
* result[ForcedExpiratoryVolume1SecPreBronchodilator] only Reference(ForcedExpiratoryVolume1SecPreBronchodilator)
* result[ForcedExpiratoryVolume1SecPreBronchodilator_Zscore] only Reference(ForcedExpiratoryVolume1SecPreBronchodilator_Zscore)
* result[ForcedExpiratoryVolume1SecPreBronchodilator_PercentOfPredicted] only Reference(ForcedExpiratoryVolume1SecPreBronchodilator_PercentOfPredicted)
* result[ForcedExpiratoryVolume1SecPostbronchodilator] only Reference(ForcedExpiratoryVolume1SecPostbronchodilator)
* result[ForcedExpiratoryVolume1SecPostbronchodilator_Zscore] only Reference(ForcedExpiratoryVolume1SecPostbronchodilator_Zscore)
* result[ForcedExpiratoryVolume1SecPostbronchodilator_PercentOfPredicted] only Reference(ForcedExpiratoryVolume1SecPostbronchodilator_PercentOfPredicted)
* result[ForcedExpiratoryVolume1SecPostbronchodilator_mLChange] only Reference(ForcedExpiratoryVolume1SecPostbronchodilator_mLChange)
* result[ForcedExpiratoryVolume1SecPostbronchodilator_PercentChange] only Reference(ForcedExpiratoryVolume1SecPostbronchodilator_PercentChange)
* result[FEV1_over_FVC] only Reference(FEV1_over_FVC)
* result[FEV1_over_FVC_Zscore] only Reference(FEV1_over_FVC_Zscore)
* result[FEV1_over_FVC_PreBronchodilator] only Reference(FEV1_over_FVC_PreBronchodilator)
* result[FEV1_over_FVC_PreBronchodilator_Zscore] only Reference(FEV1_over_FVC_PreBronchodilator_Zscore)
* result[FEV1_over_FVC_PostBronchodilator] only Reference(FEV1_over_FVC_PostBronchodilator)
* result[FEV1_over_FVC_PostBronchodilator_Zscore] only Reference(FEV1_over_FVC_PostBronchodilator_Zscore)
* result[ForcedExpiratoryTime] only Reference(ForcedExpiratoryTime)
* result[ForcedExpiratoryTimePreBronchodilator] only Reference(ForcedExpiratoryTimePreBronchodilator)
* result[ForcedExpiratoryTimePostBronchodilator] only Reference(ForcedExpiratoryTimePostBronchodilator)
* result[DLCO] only Reference(DLCO)
* result[DLCOAtStandardBarometricPressure] only Reference(DLCOAtStandardBarometricPressure)
* result[DLCOAtStandardBarometricPressure_Zscore] only Reference(DLCOAtStandardBarometricPressure_Zscore)
* result[DLCOAtStandardBarometricPressure_PercentOfPredicted] only Reference(DLCOAtStandardBarometricPressure_PercentOfPredicted)
* result[DLCOAdjustedForHemoglobin] only Reference(DLCOAdjustedForHemoglobin)
* result[DLCOAdjustedForHemoglobin_PercentOfPredicted] only Reference(DLCOAdjustedForHemoglobin_PercentOfPredicted)
* result[AlveolarVolume] only Reference(AlveolarVolume)
* result[AlveolarVolume_Zscore] only Reference(AlveolarVolume_Zscore)
* result[AlveolarVolume_PercentOfPredicted] only Reference(AlveolarVolume_PercentOfPredicted)
* result[TotalLungCapacityByHeliumSingleBreath] only Reference(TotalLungCapacityByHeliumSingleBreath)
* result[VI_over_VC] only Reference(VI_over_VC)
* result[KCO] only Reference(KCO)
* result[KCO_Zscore] only Reference(KCO_Zscore)
* result[KCO_PercentOfPredicted] only Reference(KCO_PercentOfPredicted)
* result[KCOPreBronchodilator] only Reference(KCOPreBronchodilator)
* result[KCOPreBronchodilator_Zscore] only Reference(KCOPreBronchodilator_Zscore)
* result[KCOPreBronchodilator_PercentOfPredicted] only Reference(KCOPreBronchodilator_PercentOfPredicted)
* result[KCOPostBronchodilator] only Reference(KCOPostBronchodilator)
* result[KCOPostBronchodilator_Zscore] only Reference(KCOPostBronchodilator_Zscore)
* result[KCOPostBronchodilator_PercentOfPredicted] only Reference(KCOPostBronchodilator_PercentOfPredicted)