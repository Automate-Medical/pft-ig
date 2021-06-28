/* Profiles for DLCO Observations. */


/*
 * DLCO
 */
Profile: DLCO
Parent: Observation
Id: DLCO
Title: "DLCO"
Description: "Diffusion capacity of lung for carbon monoxide."
* code = $LNC#19911-7 "Diffusion capacity.carbon monoxide"
* value[x] only Quantity
* valueQuantity
  * unit = "mL/min/mmHg"
  * system = $UCUM
  * code = #mL/min/mmHg


/*
 * DLCO at standard P_b (barometric pressure)
 */
Profile: DLCO_atStandardPb
Parent: Observation
Id: DLCO-atStandardPb
Title: "DLCO_atStandardPb"
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
Id: DLCO-atStandardPb-Zscore
Title: "DLCO_atStandardPb_Zscore"
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
Id: DLCO-atStandardPb-percentPredicted
Title: "DLCO_atStandardPb_percentPredicted"
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
Id: DLCO-predAdjHb
Title: "DLCO_predAdjHb"
Description: "Diffusion capacity of lung for carbon monoxide, adjusted for hemoglobin."
* code = $LNC#19913-3 "Diffusion capacity.carbon monoxide adjusted for hemoglobin"
* value[x] only Quantity
* valueQuantity
  * unit = "mL/min/mmHg"
  * system = $UCUM
  * code = #mL/min/mmHg

Profile: DLCO_predAdjHb_percentPredicted
Parent: Observation
Id: DLCO-predAdjHb-percentPredicted
Title: "DLCO_predAdjHb_percentPredicted"
Description: "Diffusion capacity of lung for carbon monoxide, adjusted for hemoglobin (% of predicted)."
* code
  * text = "Diffusion capacity.carbon monoxide adjusted for hemoglobin measured/predicted"
* value[x] only Quantity
* valueQuantity
  * unit = "mL/min/mmHg"
  * system = $UCUM
  * code = #mL/min/mmHg
