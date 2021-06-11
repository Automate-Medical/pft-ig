/*
 * PFT Composition
 */
Instance: PFT_Composition
InstanceOf: Composition
Title: "PFT Composition"
Usage: #example
* id = "pft-composition"
* status = #preliminary
* type = $LNC#81458-2 "Pulmonary function test panel" // TODO: Incorrect code for full document
* subject = Reference(patient)
* encounter = Reference(encounter)
* date = "2017-02-20"
* author = Reference(TODO_PLACEHOLDER)
* title = "PFT: test panel Observations and DiagnosticReport"
* custodian = Reference(organization)
* section[+]
  * title = "PFT Observations and Technician Comment"
  * code = $LNC#30954-2 "Relevant diagnostic tests/laboratory data Narrative"
  * section[+]
    * title = "Technician Comment"
    * text
      * status = #additional
      * div = "<div>TECHNICIAN COMMMENTS: No medications in past 24 hr. 400 mcg albuterol given for reversibility testing.</div>"
  * section[+]
    * title = "Spirometry"
    * code
      * coding[+] = $LNC#81459-0 "Spirometry panel"
      * coding[+] = $LNC#81458-2 "Pulmonary function test panel" // TODO: Maybe we omit this since spirometry code is a child of it
    * text
      * status = #additional
      * div = "<div>Reference values: GLI 2012 Test quality: Pre: FEV 1 - A, FVC - A; Post: FEV 1 - A, FVC - B</div>"
    * entry[+] = Reference(FVC_PRE)
    * entry[+] = Reference(FVC_PRE_zScore)
    * entry[+] = Reference(FVC_PRE_percentPredicted)
    * entry[+] = Reference(FVC_POST)
    * entry[+] = Reference(FVC_POST_zScore)
    * entry[+] = Reference(FVC_POST_percentPredicted)
    * entry[+] = Reference(FVC_POST_mLChange)
    * entry[+] = Reference(FVC_POST_percentChange)
  // TODO: The following panels don't have specific LOINC codes, but some have SNOMED codes
  // TODO: The following panels don't have Instances of Observations (probably only Diffusing Capacity will)
  * section[+]
    * title = "Slow Vital Capacity (Pre-Bronchodilator)"
    * code = $LNC#81458-2 "Pulmonary function test panel"
    * text
      * status = #additional
      * div = "<div>Reference values: VC - Gutierrez 2004; FEV 1 /VC – GLI 2012</div>"
  * section[+]
    * title = "Multi-Breath Nitrogen Washout (Post-Bronchodilator)"
    * code = $LNC#81458-2 "Pulmonary function test panel"
    * text
      * status = #additional
      * div = "<div>Reference values: Gutierrez 2004; Test quality: QA met</div>"
  * section[+]
    * title = "Plethysmography (Post-Bronchodilator)"
    * code = $SCT#20552003 "Plethysmography (procedure)"
    * text
      * status = #additional
      * div = "<div>Reference values: Gutierrez 2004; Test quality: QA met</div>"
  * section[+]
    * title = "Diffusing Capacity (Post-Bronchodilator)"
    * code = $LNC#81458-2 "Pulmonary function test panel"
    * text
      * status = #additional
      * div = "<div>Reference values: GLI 2017; Test quality: one grade A test; P B : 721 mmHg</div>"
    // * entry[+] = Reference(PLACEHOLDER_gasConcentrationChart)
* section[+]
  * title = "Pulmonologist interpretation of PFT and diagnosis"
  * code = $LNC#59769-0 "Postprocedure diagnosis Narrative"
  * entry[+] = Reference(PFT_DiagnosticReport)