/*
 * PFT DiagnosticReport
 */
Instance: PFT_DiagnosticReport
InstanceOf: DiagnosticReport
Title: "PFT DiagnosticReport"
Usage: #example
* id = "diagnostic-report"
* status = #final
* category = http://hl7.org/fhir/ValueSet/diagnostic-service-sections|4.0.1#PF "Pulmonary Function"
* code = $LNC#81458-2 "Pulmonary function test panel"
* subject = Reference(PFT_Patient)
* encounter = Reference(PFT_Encounter)
* performer[+] = Reference(PFT_Technician)
* performer[+] = Reference(PFT_Organization)
* resultsInterpreter = Reference(PFT_Pulmonologist)
* effectiveDateTime = "2017-02-24"
* result[+] = Reference(FVC_PRE)
* result[+] = Reference(FVC_PRE_zScore)
* result[+] = Reference(FVC_PRE_percentPredicted)
* result[+] = Reference(FVC_POST)
* result[+] = Reference(FVC_POST_zScore)
* result[+] = Reference(FVC_POST_percentPredicted)
* result[+] = Reference(FVC_POST_mLChange)
* result[+] = Reference(FVC_POST_percentChange)
* conclusion = "Moderately severe, partially reversible airflow obstruction."
* presentedForm
  * contentType = #application/pdf
  * language = #en-US
  * title = "Sample Pulmonary Function Test"
  * url = "https://www.atsjournals.org/doi/10.1164/rccm.201710-1981ST"