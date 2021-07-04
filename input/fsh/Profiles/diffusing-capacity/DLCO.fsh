/* Profiles for DLCO Observations. */


/*
 * DLCO
 */
Profile: DLCO
Parent: Observation
Id: DLCO
Title: "Diffusion Capacity Of Lung For Carbon Monoxide (DLCO)"
// TODO: Expand description to explain why carbon monoxide is used, why the unit is mL/min/mm[Hg], etc.
Description: """A measurement of diffusion capacity of the lung for carbon monoxide (DLCO). Also referred to as transfer capacity of the lung for carbon monoxide (TLCO).

DLCO is a test of the lungs' ability to transfer inhaled gas to the bloodstream, measured in milliliters of carbon monoxide per minute per millimeter of mercury (mL/min/mm[Hg]). Carbon monoxide (CO), measured in milliliters, is used because it follows a similar pathway as oxygen and has a high binding affinity for hemoglobin in the blood. Barometric pressure, measured in milliters of mercury, affects the absorption of gasses from the lungs and hence is relevant to the measurement of DLCO.

This profile is for a DLCO observation which is not specified as adjusted for barometric pressure."""
* code = $LNC#19911-7 "Diffusion capacity.carbon monoxide"
* value[x] only Quantity
* valueQuantity
  * unit = "mL/min/mm[Hg]"
  * system = $UCUM
  * code = #mL/min/mm[Hg]
* extension contains
  BarometricPressure named barometricPressure 0..1


/*
 * DLCO at standard P_B (barometric pressure)
 */
Profile: DLCOAtStandardBarometricPressure
Parent: Observation
Id: DLCOAtStandardBarometricPressure
Title: "Diffusion Capacity Of Lung For Carbon Monoxide (DLCO) At Standard Barometric Pressure (PB)"
Description: """A measurement of diffusion capacity of the lung for carbon monoxide (DLCO) performed at standard barometric pressure. Also referred to as transfer capacity of the lung for carbon monoxide (TLCO).

DLCO is a test of the lungs' ability to transfer inhaled gas to the bloodstream, measured in milliliters of carbon monoxide per minute per millimeter of mercury (mL/min/mm[Hg]). Carbon monoxide (CO), measured in milliliters, is used because it follows a similar pathway as oxygen and has a high binding affinity for hemoglobin in the blood. Barometric pressure, measured in milliters of mercury, affects the absorption of gasses from the lungs and hence is relevant to the measurement of DLCO.

This profile is for a DLCO observation which was performed at standard barometric pressure."""
* extension contains
  TestQuality named testQuality 0..1 and
  ReferenceValueSource named referenceValueSource 0..1
* code
  * text = "Diffusion capacity of lung for carbon monoxide at standard barometric pressure"
* value[x] only Quantity
* valueQuantity
  * unit = "mL/min/mm[Hg]"
  * system = $UCUM
  * code = #mL/min/mm[Hg]
* extension contains
  BarometricPressure named barometricPressure 0..1

Profile: DLCOAtStandardBarometricPressure_Zscore
Parent: Observation
Id: DLCOAtStandardBarometricPressure-Zscore
Title: "Diffusion Capacity Of Lung For Carbon Monoxide (DLCO) At Standard Barometric Pressure (PB) Zscore"
Description: """The Zscore of a diffusion capacity of the lung for carbon monoxide (DLCO) measurement performed at standard barometric pressure. Also referred to as transfer capacity of the lung for carbon monoxide (TLCO).

DLCO is a test of the lungs' ability to transfer inhaled gas to the bloodstream, measured in milliliters of carbon monoxide per minute per millimeter of mercury (mL/min/mm[Hg]). Carbon monoxide (CO), measured in milliliters, is used because it follows a similar pathway as oxygen and has a high binding affinity for hemoglobin in the blood. Barometric pressure, measured in milliters of mercury, affects the absorption of gasses from the lungs and hence is relevant to the measurement of DLCO.

The Zscore of a measured value is determined by comparing the measured value to some reference distribution based on the patient's demographic information. The Zscore is useful as an indicator of how abnormal the measured value is.

This profile is for the Zscore of a DLCO observation which was performed at standard barometric pressure."""
* code
  * text = "Diffusion capacity of lung for carbon monoxide at standard barometric pressure (z-score)"
* value[x] only Quantity
* valueQuantity
  * unit = "Zscore"
  * system = $UCUM
  * code = #{Zscore}

Profile: DLCOAtStandardBarometricPressure_PercentOfPredicted
Parent: Observation
Id: DLCOAtStandardBarometricPressure-PercentOfPredicted
Title: "Diffusion Capacity Of Lung For Carbon Monoxide (DLCO) At Standard Barometric Pressure (PB) Percent Of Predicted"
Description: """The ratio of a diffusion capacity of the lung for carbon monoxide (DLCO) measurement performed at standard barometric pressure to some predicted value, expressed as the percentage `measured/predicted`. Also referred to as transfer capacity of the lung for carbon monoxide (TLCO).

DLCO is a test of the lungs' ability to transfer inhaled gas to the bloodstream, measured in milliliters of carbon monoxide per minute per millimeter of mercury (mL/min/mm[Hg]). Carbon monoxide (CO), measured in milliliters, is used because it follows a similar pathway as oxygen and has a high binding affinity for hemoglobin in the blood. Barometric pressure, measured in milliters of mercury, affects the absorption of gasses from the lungs and hence is relevant to the measurement of DLCO.

The predicted value (also referred to as the \"reference value\") is determined by the patient's demographic information. The ratio of the measured value to the predicted value is useful as an indicator of how abnormal the measured value is.

This profile is for the measured/predicted ratio of a DLCO observation which was performed at standard barometric pressure."""
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
// TODO: see issue #21 <https://github.com/Automate-Medical/pft-ig/issues/21>
Description: """A measurement of diffusion capacity of the lung for carbon monoxide (DLCO) adjusted for hemoglobin. Also referred to as transfer capacity of the lung for carbon monoxide (TLCO).

DLCO is a test of the lungs' ability to transfer inhaled gas to the bloodstream, measured in milliliters of carbon monoxide per minute per millimeter of mercury (mL/min/mm[Hg]). Carbon monoxide (CO), measured in milliliters, is used because it follows a similar pathway as oxygen and has a high binding affinity for hemoglobin in the blood. Barometric pressure, measured in milliters of mercury, affects the absorption of gasses from the lungs and hence is relevant to the measurement of DLCO."""
* extension contains
  TestQuality named testQuality 0..1 and
  ReferenceValueSource named referenceValueSource 0..1
* code = $LNC#19913-3 "Diffusion capacity.carbon monoxide adjusted for hemoglobin"
* value[x] only Quantity
* valueQuantity
  * unit = "mL/min/mm[Hg]"
  * system = $UCUM
  * code = #mL/min/mm[Hg]
* extension contains
  BarometricPressure named barometricPressure 0..1

Profile: DLCOAdjustedForHemoglobin_PercentOfPredicted
Parent: Observation
Id: DLCOAdjustedForHemoglobin-PercentOfPredicted
Title: "Diffusion Capacity Of Lung For Carbon Monoxide (DLCO) Adjusted For Hemoglobin (Hb) Percent Of Predicted"
// TODO: see issue #21 <https://github.com/Automate-Medical/pft-ig/issues/21>
Description: "Diffusion capacity of lung for carbon monoxide, adjusted for hemoglobin (% of predicted)."
* code
  * text = "Diffusion capacity.carbon monoxide adjusted for hemoglobin measured/predicted"
* value[x] only Quantity
* valueQuantity
  * unit = "%"
  * system = $UCUM
  * code = #%
