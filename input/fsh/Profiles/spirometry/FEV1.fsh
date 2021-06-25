/* Profiles for FEV1 PRE and POST Observations, as well as pre/post unspecified. */


/*
 * Pre/post bronchodilator not specified
 */
Profile: ForcedExpiratoryVolume_1s
Parent: Observation
Id: FEV1
Title: "ForcedExpiratoryVolume_1s"
Description: "Forced expiratory volume in one second"
* code = $LNC#20150-9 "FEV1"
* value[x] only Quantity
* valueQuantity
  * unit = "L"
  * system = $UCUM
  * code = #L

Profile: ForcedExpiratoryVolume_1s_Zscore
Parent: Observation
Id: FEV1-Zscore
Title: "ForcedExpiratoryVolume_1s_Zscore"
Description: "Forced expiratory volume in one second (z-score)"
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
Title: "ForcedExpiratoryVolume_1s_percentPredicted"
Description: "Forced expiratory volume in one second (% pred)"
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
Title: "ForcedExpiratoryVolume_1s_PreBronchodilator"
Description: "Forced expiratory volume in one second (liters) pre-bronchodilator"
* code = $LNC#20157-4 "FEV1 --pre bronchodilation"
* value[x] only Quantity
* valueQuantity
  * unit = "L"
  * system = $UCUM
  * code = #L

Profile: ForcedExpiratoryVolume_1s_PreBronchodilator_Zscore
Parent: Observation
Id: FEV1-PRE-Zscore
Title: "ForcedExpiratoryVolume_1s_PreBronchodilator_Zscore"
Description: "Forced expiratory volume in one second (z-score) pre-bronchodilator"
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
Title: "ForcedExpiratoryVolume_1s_PreBronchodilator_percentPredicted"
Description: "Forced expiratory volume in one second (% pred) pre-bronchodilator"
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
Title: "ForcedExpiratoryVolume_1s_Post-Bronchodilator"
Description: "Forced expiratory volume in one second (liters) post-bronchodilator"
* code = $LNC#20155-8 "FEV1 --post bronchodilation"
* value[x] only Quantity
* valueQuantity
  * unit = "L"
  * system = $UCUM
  * code = #L

Profile: ForcedExpiratoryVolume_1s_PostBronchodilator_Zscore
Parent: Observation
Id: FEV1-POST-Zscore
Title: "ForcedExpiratoryVolume_1s_PostBronchodilator_Zscore"
Description: "Forced expiratory volume in one second (z-score) pre-bronchodilator"
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
Title: "ForcedExpiratoryVolume_1s_PostBronchodilator_percentPredicted"
Description: "Forced expiratory volume in one second (% pred) post-bronchodilator"
* code
  * coding = $LNC#20152-5 "FEV1 measured/predicted"
  * text = "FEV1 measured/predicted post-bronchodilator"
* value[x] only Quantity
  * unit = "%"
  * system = $UCUM
  * code = #%

Profile: ForcedExpiratoryVolume_1s_PostBronchodilator_mLChange
Parent: Observation
Id: FEV1-POST-mLChange
Title: "ForcedExpiratoryVolume_1s_PostBronchodilator_mLChange"
Description: "Forced expiratory volume in one second, mL change from pre-bronchodilator to post-bronchodilator"
* code
  * text = "FEV1 volume change"
* value[x] only Quantity
* valueQuantity
  * unit = "mL"
  * system = $UCUM
  * code = #mL

Profile: ForcedExpiratoryVolume_1s_PostBronchodilator_percentChange
Parent: Observation
Id: FEV1-POST-percentChange
Title: "ForcedExpiratoryVolume_1s_PostBronchodilator_percentChange"
Description: "Forced expiratory volume in one second, percent change from pre-bronchodilator to post-bronchodilator"
* code
  * text = "FEV1 percent change"
* value[x] only Quantity
* valueQuantity
  * unit = "%"
  * system = $UCUM
  * code = #%