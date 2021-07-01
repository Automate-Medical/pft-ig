/* Alveolar Volume (VA) Instances */


Instance: VA
InstanceOf: AlveolarVolume
Usage: #example
Title: "VA (L)"
Description: """An example AlveolarVolume resource."""
* id = "VA"
* status = #final
// Note we do not need to define code here.
// SUSHI adds the specified CodeableConcept when compiling FSH to JSON.
* valueQuantity = 5.83 'L' "L"
* referenceRange
  * low = 5.75 'L' "L"
  * type
    * text = "VA normal bounds"

Instance: VA_Zscore
InstanceOf: AlveolarVolume_Zscore
Usage: #example
Title: "VA_Zscore"
Description: """An example AlveolarVolume_Zscore resource."""
* id = "VA-Zscore"
* status = #final
* code
  * text = "Alveolar volume (z-score)"
* valueQuantity = -1.55 '{Zscore}' "Zscore"
* derivedFrom[+] = Reference(VA)

Instance: VA_PercentOfPredicted
InstanceOf: AlveolarVolume_PercentOfPredicted
Usage: #example
Title: "VA_PercentOfPredicted"
Description: """An example AlveolarVolume_PercentOfPredicted resource."""
* id = "VA-percentPredicted"
* status = #final
* code
  * text = "Alveolar volume measured/predicted"
* valueQuantity = 82 '%' "%"
* derivedFrom = Reference(VA)