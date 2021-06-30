/* Profiles for FEV1 PRE and POST Observations, as well as pre/post unspecified. */


/*
 * Pre/post bronchodilator not specified
 */
Profile: ForcedExpiratoryVolume1Sec
Parent: Observation
Id: ForcedExpiratoryVolume1Sec
Title: "Forced Expiratory Volume In 1 Second (FEV1)"
Description: """A measurement of forced expiratory volume in one second (FEV1).

Forced expiratory volume in one second is the total volume of air, in liters, that can be forcibly exhaled in one second.

This profile is for a forced expiratory volume in one second observation which was not specified as performed pre or post-bronchodilator. Measurements of forced expiratory volume (and spirometry tests in general) may be performed both before and after administering a bronchodilator to the patient, in order to study the bronchodilator's effectiveness for treating their respiratory conditions."""
* code = $LNC#20150-9 "FEV1"
* value[x] only Quantity
* valueQuantity
  * unit = "L"
  * system = $UCUM
  * code = #L

Profile: ForcedExpiratoryVolume1Sec_Zscore
Parent: Observation
Id: ForcedExpiratoryVolume1Sec-Zscore
Title: "Forced Expiratory Volume In 1 Second (FEV1) Zscore"
Description: """The Zscore of a forced expiratory volume in one second (FEV1) measurement.

Forced expiratory volume in one second is the total volume of air, in liters, that can be forcibly exhaled in one second.

The Zscore of a measured value is determined by comparing the measured value to some reference distribution based on the patient's demographic information. The Zscore is useful as an indicator of how abnormal the measured value is.

This profile is for the Zscore of a forced expiratory volume in one second observation which was not specified as performed pre or post-bronchodilator. Measurements of forced expiratory volume (and spirometry tests in general) may be performed both before and after administering a bronchodilator to the patient, in order to study the bronchodilator's effectiveness for treating their respiratory conditions."""
* code
  * text = "FEV1 (z-score)"
* value[x] only Quantity
* valueQuantity
  * unit = "Zscore"
  * system = $UCUM
  * code = #{Zscore}

Profile: ForcedExpiratoryVolume1Sec_PercentOfPredicted
Parent: Observation
Id: ForcedExpiratoryVolume1Sec-PercentOfPredicted
Title: "Forced Expiratory Volume In 1 Second (FEV1) Percent Of Predicted"
Description: """The ratio of a forced expiratory volume in one second (FEV1) measurement to some predicted value, expressed as the percentage `measured/predicted`. This is also referred to as \"% predicted\" or \"% pred\".

Forced expiratory volume in one second is the total volume of air, in liters, that can be forcibly exhaled in one second.

The predicted value (also referred to as the \"reference value\") is determined by the patient's demographic information. The ratio of the measured value to the predicted value is useful as an indicator of how abnormal the measured value is.

This profile is for the measured/predicted ratio of a forced expiratory volume in one second observation which was not specified as performed pre or post-bronchodilator. Measurements of forced expiratory volume (and spirometry tests in general) may be performed both before and after administering a bronchodilator to the patient, in order to study the bronchodilator's effectiveness for treating their respiratory conditions."""
* code = $LNC#20152-5 "FEV1 measured/predicted"
* value[x] only Quantity
  * unit = "%"
  * system = $UCUM
  * code = #%


/*
 * Pre-bronchodilator
 */
Profile: ForcedExpiratoryVolume1SecPreBronchodilator
Parent: Observation
Id: ForcedExpiratoryVolume1SecPreBronchodilator
Title: "Forced Expiratory Volume In 1 Second (FEV1) Pre-bronchodilator"
Description: """A measurement of forced expiratory volume in one second (FEV1) performed pre-bronchodilator.

Forced expiratory volume in one second is the total volume of air, in liters, that can be forcibly exhaled in one second.

This profile is for a forced expiratory volume in one second observation which was performed pre-bronchodilator. Measurements of forced expiratory volume (and spirometry tests in general) may be performed both before and after administering a bronchodilator to the patient, in order to study the bronchodilator's effectiveness for treating their respiratory conditions."""
* code = $LNC#20157-4 "FEV1 --pre bronchodilation"
* value[x] only Quantity
* valueQuantity
  * unit = "L"
  * system = $UCUM
  * code = #L

