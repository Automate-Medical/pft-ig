/* Profiles for FEV1/FVC PRE and POST Observations, as well as pre/post unspecified. */


/*
 * Pre/post bronchodilator not specified
 */
Profile: FEV1_over_FVC
Parent: Observation
Id: FEV1-over-FVC
Title: "FEV1/FVC"
Description: """The ratio of forced expiratory volume in one second to forced vital capacity (FEV1/FVC).

The ratio of forced expiratory volume in one second to forced vital capacity is useful because different respiratory conditions affect each term in the ratio in different ways.

This profile is for a FEV1/FVC observation which was not specified as performed pre or post-bronchodilator. Measurements of FEV1/FVC (and spirometry tests in general) may be performed both before and after administering a bronchodilator to the patient, in order to study the bronchodilator's effectiveness for treating their respiratory conditions."""
* code = $LNC#19926-5 "FEV1/FVC"
* value[x] only Quantity
* valueQuantity
  * unit = "Number"
  * system = $UCUM
  * code = #{Number}

Profile: FEV1_over_FVC_Zscore
Parent: Observation
Id: FEV1-over-FVC-Zscore
Title: "FEV1/FVC Zscore"
Description: """The Zscore of the ratio of forced expiratory volume in one second to forced vital capacity (FEV1/FVC).

The ratio of forced expiratory volume in one second to forced vital capacity is useful because different respiratory conditions affect each term in the ratio in different ways.

The Zscore of a measured value is determined by comparing the measured value to some reference distribution based on the patient's demographic information. The Zscore is useful as an indicator of how abnormal the measured value is.

This profile is for the Zscore of a FEV1/FVC observation which was not specified as performed pre or post-bronchodilator. Measurements of FEV1/FVC (and spirometry tests in general) may be performed both before and after administering a bronchodilator to the patient, in order to study the bronchodilator's effectiveness for treating their respiratory conditions."""
* code
  * text = "FEV1/FVC (z-score)"
* value[x] only Quantity
* valueQuantity
  * unit = "Zscore"
  * system = $UCUM
  * code = #{Zscore}


/*
 * Pre-bronchodilator
 */
Profile: FEV1_over_FVC_PreBronchodilator
Parent: Observation
Id: FEV1-over-FVC-PreBronchodilator
Title: "FEV1/FVC Pre-bronchodilator"
Description: """The ratio of forced expiratory volume in one second to forced vital capacity (FEV1/FVC) performed pre-bronchodilator.

The ratio of forced expiratory volume in one second to forced vital capacity is useful because different respiratory conditions affect each term in the ratio in different ways.

This profile is for a FEV1/FVC observation which was performed pre-bronchodilator. Measurements of FEV1/FVC (and spirometry tests in general) may be performed both before and after administering a bronchodilator to the patient, in order to study the bronchodilator's effectiveness for treating their respiratory conditions."""
* code
  * coding = $LNC#19926-5 "FEV1/FVC"
  * text = "FEV1/FVC pre-bronchodilator"
* value[x] only Quantity
* valueQuantity
  * unit = "Number"
  * system = $UCUM
  * code = #{Number}

Profile: FEV1_over_FVC_PreBronchodilator_Zscore
Parent: Observation
Id: FEV1-over-FVC-PreBronchodilator-Zscore
Title: "FEV1/FVC Pre-bronchodilator Zscore"
Description: """The Zscore of the ratio of forced expiratory volume in one second to forced vital capacity (FEV1/FVC) performed pre-bronchodilator.

The ratio of forced expiratory volume in one second to forced vital capacity is useful because different respiratory conditions affect each term in the ratio in different ways.

The Zscore of a measured value is determined by comparing the measured value to some reference distribution based on the patient's demographic information. The Zscore is useful as an indicator of how abnormal the measured value is.

This profile is for the Zscore of a FEV1/FVC observation which was performed pre-bronchodilator. Measurements of FEV1/FVC (and spirometry tests in general) may be performed both before and after administering a bronchodilator to the patient, in order to study the bronchodilator's effectiveness for treating their respiratory conditions."""
* code
  * text = "FEV1/FVC (z-score) pre-bronchodilator"
* value[x] only Quantity
* valueQuantity
  * unit = "Zscore"
  * system = $UCUM
  * code = #{Zscore}


/*
 * Post-bronchodilator
 */
Profile: FEV1_over_FVC_PostBronchodilator
Parent: Observation
Id: FEV1-over-FVC-PostBronchodilator
Title: "FEV1/FVC Post-bronchodilator"
Description: """The ratio of forced expiratory volume in one second to forced vital capacity (FEV1/FVC) performed post-bronchodilator.

The ratio of forced expiratory volume in one second to forced vital capacity is useful because different respiratory conditions affect each term in the ratio in different ways.

This profile is for a FEV1/FVC observation which was performed post-bronchodilator. Measurements of FEV1/FVC (and spirometry tests in general) may be performed both before and after administering a bronchodilator to the patient, in order to study the bronchodilator's effectiveness for treating their respiratory conditions."""
* code
  * coding = $LNC#19926-5 "FEV1/FVC"
  * text = "FEV1/FVC post-bronchodilator"
* value[x] only Quantity
* valueQuantity
  * unit = "Number"
  * system = $UCUM
  * code = #{Number}

Profile: FEV1_over_FVC_PostBronchodilator_Zscore
Parent: Observation
Id: FEV1-over-FVC-PostBronchodilator-Zscore
Title: "FEV1/FVC Post-bronchodilator Zscore"
Description: """The Zscore of the ratio of forced expiratory volume in one second to forced vital capacity (FEV1/FVC) performed post-bronchodilator.

The ratio of forced expiratory volume in one second to forced vital capacity is useful because different respiratory conditions affect each term in the ratio in different ways.

The Zscore of a measured value is determined by comparing the measured value to some reference distribution based on the patient's demographic information. The Zscore is useful as an indicator of how abnormal the measured value is.

This profile is for the Zscore of a FEV1/FVC observation which was performed post-bronchodilator. Measurements of FEV1/FVC (and spirometry tests in general) may be performed both before and after administering a bronchodilator to the patient, in order to study the bronchodilator's effectiveness for treating their respiratory conditions."""
* code
  * text = "FEV1/FVC (z-score) post-bronchodilator"
* value[x] only Quantity
* valueQuantity
  * unit = "Zscore"
  * system = $UCUM
  * code = #{Zscore}
