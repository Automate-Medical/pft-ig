/* Profiles for FEV1 PRE and POST Observations, as well as pre/post unspecified. */


/*
 * Pre/post bronchodilator not specified
 */
Profile: ForcedExpiratoryVolume_1s
Parent: Observation
Id: FEV1
Title: "Forced expiratory volume in 1 second"
Description: "Forced expiratory volume in 1 second"
* code = $LNC#20150-9 "FEV1"
* value[x] only Quantity
* valueQuantity
  * unit = "L"
  * system = $UCUM
  * code = #L

Profile: ForcedExpiratoryVolume_1s_Zscore
Parent: Observation
Id: FEV1-Zscore
Title: "Forced expiratory volume in 1 second (z-score)"
Description: "Forced expiratory volume in 1 second (z-score)"
* code
  * text = "FEV1 (z-score)"
* value[x] only Quantity
* valueQuantity
  * unit = "Zscore"
  * system = $UCUM
  * code = #{Zscore}

Profile: ForcedExpiratoryVolume_1s_percentPredicted
Parent: Observation
Id: FEV1-percentPredicted
Title: "Forced expiratory volume in 1 second (measured/predicted)"
Description: "Forced expiratory volume in 1 second (% pred)"
* code = $LNC#20152-5 "FEV1 measured/predicted"
* value[x] only Quantity
  * unit = "%"
  * system = $UCUM
  * code = #%


/*
 * Pre-bronchodilator
 */
Profile: ForcedExpiratoryVolume_1s_PreBronchodilator
Parent: Observation
Id: FEV1-PRE
Title: "Forced expiratory volume in 1 second pre-bronchodilator"
Description: "Forced expiratory volume in 1 second pre-bronchodilator"
* code = $LNC#20157-4 "FEV1 --pre bronchodilation"
* value[x] only Quantity
* valueQuantity
  * unit = "L"
  * system = $UCUM
  * code = #L

Profile: ForcedExpiratoryVolume_1s_PreBronchodilator_Zscore
Parent: Observation
Id: FEV1-PRE-Zscore
Title: "Forced expiratory volume in 1 second pre-bronchodilator (z-score) "
Description: "Forced expiratory volume in 1 second (z-score) pre-bronchodilator"
* code
  * text = "FEV1 (z-score) pre-bronchodilator"
* value[x] only Quantity
* valueQuantity
  * unit = "Zscore"
  * system = $UCUM
  * code = #{Zscore}

Profile: ForcedExpiratoryVolume_1s_PreBronchodilator_percentPredicted
Parent: Observation
Id: FEV1-PRE-percentPredicted
Title: "Forced expiratory volume in 1 second pre-bronchodilator (measured/predicted)"
Description: "Forced expiratory volume in 1 second (% pred) pre-bronchodilator"
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
Profile: ForcedExpiratoryVolume_1s_PostBronchodilator
Parent: Observation
Id: FEV1-POST
Title: "Forced expiratory volume in 1 second post-bronchodilator"
Description: "Forced expiratory volume in 1 second (liters) post-bronchodilator"
* code = $LNC#20155-8 "FEV1 --post bronchodilation"
* value[x] only Quantity
* valueQuantity
  * unit = "L"
  * system = $UCUM
  * code = #L

Profile: ForcedExpiratoryVolume_1s_PostBronchodilator_Zscore
Parent: Observation
Id: FEV1-POST-Zscore
Title: "Forced expiratory volume in 1 second pre-bronchodilator (z-score)"
Description: "Forced expiratory volume in 1 second (z-score) pre-bronchodilator"
* code
  * text = "FEV1 (z-score) post-bronchodilator"
* value[x] only Quantity
* valueQuantity
  * unit = "Zscore"
  * system = $UCUM
  * code = #{Zscore}

Profile: ForcedExpiratoryVolume_1s_PostBronchodilator_percentPredicted
Parent: Observation
Id: FEV1-POST-percentPredicted
Title: "Forced expiratory volume in 1 second pre-bronchodilator (measured/predicted)"
Description: "Forced expiratory volume in 1 second (% pred) post-bronchodilator"
* code
  * coding = $LNC#20152-5 "FEV1 measured/predicted"
  * text = "FEV1 measured/predicted post-bronchodilator"
* value[x] only Quantity
  * unit = "%"
  * system = $UCUM
  * code = #%