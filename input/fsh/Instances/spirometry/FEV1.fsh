/* FEV1 Instances */

/*
 * Pre-bronchodilator
 */
Instance: FEV1_PRE
InstanceOf: ForcedExpiratoryVolume1SecPreBronchodilator
Usage: #example
Title: "FEV1 PRE"
Description: """An example ForcedExpiratoryVolume1SecPreBronchodilator resource."""
* id = "FEV1-PRE"
* status = #final
* code = $LNC#20157-4 "FEV1 --pre bronchodilation"
* valueQuantity = 2.02 'L' "L"
* referenceRange
  * low = 2.91 'L' "L"
  * type
    * text = "FEV1 normal bounds"

Instance: FEV1_PRE_Zscore
InstanceOf: ForcedExpiratoryVolume1SecPreBronchodilator_Zscore
Usage: #example
Title: "FEV1 PRE Zscore"
Description: """An example ForcedExpiratoryVolume1SecPreBronchodilator_Zscore resource."""
* id = "FEV1-PRE-Zscore"
* status = #final
* code
  * text = "FEV1 (z-score) pre-bronchodilator"
* valueQuantity = -3.78 '{Zscore}' "Zscore"
* derivedFrom[+] = Reference(FEV1_PRE)

Instance: FEV1_PRE_percentPredicted
InstanceOf: ForcedExpiratoryVolume1SecPreBronchodilator_PercentOfPredicted
Usage: #example
Title: "FEV1 PRE % pred"
Description: """An example ForcedExpiratoryVolume1SecPreBronchodilator_PercentOfPredicted resource."""
* id = "FEV1-PRE-percentPredicted"
* status = #final
* code
  * coding = $LNC#20152-5 "FEV1 measured/predicted"
  * text = "FEV1 measured/predicted pre-bronchodilator"
* valueQuantity = 54 '%' "%"
* derivedFrom[+] = Reference(FEV1_PRE)

/*
 * Post-bronchodilator
 */
Instance: FEV1_POST
InstanceOf: ForcedExpiratoryVolume1SecPostbronchodilator
Usage: #example
Title: "FEV1 POST"
Description: """An example ForcedExpiratoryVolume1SecPostbronchodilator resource."""
* id = "FEV1-POST"
* status = #final
* valueQuantity = 2.02 'L' "L"
* referenceRange
  * low = 2.61 'L' "L"
  * type
    * text = "FEV1 normal bounds"

Instance: FEV1_POST_Zscore
InstanceOf: ForcedExpiratoryVolume1SecPostbronchodilator_Zscore
Usage: #example
Title: "FEV1 POST Zscore"
Description: """An example ForcedExpiratoryVolume1SecPostbronchodilator_Zscore resource."""
* id = "FEV1-POST-Zscore"
* status = #final
* code
  * text = "FEV1 (z-score) post-bronchodilator"
* valueQuantity = -2.21 '{Zscore}' "Zscore"
* derivedFrom[+] = Reference(FEV1_POST)

Instance: FEV1_POST_percentPredicted
InstanceOf: ForcedExpiratoryVolume1SecPostbronchodilator_PercentOfPredicted
Usage: #example
Title: "FEV1 POST % pred"
Description: """An example ForcedExpForcedExpiratoryVolume1SecPostbronchodilator_PercentOfPredictediratoryVolume1SecPreBronchodilator_PercentOfPredicted resource."""
* id = "FEV1-POST-percentPRedicted"
* status = #final
* code
  * coding = $LNC#20152-5 "FEV1 measured/predicted"
  * text = "FEV1 measured/predicted post-bronchodilator"
* valueQuantity = 70 '%' "%"
* derivedFrom[+] = Reference(FEV1_POST)

Instance: FEV1_POST_mLChange
InstanceOf: ForcedExpiratoryVolume1SecPostbronchodilator_mLChange
Usage: #example
Title: "FEV1 POST mLChange"
Description: """An example ForcedExpiratoryVolume1SecPostbronchodilator_mLChange resource."""
* id = "FEV1-POST-mLChange"
* status = #final
* code
  * text = "FEV1 volume change"
* valueQuantity = 590 'mL' "mL"
* derivedFrom[+] = Reference(FEV1_PRE)
* derivedFrom[+] = Reference(FEV1_POST)

Instance: FEV1_POST_percentChange
InstanceOf: ForcedExpiratoryVolume1SecPostbronchodilator_PercentChange
Usage: #example
Title: "FEV1 POST % change"
Description: """An example ForcedExpiratoryVolume1SecPostbronchodilator_PercentChange resource."""
* id = "FEV1-POST-percentChange"
* status = #final
* code
  * text = "FEV1 percent change"
* valueQuantity = 29 '%' "%"
* derivedFrom[+] = Reference(FEV1_PRE)
* derivedFrom[+] = Reference(FEV1_POST)