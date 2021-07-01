/*
 * PFT DiagnosticReport
 */
Instance: PFT_DiagnosticReport
InstanceOf: PulmonaryFunctionTestDiagnosticReport
Title: "PFT DiagnosticReport"
Description: "An example of how a DiagnosticReport for a PFT may be constructed."
Usage: #example
* id = "diagnostic-report"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/v2-0074#PF "Pulmonary Function"
* code = $LNC#81458-2 "Pulmonary function test panel"
* subject = Reference(PFT_Patient)
* encounter = Reference(PFT_Encounter)
* performer[+] = Reference(PFT_Technician)
* performer[+] = Reference(PFT_Organization)
* resultsInterpreter = Reference(PFT_Pulmonologist)
* effectiveDateTime = "2017-02-24"
/* FVC */
* result[+] = Reference(FVC_PRE)
* result[+] = Reference(FVC_PRE_zScore)
* result[+] = Reference(FVC_PRE_percentPredicted)
* result[+] = Reference(FVC_POST)
* result[+] = Reference(FVC_POST_zScore)
* result[+] = Reference(FVC_POST_percentPredicted)
* result[+] = Reference(FVC_POST_mLChange)
* result[+] = Reference(FVC_POST_percentChange)
/* FEV1 */
* result[+] = Reference(FEV1_PRE)
* result[+] = Reference(FEV1_PRE_Zscore)
* result[+] = Reference(FEV1_PRE_percentPredicted)
* result[+] = Reference(FEV1_POST)
* result[+] = Reference(FEV1_POST_Zscore)
* result[+] = Reference(FEV1_POST_percentPredicted)
* result[+] = Reference(FEV1_POST_mLChange)
* result[+] = Reference(FEV1_POST_percentChange)
/* FEV1/FVC */
* result[+] = Reference(FEV1_over_FVC_PRE)
* result[+] = Reference(FEV1_over_FVC_PRE_Zscore)
* result[+] = Reference(FEV1_over_FVC_POST)
* result[+] = Reference(FEV1_over_FVC_POST_Zscore)
/* FET */
* result[+] = Reference(FET_PRE)
* result[+] = Reference(FET_POST)
/* DLCO */
* result[+] = Reference(DLCO)
* result[+] = Reference(DLCO_atStandardPB)
* result[+] = Reference(DLCO_atStandardPB_Zscore)
* result[+] = Reference(DLCO_atStandardPB_percentPredicted)
/* VA */
* result[+] = Reference(VA)
* result[+] = Reference(VA_Zscore)
* result[+] = Reference(VA_PercentOfPredicted)
/* TLCsb */
* result[+] = Reference(TLCsb)
/* VI/VC */
* result[+] = Reference(VI_over_VC)
/* KCO */
* result[+] = Reference(KCO_POST)
* result[+] = Reference(KCO_POST_Zscore)
* result[+] = Reference(KCO_POST_percentPredicted)
* conclusion = "Moderately severe, partially reversible airflow obstruction."
* presentedForm
  * contentType = #application/pdf
  * language = #en-US
  * title = "Sample Pulmonary Function Test"
  * url = "https://www.atsjournals.org/doi/10.1164/rccm.201710-1981ST"