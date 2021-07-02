/* Profiles for V_A (alveolar volume) Observations. */


Profile: AlveolarVolume
Parent: Observation
Id: AlveolarVolume
Title: "Alveolar Volume (VA)"
// TODO: Expand description to explain how alveolar volume is measured or calculated.
Description: """A measurement of alveolar volume (VA)."""
* code = $SCT#251953007 "Alveolar volume (observable entity)"
* value[x] only Quantity
* valueQuantity
  * unit = "L"
  * system = $UCUM
  * code = #L

Profile: AlveolarVolume_Zscore
Parent: Observation
Id: AlveolarVolume-Zscore
Title: "Alveolar Volume (VA) Zscore"
// TODO: Expand description to explain how alveolar volume is measured or calculated.
Description: """The z-score of an alveolar volume (VA) measurement.

The Zscore of a measured value is determined by comparing the measured value to some reference distribution based on the patient's demographic information. The Zscore is useful as an indicator of how abnormal the measured value is."""
* code
  * text = "Alveolar volume (z-score)"
* value[x] only Quantity
* valueQuantity
  * unit = "Zscore"
  * system = $UCUM
  * code = #{Zscore}
* derivedFrom ^slicing.discriminator.type = #profile
* derivedFrom ^slicing.discriminator.path = "reference"
* derivedFrom ^slicing.rules = #open
* derivedFrom contains
  AlveolarVolume 0..1
* derivedFrom[AlveolarVolume] only Reference(AlveolarVolume)

Profile: AlveolarVolume_PercentOfPredicted
Parent: Observation
Id: AlveolarVolume-PercentOfPredicted
Title: "Alveolar Volume (VA) Percent Of Predicted"
// TODO: Expand description to explain how alveolar volume is measured or calculated.
Description: """The ratio of a forced vital capacity (FVC) measurement to some predicted value, expressed as the percentage `measured/predicted`. This is also referred to as \"% predicted\" or \"% pred\".

The predicted value (also referred to as the \"reference value\") is determined by the patient's demographic information. The ratio of the measured value to the predicted value is useful as an indicator of how abnormal the measured value is."""
* code
  * text = "Alveolar volume measured/predicted"
* value[x] only Quantity
* valueQuantity
  * unit = "%"
  * system = $UCUM
  * code = #%
* derivedFrom ^slicing.discriminator.type = #profile
* derivedFrom ^slicing.discriminator.path = "reference"
* derivedFrom ^slicing.rules = #open
* derivedFrom contains
  AlveolarVolume 0..1
* derivedFrom[AlveolarVolume] only Reference(AlveolarVolume)
