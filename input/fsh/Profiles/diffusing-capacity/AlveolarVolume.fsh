/* Profiles for V_A (alveolar volume) Observations. */


Profile: AlveolarVolume
Parent: Observation
Id: AlveolarVolume
Title: "Alveolar Volume (VA)"
Description: "A measurement of alveolar volume, in liters."
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
Description: "The z-score of an alveolar volume measurement, calculated from some reference distribution."
* code
  * text = "Alveolar volume (z-score)"
* value[x] only Quantity
* valueQuantity
  * unit = "Zscore"
  * system = $UCUM
  * code = #{Zscore}

Profile: AlveolarVolume_PercentOfPredicted
Parent: Observation
Id: AlveolarVolume-PercentOfPredicted
Title: "Alveolar Volume (VA) Percent Of Predicted"
Description: "An alveolar volume measurement as the percentage of some predicted reference value."
* code
  * text = "Alveolar volume measured/predicted"
* value[x] only Quantity
* valueQuantity
  * unit = "%"
  * system = $UCUM
  * code = #%