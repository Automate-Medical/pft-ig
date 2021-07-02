/* DLCO Instances */

/*
 * DLCO
 */
Instance: DLCO
InstanceOf: DLCO
Usage: #example
Title: "DLCO"
Description: """An example DLCO resource."""
* id = "DLCO"
* status = #final
* code = $LNC#19911-7 "Diffusion capacity.carbon monoxide"
* valueQuantity = 13.4 'mL/min/mm[Hg]' "mL/min/mm[Hg]"

/*
 * DLCO at standard barometric pressure
 */
Instance: DLCO_atStandardPB
InstanceOf: DLCOAtStandardBarometricPressure
Usage: #example
Title: "DLCO (at standard PB)"
Description: """An example DLCOAtStandardBarometricPressure resource."""
* id = "DLCO-atStandardPB"
* status = #final
* code
  * text = "Diffusion capacity of lung for carbon monoxide at standard barometric pressure"
* valueQuantity = 13.0 'mL/min/mm[Hg]' "mL/min/mm[Hg]"
* referenceRange
  * low = 23.4 'mL/min/mm[Hg]' "mL/min/mm[Hg]"
  * type
    * text = "DLCO at standard PB normal bounds"

Instance: DLCO_atStandardPB_Zscore
InstanceOf: DLCOAtStandardBarometricPressure_Zscore
Usage: #example
Title: "DLCO (at standard PB) Zscore"
Description: """An example DLCOAtStandardBarometricPressure_Zscore resource."""
* id = "DLCO-atStandardPB-Zscore"
* status = #final
* code
  * text = "Diffusion capacity of lung for carbon monoxide at standard barometric pressure (z-score)"
* valueQuantity = -4.55 '{Zscore}' "Zscore"
* derivedFrom[+] = Reference(DLCO_atStandardPB)

Instance: DLCO_atStandardPB_percentPredicted
InstanceOf: DLCOAtStandardBarometricPressure_PercentOfPredicted
Usage: #example
Title: "DLCO (at standard PB) % pred"
Description: """An example DLCOAtStandardBarometricPressure_PercentOfPredicted resource."""
* id = "DLCO-atStandardPB-percentPredicted"
* status = #final
* code
  * text = "Diffusion capacity of lung for carbon monoxide at standard barometric pressure (% of predicted)"
* valueQuantity = 42 '%' "%"
* derivedFrom[+] = Reference(DLCO_atStandardPB)

/*
 * DLCO pred adj Hb
 */
// TODO: see issue #21 <https://github.com/Automate-Medical/pft-ig/issues/21>
Instance: DLCO_predAdjHb
InstanceOf: DLCOAdjustedForHemoglobin
Usage: #example
Title: "DLCO (pred adj Hb 13.8 g/dL)"
Description: """An example DLCOAdjustedForHemoglobin resource."""
* id = "DLCO-predAdjHb"
* status = #final
* code = $LNC#19913-3 "Diffusion capacity.carbon monoxide adjusted for hemoglobin"
* valueQuantity = 13.0 'mL/min/mm[Hg]' "mL/min/mm[Hg]"

// TODO: see issue #21 <https://github.com/Automate-Medical/pft-ig/issues/21>
Instance: DLCO_predAdjHb_percentPredicted
InstanceOf: DLCOAdjustedForHemoglobin_PercentOfPredicted
Usage: #example
Title: "DLCO (pred adj Hb 13.8 g/dL) % pred"
Description: """An example DLCOAdjustedForHemoglobin_PercentOfPredicted resource."""
* id = "DLCO-predAdjHb"
* status = #final
* code
  * text = "Diffusion capacity.carbon monoxide adjusted for hemoglobin measured/predicted"
* valueQuantity = 53 '%' "%"