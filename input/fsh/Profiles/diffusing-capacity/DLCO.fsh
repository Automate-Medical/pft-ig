/* Profiles for DLCO Observations. */


/*
 * DLCO
 */
Profile: DLCO
Parent: Observation
Id: DLCO
Title: "Diffusion Capacity Of Lung For Carbon Monoxide (DLCO)"
// TODO: Expand description to explain why carbon monoxide is used, why the unit is mL/min/mmHg, etc.
Description: """A measurement of diffusion capacity of the lung for carbon monoxide (DLCO). Also referred to as transfer capacity of the lung for carbon monoxide (TLCO).

DLCO is a test of the lungs' ability to transfer inhaled gas to the bloodstream."""
* code = $LNC#19911-7 "Diffusion capacity.carbon monoxide"
* value[x] only Quantity
* valueQuantity
  * unit = "mL/min/mmHg"
  * system = $UCUM
  * code = #mL/min/mmHg


/*
 * DLCO at standard P_B (barometric pressure)
 */
Profile: DLCOAtStandardBarometricPressure
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

Profile: DLCOAtStandardBarometricPressure_Zscore
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

Profile: DLCOAtStandardBarometricPressure_PercentOfPredicted
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
Profile: DLCOAdjustedForHemoglobin
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

Profile: DLCOAdjustedForHemoglobin_PercentOfPredicted
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
