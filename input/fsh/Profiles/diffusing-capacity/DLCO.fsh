/* Profiles for DLCO Observations. */


/*
 * DLCO
 */
Profile: DLCO
Parent: Observation
Id: DLCO
Title: "Diffusion Capacity Of Lung For Carbon Monoxide (DLCO)"
Description: "Diffusion capacity of lung for carbon monoxide."
* code = $LNC#19911-7 "Diffusion capacity.carbon monoxide"
* value[x] only Quantity
* valueQuantity
  * unit = "mL/min/mmHg"
  * system = $UCUM
  * code = #mL/min/mmHg


/*
 * DLCO at standard P_B (barometric pressure)
 */
Profile: DLCO_atStandardPb
Parent: Observation
Id: DLCOAtStandardBarometricPressure
Title: "Diffusion Capacity Of Lung For Carbon Monoxide (DLCO) At Standard Barometric Pressure (PB)"
Description: "Diffusion capacity of lung for carbon monoxide at standard barometric pressure."
* code
  * text = "Diffusion capacity of lung for carbon monoxide at standard barometric pressure"
* value[x] only Quantity
* valueQuantity
  * unit = "mL/min/mmHg"
  * system = $UCUM
  * code = #mL/min/mmHg

Profile: DLCO_atStandardPb_Zscore
Parent: Observation
Id: DLCOAtStandardBarometricPressure-Zscore
Title: "Diffusion Capacity Of Lung For Carbon Monoxide (DLCO) At Standard Barometric Pressure (PB) Zscore"
Description: "Diffusion capacity of lung for carbon monoxide at standard barometric pressure (z-score)."
* code
  * text = "Diffusion capacity of lung for carbon monoxide at standard barometric pressure (z-score)"
* value[x] only Quantity
* valueQuantity
  * unit = "Zcore"
  * system = $UCUM
  * code = #{Zscore}

Profile: DLCO_atStandardPb_percentPredicted
Parent: Observation
Id: DLCOAtStandardBarometricPressure-PercentOfPredicted
Title: "Diffusion Capacity Of Lung For Carbon Monoxide (DLCO) At Standard Barometric Pressure (PB) Percent Of Predicted"
Description: "Diffusion capacity of lung for carbon monoxide at standard barometric pressure (% of predicted)."
* code
  * text = "Diffusion capacity of lung for carbon monoxide at standard barometric pressure (% of predicted)"
* value[x] only Quantity
  * unit = "%"
  * system = $UCUM
  * code = #%


/*
 * DLCO adjusted for H_b (hemoglobin)
 */
Profile: DLCO_predAdjHb
Parent: Observation
Id: DLCOAdjustedForHemoglobin
Title: "Diffusion Capacity Of Lung For Carbon Monoxide (DLCO) Adjusted For Hemoglobin (Hb)"
Description: "Diffusion capacity of lung for carbon monoxide, adjusted for hemoglobin."
* code = $LNC#19913-3 "Diffusion capacity.carbon monoxide adjusted for hemoglobin"
* value[x] only Quantity
* valueQuantity
  * unit = "mL/min/mmHg"
  * system = $UCUM
  * code = #mL/min/mmHg

Profile: DLCO_predAdjHb_percentPredicted
Parent: Observation
Id: DLCOAdjustedForHemoglobin-PercentOfPredicted
Title: "Diffusion Capacity Of Lung For Carbon Monoxide (DLCO) Adjusted For Hemoglobin (Hb) Percent Of Predicted"
Description: "Diffusion capacity of lung for carbon monoxide, adjusted for hemoglobin (% of predicted)."
* code
  * text = "Diffusion capacity.carbon monoxide adjusted for hemoglobin measured/predicted"
* value[x] only Quantity
* valueQuantity
  * unit = "mL/min/mmHg"
  * system = $UCUM
  * code = #mL/min/mmHg
