/* FEV1/FVC Instances */

/*
 * Pre/post bronchodilator not specified
 */
Instance: FEV1_over_FVC
InstanceOf: FEV1_over_FVC
Usage: #example
Title: "FEV1/FVC pre/post unspecified"
Description: """An example FEV1_over_FVC resource."""
* id = "FEV1-over-FVC"
* status = #final
* code = $LNC#19926-5 "FEV1/FVC"
* valueQuantity = 0.52 '{Number}' "Number"
* referenceRange
  * low = 0.68 '{Number}' "Number"
  * type
    * text = "FEV1/FVC normal bounds"
* derivedFrom[+] = Reference(FEV1)
* derivedFrom[+] = Reference(FVC)

Instance: FEV1_over_FVC_Zscore
InstanceOf: FEV1_over_FVC_Zscore
Usage: #example
Title: "FEV1/FVC pre/post unspecified Zscore"
Description: """An example FEV1_over_FVC_Zscore resource."""
* id = "FEV1-over-FVC-Zscore"
* status = #final
* code
  * text = "FEV1/FVC (z-score)"
* valueQuantity = -3.54 '{Zscore}' "Zscore"
* derivedFrom[+] = Reference(FEV1_over_FVC)


/*
 * Pre-bronchodilator
 */
Instance: FEV1_over_FVC_PRE
InstanceOf: FEV1_over_FVC_PreBronchodilator
Usage: #example
Title: "FEV1/FVC PRE"
Description: """An example FEV1_over_FVC_PreBronchodilator resource."""
* id = "FEV1-over-FVC-PRE"
* status = #final
* code
  * coding = $LNC#19926-5 "FEV1/FVC"
  * text = "FEV1/FVC pre-bronchodilator"
* valueQuantity = 0.52 '{Number}' "Number"
* referenceRange
  * low = 0.68 '{Number}' "Number"
  * type
    * text = "FEV1/FVC normal bounds"
* derivedFrom[+] = Reference(FEV1_PRE)
* derivedFrom[+] = Reference(FVC_PRE)

Instance: FEV1_over_FVC_PRE_Zscore
InstanceOf: FEV1_over_FVC_PreBronchodilator_Zscore
Usage: #example
Title: "FEV1/FVC PRE Zscore"
Description: """An example FEV1_over_FVC_PreBronchodilator_Zscore resource."""
* id = "FEV1-over-FVC-PRE-Zscore"
* status = #final
* code
  * text = "FEV1/FVC (z-score) pre-bronchodilator"
* valueQuantity = -3.54 '{Zscore}' "Zscore"
* derivedFrom[+] = Reference(FEV1_over_FVC_PRE)

/*
 * Post-bronchodilator
 */
Instance: FEV1_over_FVC_POST
InstanceOf: FEV1_over_FVC_PostBronchodilator
Usage: #example
Title: "FEV1/FVC POST"
Description: """An example FEV1_over_FVC_PostBronchodilator resource."""
* id = "FEV1-over-FVC-POST"
* status = #final
* code
  * coding = $LNC#19926-5 "FEV1/FVC"
  * text = "FEV1/FVC post-bronchodilator"
* valueQuantity = 0.55 '{Number}' "Number"
* referenceRange
  * low = 0.68 '{Number}' "Number"
  * type
    * text = "FEV1/FVC normal bounds"
* derivedFrom[+] = Reference(FEV1_POST)
* derivedFrom[+] = Reference(FVC_POST)

Instance: FEV1_over_FVC_POST_Zscore
InstanceOf: FEV1_over_FVC_PostBronchodilator_Zscore
Usage: #example
Title: "FEV1/FVC POST Zscore"
Description: """An example FEV1_over_FVC_PostBronchodilator_Zscore resource."""
* id = "FEV1-over-FVC-POST-Zscore"
* status = #final
* code
  * text = "FEV1/FVC (z-score) post-bronchodilator"
* valueQuantity = -3.35 '{Zscore}' "Zscore"
* derivedFrom[+] = Reference(FEV1_over_FVC_POST)