Profile: ForcedExpiratoryVolume1SecPreBronchodilator_Zscore
Parent: Observation
Id: ForcedExpiratoryVolume1SecPreBronchodilator-Zscore
Title: "Forced Expiratory Volume In 1 Second (FEV1) Pre-bronchodilator Zscore"
Description: """The Zscore of a forced expiratory volume in one second (FEV1) measurement performed pre-bronchodilator..

Forced expiratory volume in one second is the total volume of air, in liters, that can be forcibly exhaled in one second.

The Zscore of a measured value is determined by comparing the measured value to some reference distribution based on the patient's demographic information. The Zscore is useful as an indicator of how abnormal the measured value is.

This profile is for the Zscore of a forced expiratory volume in one second observation which was performed pre-bronchodilator. Measurements of forced expiratory volume (and spirometry tests in general) may be performed both before and after administering a bronchodilator to the patient, in order to study the bronchodilator's effectiveness for treating their respiratory conditions."""
* code
  * text = "FEV1 (z-score) pre-bronchodilator"
* value[x] only Quantity
* valueQuantity
  * unit = "Zscore"
  * system = $UCUM
  * code = #{Zscore}

Profile: ForcedExpiratoryVolume1SecPreBronchodilator_PercentOfPredicted
Parent: Observation
Id: ForcedExpiratoryVolume1SecPreBronchodilator-PercentOfPredicted
Title: "Forced Expiratory Volume In 1 Second (FEV1) Pre-bronchodilator Percent Of Predicted"
Description: """The ratio of a forced expiratory volume in one second (FEV1) measurement performed pre-bronchodilator to some predicted value, expressed as the percentage `measured/predicted`. This is also referred to as \"% predicted\" or \"% pred\".

Forced expiratory volume in one second is the total volume of air, in liters, that can be forcibly exhaled in one second.

The predicted value (also referred to as the \"reference value\") is determined by the patient's demographic information. The ratio of the measured value to the predicted value is useful as an indicator of how abnormal the measured value is.

This profile is for the measured/predicted ratio of a forced expiratory volume in one second observation which was performed pre-bronchodilator. Measurements of forced expiratory volume (and spirometry tests in general) may be performed both before and after administering a bronchodilator to the patient, in order to study the bronchodilator's effectiveness for treating their respiratory conditions."""
* code
  * coding = $LNC#20152-5 "FEV1 measured/predicted"
  * text = "FEV1 measured/predicted pre-bronchodilator"
* value[x] only Quantity
  * unit = "%"
  * system = $UCUM
  * code = #%


/*
 * Post-bronchodilator
 */
Profile: ForcedExpiratoryVolume1SecPostbronchodilator
Parent: Observation
Id: ForcedExpiratoryVolume1SecPostbronchodilator
Title: "Forced Expiratory Volume In 1 Second (FEV1) Post-bronchodilator"
Description: """A measurement of forced expiratory volume in one second (FEV1) performed post-bronchodilator.

Forced expiratory volume in one second is the total volume of air, in liters, that can be forcibly exhaled in one second.

This profile is for a forced expiratory volume in one second observation which was performed post-bronchodilator. Measurements of forced expiratory volume (and spirometry tests in general) may be performed both before and after administering a bronchodilator to the patient, in order to study the bronchodilator's effectiveness for treating their respiratory conditions."""
* code = $LNC#20155-8 "FEV1 --post bronchodilation"
* value[x] only Quantity
* valueQuantity
  * unit = "L"
  * system = $UCUM
  * code = #L

