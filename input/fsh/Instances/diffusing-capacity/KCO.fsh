/* KCO Instances. Note the example PFT only includes KCO POST and derived observations. */

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