/* KCO Instances */

/*
 * Pre/post unspecified
 */
Instance: KCO
InstanceOf: KCO
Usage: #example
Title: "KCO pre/post unspecified"
Description: """An example KCO resource."""
* id = "KCO"
* status = #final
* code = $LNC#19916-6	"Diffusion capacity/Alveolar volume"
* valueQuantity = 2.23 'mL/min/mm[Hg]/L' "mL/min/mm[Hg]/L"
* referenceRange
  * low = 3.25 'mL/min/mm[Hg]/L' "mL/min/mm[Hg]/L"
  * type
    * coding = $ReferenceRangeMeaning#normal "Normal Range"
    * text = "KCO normal bounds"
// TODO: Don't think we can use these because they were used specifically for KCO_POST and may not apply here.
// * derivedFrom[+] = Reference(DLCO_atStandardPB)
// * derivedFrom[+] = Reference(VA)

Instance: KCO_Zscore
InstanceOf: KCO_Zscore
Usage: #example
Title: "KCO pre/post unspecified Zscore"
Description: """An example KCO_Zscore resource."""
* id = "KCO-Zscore"
* status = #final
* code
  * text = "Diffusion capacity/Alveolar volume (z-score)"
* valueQuantity = -3.47 '{Zscore}' "Zscore"
* derivedFrom[+] = Reference(KCO)

Instance: KCO_percentPredicted
InstanceOf: KCO_PercentOfPredicted
Usage: #example
Title: "KCO pre/post unspecified % pred"
Description: """An example KCO_PercentOfPredicted resource."""
* id = "KCO-percentPredicted"
* status = #final
* code
  * text = "Diffusion capacity/Alveolar volume (measured/predicted)"
* valueQuantity = 52 '%' "%"
* derivedFrom[+] = Reference(KCO)
/*
 * Pre-bronchodilator
 */
Instance: KCO_PRE
InstanceOf: KCOPreBronchodilator
Usage: #example
Title: "KCO PRE"
Description: """An example KCOPreBronchodilator resource."""
* id = "KCO-PRE"
* status = #final
* code = $LNC#82619-8   "Diffusion capacity/Alveolar volume --pre bronchodilation"
* valueQuantity = 2.23 'mL/min/mm[Hg]/L' "mL/min/mm[Hg]/L"
* referenceRange
  * low = 3.25 'mL/min/mm[Hg]/L' "mL/min/mm[Hg]/L"
  * type
    * coding = $ReferenceRangeMeaning#normal "Normal Range"
    * text = "KCO normal bounds"
// TODO: Don't think we can use these because they were used specifically for KCO_POST and may not apply here.
// * derivedFrom[+] = Reference(DLCO_atStandardPB)
// * derivedFrom[+] = Reference(VA)

Instance: KCO_PRE_Zscore
InstanceOf: KCOPreBronchodilator_Zscore
Usage: #example
Title: "KCO PRE Zscore"
Description: """An example KCOPreBronchodilator_Zscore resource."""
* id = "KCO-PRE-Zscore"
* status = #final
* code
  * text = "Diffusion capacity/Alveolar volume (z-score) pre-bronchodilator"
* valueQuantity = -3.47 '{Zscore}' "Zscore"
* derivedFrom[+] = Reference(KCO_PRE)

Instance: KCO_PRE_percentPredicted
InstanceOf: KCOPreBronchodilator_PercentOfPredicted
Usage: #example
Title: "KCO PRE % pred"
Description: """An example KCOPreBronchodilator_PercentOfPredicted resource."""
* id = "KCO-PRE-percentPredicted"
* status = #final
* code
  * text = "Diffusion capacity/Alveolar volume (measured/predicted) pre-bronchodilator"
* valueQuantity = 52 '%' "%"
* derivedFrom[+] = Reference(KCO_PRE)

/*
 * Post-bronchodilator
 */
Instance: KCO_POST
InstanceOf: KCOPostBronchodilator
Usage: #example
Title: "KCO POST"
Description: """An example KCOPostBronchodilator resource."""
* id = "KCO-POST"
* status = #final
* code = $LNC#82620-6	"Diffusion capacity/Alveolar volume --post bronchodilation"
* valueQuantity = 2.23 'mL/min/mm[Hg]/L' "mL/min/mm[Hg]/L"
* referenceRange
  * low = 3.25 'mL/min/mm[Hg]/L' "mL/min/mm[Hg]/L"
  * type
    * coding = $ReferenceRangeMeaning#normal "Normal Range"
    * text = "KCO normal bounds"
* derivedFrom[+] = Reference(DLCO_atStandardPB)
* derivedFrom[+] = Reference(VA)

Instance: KCO_POST_Zscore
InstanceOf: KCOPostBronchodilator_Zscore
Usage: #example
Title: "KCO POST Zscore"
Description: """An example KCOPostBronchodilator_Zscore resource."""
* id = "KCO-POST-Zscore"
* status = #final
* code
  * text = "Diffusion capacity/Alveolar volume (z-score) post-bronchodilator"
* valueQuantity = -3.47 '{Zscore}' "Zscore"
* derivedFrom[+] = Reference(KCO_POST)

Instance: KCO_POST_percentPredicted
InstanceOf: KCOPostBronchodilator_PercentOfPredicted
Usage: #example
Title: "KCO POST % pred"
Description: """An example KCOPostBronchodilator_PercentOfPredicted resource."""
* id = "KCO-POST-percentPredicted"
* status = #final
* code
  * text = "Diffusion capacity/Alveolar volume (measured/predicted) post-bronchodilator"
* valueQuantity = 52 '%' "%"
* derivedFrom[+] = Reference(KCO_POST)