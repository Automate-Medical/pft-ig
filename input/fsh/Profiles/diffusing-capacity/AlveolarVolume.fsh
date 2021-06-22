/* Profiles for V_A (alveolar volume) Observations. */


Profile: AlveolarVolume
Parent: Observation
Id: AlveolarVolume
Title: "AlveolarVolume"
Description: "Alveolar volume (liters)"
* code
  * text = "Alveolar volume (liters)"
* value[x] only Quantity
* valueQuantity
  * unit = "L"
  * system = $UCUM
  * code = #L

Profile: AlveolarVolume_Zscore
Parent: Observation
Id: AlveolarVolume-Zscore
Title: "AlveolarVolume_Zscore"
Description: "Alveolar volume (z-score)"
* code
  * text = "Alveolar volume (z-score)"
* value[x] only Quantity
* valueQuantity
  * unit = "Zscore"
  * system = $UCUM
  * code = #{Zscore}

Profile: AlveolarVolume_percentPredicted
Parent: Observation
Id: AlveolarVolume-percentPredcted
Title: "AlveolarVolume_percentPredicted"
Description: "Alveolar volume (% pred)"
* code
  * text = "Alveolar volume measured/predicted"
* value[x] only Quantity
* valueQuantity
  * unit = "%"
  * system = $UCUM
  * code = #%