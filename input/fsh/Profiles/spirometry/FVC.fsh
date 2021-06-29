/* Profiles for FVC PRE and POST Observations, as well as pre/post unspecified. */


/*
 * Pre- or post-bronchodilator not specified
 */
Profile: ForcedVitalCapacity
Parent: Observation
Id: ForcedVitalCapacity
Title: "Forced Vital Capacity (FVC)"
Description: """A measurement of forced vital capacity (FVC).

Forced vital capacity is the total volume of air (in liters) that can be forcibly exhaled after taking as deep a breath as possible.

This profile is for a forced vital capacity observation which was not specified as performed pre or post-bronchodilator. Measurements of forced vital capacity (and spirometry tests in general) may be performed both before and after administering a bronchodilator to the patient, in order to study the bronchodilator's effectiveness for treating their respiratory conditions.
"""
* code = $LNC#19870-5 "Forced vital capacity [Volume] Respiratory system"
* value[x] only Quantity
* valueQuantity
  * unit = "L"
  * system = $UCUM
  * code = #L

Profile: ForcedVitalCapacity_Zscore
Parent: Observation
Id: ForcedVitalCapacity-Zscore
Title: "Forced Vital Capacity (FVC) Zscore"
Description: """The Zscore of a forced vital capacity (FVC) measurement.

Forced vital capacity is the total volume of air (in liters) that can be forcibly exhaled after taking as deep a breath as possible.

The Zscore of a measured value is determined by comparing the measured value to some reference distribution based on the patient's demographic information. The Zscore is useful as an indicator of how abnormal the measured value is.

This profile is for the Zscore of a forced vital capacity observation which was not specified as performed pre or post-bronchodilator. Measurements of forced vital capacity (and spirometry tests in general) may be performed both before and after administering a bronchodilator to the patient, in order to study the bronchodilator's effectiveness for treating their respiratory conditions.
"""
* code
  * text = "Forced vital capacity (z-score)"
* value[x] only Quantity
* valueQuantity
  * unit = "Zscore"
  * system = $UCUM
  * code = #{Zscore}

Profile: ForcedVitalCapacity_PercentOfPredicted
Parent: Observation
Id: ForcedVitalCapacity-PercentOfPredicted
Title: "Forced Vital Capacity (FVC) Percent Of Predicted"
Description: """The ratio of a forced vital capacity (FVC) measurement to some predicted value, expressed as the percentage `measured/predicted`. This is also referred to as \"% predicted\" or \"% pred\".

Forced vital capacity is the total volume of air (in liters) that can be forcibly exhaled after taking as deep a breath as possible.

The predicted value (also referred to as the \"reference value\") is determined by the patient's demographic information. The ratio of the measured value to the predicted value is useful as an indicator of how abnormal the measured value is.

This profile is for the measured/predicted ratio of a forced vital capacity observation which was not specified as performed pre or post-bronchodilator. Measurements of forced vital capacity (and spirometry tests in general) may be performed both before and after administering a bronchodilator to the patient, in order to study the bronchodilator's effectiveness for treating their respiratory conditions.
"""
* code = $LNC#19872-1 "FVC measured/predicted"
* value[x] only Quantity
  * unit = "%"
  * system = $UCUM
  * code = #%


/*
 * Pre-bronchodilator
 */
Profile: ForcedVitalCapacityPreBronchodilator
Parent: Observation
Id: ForcedVitalCapacityPreBronchodilator
Title: "Forced Vital Capacity (FVC) Pre-bronchodilator"
Description: """A measurement of forced vital capacity (FVC) performed pre-bronchodilator.

Forced vital capacity is the total volume of air (in liters) that can be forcibly exhaled after taking as deep a breath as possible.

This profile is for a forced vital capacity observation which was performed pre-bronchodilator. Measurements of forced vital capacity (and spirometry tests in general) may be performed both before and after administering a bronchodilator to the patient, in order to study the bronchodilator's effectiveness for treating their respiratory conditions.
"""
* code = $LNC#19876-2 "Forced vital capacity [Volume] Respiratory system by Spirometry --pre bronchodilation"
* value[x] only Quantity
* valueQuantity
  * unit = "L"
  * system = $UCUM
  * code = #L

