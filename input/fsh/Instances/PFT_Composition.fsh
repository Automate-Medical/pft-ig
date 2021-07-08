/*
 * PFT Composition
 */
Instance: PFT_Composition
InstanceOf: Composition
Title: "PFT Composition"
Description: "An example of how a Composition may be used to create a coherent human-readable document for a PFT, including Observations, the technician's comments, and the pulmonologist's interpretation."
Usage: #example
* id = "pft-composition"
* status = #preliminary
* type = $LNC#81458-2 "Pulmonary function test panel" // TODO: Incorrect code for full document
* category = $LNC#27896-0 "Pulmonary studies (set)"
// subject, encounter, and custodian are commented out because they are beyond
// our current scope and have cardinality 0..1.
// * subject = Reference(PFT_Patient)
// * encounter = Reference(PFT_Encounter)
* date = "2017-02-20"
* author = Reference(PFT_Pulmonologist)
* title = "PFT: test panel Observations and DiagnosticReport"
// * custodian = Reference(PFT_Organization)

/* PFT results */
* section[+]
  * title = "PFT Observations and Technician Comment"
  * code = $LNC#30954-2 "Relevant diagnostic tests/laboratory data Narrative"
  * text
    * status = #additional
    * div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">TECHNICIAN COMMMENTS: No medications in past 24 hr. 400 mcg albuterol given for reversibility testing.</div>"

  * entry[+] = Reference(SPO2_RESTING) // TODO: Don't know where else to put this.

  /* PFT panel: Spirometry */
  * section[+]
    * title = "Spirometry"
    * code
      * coding[+] = $LNC#81459-0 "Spirometry panel"
      * coding[+] = $LNC#81458-2 "Pulmonary function test panel" // TODO: Maybe we omit this since spirometry code is a child of it
    * text
      * status = #additional
      * div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Reference values: GLI 2012 Test quality: Pre: FEV1 - A, FVC - A; Post: FEV1 - A, FVC - B</div>"
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
  /* PFT panel: Slow Vital Capacity */
  * section[+]
    * title = "Slow Vital Capacity (Pre-Bronchodilator)"
    * code = $LNC#81458-2 "Pulmonary function test panel"
    * text
      * status = #additional
      * div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Reference values: VC - Gutierrez 2004; FEV1/VC - GLI 2012</div>"

  /* PFT panel: Nitrogen Washout */
  * section[+]
    * title = "Multi-Breath Nitrogen Washout (Post-Bronchodilator)"
    * code = $LNC#81458-2 "Pulmonary function test panel"
    * text
      * status = #additional
      * div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Reference values: Gutierrez 2004; Test quality: QA met</div>"

  /* PFT panel: Plethysmography */
  * section[+]
    * title = "Plethysmography (Post-Bronchodilator)"
    * code = $SCT#20552003 "Plethysmography (procedure)"
    * text
      * status = #additional
      * div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Reference values: Gutierrez 2004; Test quality: QA met</div>"

  /* PFT panel: Diffusing Capacity */
  * section[+]
    * title = "Diffusing Capacity (Post-Bronchodilator)"
    * code = $LNC#81458-2 "Pulmonary function test panel"
    * text
      * status = #additional
      * div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Reference values: GLI 2017; Test quality: one grade A test; P_B: 721 mmHg</div>"
    // * entry[+] = Reference(PLACEHOLDER_gasConcentrationChart)

/* DiagnosticReport */
* section[+]
  * title = "Pulmonologist interpretation of PFT and diagnosis"
  * code = $LNC#59769-0 "Postprocedure diagnosis Narrative"
  * entry[+] = Reference(PFT_DiagnosticReport)