Profile: ForcedExpiratoryVolume1SecPostbronchodilator_Zscore
Parent: Observation
Id: ForcedExpiratoryVolume1SecPostbronchodilator-Zscore
Title: "Forced Expiratory Volume In 1 Second (FEV1) Post-bronchodilator Zscore"
Description:  """The Zscore of a forced expiratory volume in one second (FEV1) measurement performed post-bronchodilator..

Forced expiratory volume in one second is the total volume of air, in liters, that can be forcibly exhaled in one second.

The Zscore of a measured value is determined by comparing the measured value to some reference distribution based on the patient's demographic information. The Zscore is useful as an indicator of how abnormal the measured value is.

This profile is for the Zscore of a forced expiratory volume in one second observation which was performed post-bronchodilator. Measurements of forced expiratory volume (and spirometry tests in general) may be performed both before and after administering a bronchodilator to the patient, in order to study the bronchodilator's effectiveness for treating their respiratory conditions."""
* code
  * text = "FEV1 (z-score) post-bronchodilator"
* value[x] only Quantity
* valueQuantity
  * unit = "Zscore"
  * system = $UCUM
  * code = #{Zscore}

Profile: ForcedExpiratoryVolume1SecPostbronchodilator_PercentOfPredicted
Parent: Observation
Id: ForcedExpiratoryVolume1SecPostbronchodilator-PercentOfPredicted
Title: "Forced Expiratory Volume In 1 Second (FEV1) Post-bronchodilator Percent Of Predicted"
Description: """The ratio of a forced expiratory volume in one second (FEV1) measurement performed post-bronchodilator to some predicted value, expressed as the percentage `measured/predicted`. This is also referred to as \"% predicted\" or \"% pred\".

Forced expiratory volume in one second is the total volume of air, in liters, that can be forcibly exhaled in one second.

The predicted value (also referred to as the \"reference value\") is determined by the patient's demographic information. The ratio of the measured value to the predicted value is useful as an indicator of how abnormal the measured value is.

This profile is for the measured/predicted ratio of a forced expiratory volume in one second observation which was performed post-bronchodilator. Measurements of forced expiratory volume (and spirometry tests in general) may be performed both before and after administering a bronchodilator to the patient, in order to study the bronchodilator's effectiveness for treating their respiratory conditions."""
* code
  * coding = $LNC#20152-5 "FEV1 measured/predicted"
  * text = "FEV1 measured/predicted post-bronchodilator"
* value[x] only Quantity
  * unit = "%"
  * system = $UCUM
  * code = #%

Profile: ForcedExpiratoryVolume1SecPostbronchodilator_mLChange
Parent: Observation
Id: ForcedExpiratoryVolume1SecPostbronchodilator-mLChange
Title: "Forced Expiratory Volume In 1 Second (FEV1) Post-bronchodilator mL Change"
Description: """The volume (mL) change in forced expiratory volume in one second (FEV1) between a measurement performed pre-bronchodilator and a measurement performed post-bronchodilator.

Forced expiratory volume in one second is the total volume of air, in liters, that can be forcibly exhaled in one second.

This profile is for the difference in volume between two forced expiratory volume in one second measurements: one performed pre-bronchodilator, and the other performed post-bronchodilator. Measurements of forced expiratory volume (and spirometry tests in general) may be performed both before and after administering a bronchodilator to the patient, in order to study the bronchodilator's effectiveness for treating their respiratory conditions.
"""
* code
  * text = "FEV1 volume change"
* value[x] only Quantity
* valueQuantity
  * unit = "mL"
  * system = $UCUM
  * code = #mL

Profile: ForcedExpiratoryVolume1SecPostbronchodilator_PercentChange
Parent: Observation
Id: ForcedExpiratoryVolume1SecPostbronchodilator-PercentChange
Title: "Forced Expiratory Volume In 1 Second (FEV1) Post-bronchodilator Percent Change"
Description: """The percent change in forced expiratory volume in one second (FEV1) between a measurement performed pre-bronchodilator and a measurement performed post-bronchodilator.

Forced expiratory volume in one second is the total volume of air, in liters, that can be forcibly exhaled in one second.

This profile is for the percent change between two forced expiratory volume in one secondmeasurements: one performed pre-bronchodilator, and the other performed post-bronchodilator. Measurements of forced expiratory volume (and spirometry tests in general) may be performed both before and after administering a bronchodilator to the patient, in order to study the bronchodilator's effectiveness for treating their respiratory conditions."""
* code
  * text = "FEV1 percent change"
* value[x] only Quantity
* valueQuantity
  * unit = "%"
  * system = $UCUM
  * code = #%