Profile: ForcedVitalCapacityPreBronchodilator_Zscore
Parent: Observation
Id: ForcedVitalCapacityPreBronchodilator-Zscore
Title: "Forced Vital Capacity (FVC) Pre-bronchodilator Zscore"
Description: """The Zscore of a forced vital capacity (FVC) measurement performed pre-bronchodilator.

Forced vital capacity is the total volume of air (in liters) that can be forcibly exhaled after taking as deep a breath as possible.

The Zscore of a measured value is determined by comparing the measured value to some reference distribution based on the patient's demographic information. The Zscore is useful as an indicator of how abnormal the measured value is.

This profile is for the Zscore of a forced vital capacity observation which was performed pre-bronchodilator. Measurements of forced vital capacity (and spirometry tests in general) may be performed both before and after administering a bronchodilator to the patient, in order to study the bronchodilator's effectiveness for treating their respiratory conditions.
"""
* code
  * text = "Forced vital capacity (z-score) pre-bronchodilator"
* value[x] only Quantity
* valueQuantity
  * unit = "Zscore"
  * system = $UCUM
  * code = #{Zscore}

Profile: ForcedVitalCapacityPreBronchodilator_PercentOfPredicted
Parent: Observation
Id: ForcedVitalCapacityPreBronchodilator-PercentOfPredicted
Title: "Forced Vital Capacity (FVC) Pre-bronchodilator Percent Of Predicted"
Description: """The ratio of a forced vital capacity (FVC) measurement performed pre-bronchodilator to some predicted value, expressed as the percentage `measured/predicted`. This is also referred to as \"% predicted\" or \"% pred\".

Forced vital capacity is the total volume of air (in liters) that can be forcibly exhaled after taking as deep a breath as possible.

The predicted value (also referred to as the \"reference value\") is determined by the patient's demographic information. The ratio of the measured value to the predicted value is useful as an indicator of how abnormal the measured value is.

This profile is for the measured/predicted ratio of a forced vital capacity observation which was performed pre-bronchodilator. Measurements of forced vital capacity (and spirometry tests in general) may be performed both before and after administering a bronchodilator to the patient, in order to study the bronchodilator's effectiveness for treating their respiratory conditions.
"""
* code = $LNC#19871-3 "FVC pre bronchodilation measured/predicted"
* value[x] only Quantity
  * unit = "%"
  * system = $UCUM
  * code = #%


/*
 * Post-bronchodilator
 */
Profile: ForcedVitalCapacityPostBronchodilator
Parent: Observation
Id: ForcedVitalCapacityPostBronchodilator
Title: "Forced Vital Capacity (FVC) Post-bronchodilator"
Description: """A measurement of forced vital capacity (FVC) performed post-bronchodilator.

Forced vital capacity is the total volume of air (in liters) that can be forcibly exhaled after taking as deep a breath as possible.

This profile is for a forced vital capacity observation which was performed post-bronchodilator. Measurements of forced vital capacity (and spirometry tests in general) may be performed both before and after administering a bronchodilator to the patient, in order to study the bronchodilator's effectiveness for treating their respiratory conditions.
"""
* code =  $LNC#19874-7 "Forced vital capacity [Volume] Respiratory system by Spirometry --post bronchodilation"
* value[x] only Quantity
* valueQuantity
  * unit = "L"
  * system = $UCUM
  * code = #L

Profile: ForcedVitalCapacityPostBronchodilator_Zscore
Parent: Observation
Id: ForcedVitalCapacityPostBronchodilator-Zscore
Title: "Forced Vital Capacity (FVC) Post-bronchodilator Zscore"
Description: """The Zscore of a forced vital capacity (FVC) measurement performed post-bronchodilator.

Forced vital capacity is the total volume of air (in liters) that can be forcibly exhaled after taking as deep a breath as possible.

The Zscore of a measured value is determined by comparing the measured value to some reference distribution based on the patient's demographic information. The Zscore is useful as an indicator of how abnormal the measured value is.

This profile is for the Zscore of a forced vital capacity observation which was performed post-bronchodilator. Measurements of forced vital capacity (and spirometry tests in general) may be performed both before and after administering a bronchodilator to the patient, in order to study the bronchodilator's effectiveness for treating their respiratory conditions.
"""
* code
  * text = "Forced vital capacity (z-score) post-bronchodilator"
* value[x] only Quantity
* valueQuantity
  * unit = "Zscore"
  * system = $UCUM
  * code = #{Zscore}

Profile: ForcedVitalCapacityPostBronchodilator_PercentOfPredicted
Parent: Observation
Id: ForcedVitalCapacityPostBronchodilator-PercentOfPredicted
Title: "Forced Vital Capacity (FVC) Post-bronchodilator Percent Of Predicted"
Description: """The ratio of a forced vital capacity (FVC) measurement performed post-bronchodilator to some predicted value, expressed as the percentage `measured/predicted`. This is also referred to as \"% predicted\" or \"% pred\".

Forced vital capacity is the total volume of air (in liters) that can be forcibly exhaled after taking as deep a breath as possible.

The predicted value (also referred to as the \"reference value\") is determined by the patient's demographic information. The ratio of the measured value to the predicted value is useful as an indicator of how abnormal the measured value is.

This profile is for the measured/predicted ratio of a forced vital capacity observation which was performed post-bronchodilator. Measurements of forced vital capacity (and spirometry tests in general) may be performed both before and after administering a bronchodilator to the patient, in order to study the bronchodilator's effectiveness for treating their respiratory conditions.
"""
* code = $LNC#19873-9 "FVC post bronchodilation measured/predicted"
* value[x] only Quantity
* valueQuantity
  * unit = "%"
  * system = $UCUM
  * code = #%

Profile: ForcedVitalCapacityPostBronchodilator_mLChange
Parent: Observation
Id: ForcedVitalCapacityPostBronchodilator-mLChange
Title: "Forced Vital Capacity (FVC) Post-bronchodilator mL Change"
Description: """The volume (mL) change in forced vital capacity (FVC) between a measurement performed pre-bronchodilator and a measurement performed post-bronchodilator.

Forced vital capacity is the total volume of air (in liters) that can be forcibly exhaled after taking as deep a breath as possible.

This profile is for the difference in volume between two forced vital capacity measurements: one performed pre-bronchodilator, and the other performed post-bronchodilator. Measurements of forced vital capacity (and spirometry tests in general) may be performed both before and after administering a bronchodilator to the patient, in order to study the bronchodilator's effectiveness for treating their respiratory conditions.
"""
* code
  * text = "Forced vital capacity, post-bronchodilator change from pre-bronchodilator (mL)"
* value[x] only Quantity
* valueQuantity
  * unit = "mL"
  * system = $UCUM
  * code = #mL

Profile: ForcedVitalCapacityPostBronchodilator_PercentChange
Parent: Observation
Id: ForcedVitalCapacityPostBronchodilator-PercentChange
Title: "Forced Vital Capacity (FVC) Post-bronchodilator Percent Change"
Description: """The percent change in forced vital capacity (FVC) between a measurement performed pre-bronchodilator and a measurement performed post-bronchodilator.

Forced vital capacity is the total volume of air (in liters) that can be forcibly exhaled after taking as deep a breath as possible.

This profile is for the percent change between two forced vital capacity measurements: one performed pre-bronchodilator, and the other performed post-bronchodilator. Measurements of forced vital capacity (and spirometry tests in general) may be performed both before and after administering a bronchodilator to the patient, in order to study the bronchodilator's effectiveness for treating their respiratory conditions.
"""
* code = $LNC#69982-7 "FVC percent change Respiratory system"
* value[x] only Quantity
* valueQuantity
  * unit = "%"
  * system = $UCUM
  * code = #%