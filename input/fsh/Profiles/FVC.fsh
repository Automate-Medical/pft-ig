/* Profiles for FVC PRE and POST Observations, as well as pre/post unspecified. */


/*
 * Pre- or post-bronchodilator not specified
 */
Profile: ForcedVitalCapacity
Parent: Observation
Id: ForcedVitalCapacity
Title: "FVC"
Description: "Forced vital capacity (liters)"
* code = $LNC#19870-5 "Forced vital capacity [Volume] Respiratory system"
* value[x] only Quantity
* valueQuantity
  * unit = "L"
  * system = $UCUM
  * code = #L

Profile: ForcedVitalCapacity_Zscore
Parent: Observation
Id: FVC-Zscore
Title: "FVC_Zscore"
Description: "Forced vital capacity (z-score)."
* code
  * text = "Forced vital capacity (z-score)"
* value[x] only Quantity
* valueQuantity
  * unit = "Zscore"
  * system = $UCUM
  * code = #{Zscore}

Profile: ForcedVitalCapacity_percentPredicted
Parent: Observation
Id: FVC-percentPredicted
Title: "FVC_percentPredicted"
Description: "Forced vital capacity (% pred)."
* code = $LNC#19872-1 "FVC measured/predicted"
* value[x] only Quantity
  * unit = "%"
  * system = $UCUM
  * code = #%


/*
 * Pre-bronchodilator
 */
Profile: ForcedVitalCapacity_PreBronchodilator
Parent: Observation
Id: FVC-PRE
Title: "FVC_PRE"
Description: "Forced vital capacity (liters) pre-bronchodilator."
* code = $LNC#19876-2 "Forced vital capacity [Volume] Respiratory system by Spirometry --pre bronchodilation"
* value[x] only Quantity
* valueQuantity
  * unit = "L"
  * system = $UCUM
  * code = #L

Profile: ForcedVitalCapacity_PreBronchodilator_Zscore
Parent: Observation
Id: FVC-PRE-Zscore
Title: "FVC_PRE_Zscore"
Description: "Forced vital capacity (z-score) pre-bronchodilator."
* code
  * text = "Forced vital capacity (z-score) pre-bronchodilator"
* value[x] only Quantity
* valueQuantity
  * unit = "Zscore"
  * system = $UCUM
  * code = #{Zscore}

Profile: ForcedVitalCapacity_PreBronchodilator_percentPredicted
Parent: Observation
Id: FVC-PRE-percentPredicted
Title: "FVC_PRE_percentPredicted"
Description: "Forced vital capacity (% pred) pre-bronchodilator."
* code = $LNC#19871-3 "FVC pre bronchodilation measured/predicted"
* value[x] only Quantity
  * unit = "%"
  * system = $UCUM
  * code = #%


/*
 * Post-bronchodilator
 */
Profile: ForcedVitalCapacity_PostBronchodilator
Parent: Observation
Id: FVC-POST
Title: "FVC_POST"
Description: "Forced vital capacity (liters) post-bronchodilator"
* code =  $LNC#19874-7 "Forced vital capacity [Volume] Respiratory system by Spirometry --post bronchodilation"
* value[x] only Quantity
* valueQuantity
  * unit = "L"
  * system = $UCUM
  * code = #L

Profile: ForcedVitalCapacity_PostBronchodilator_Zscore
Parent: Observation
Id: FVC-POST-Zscore
Title: "FVC_POST_Zscore"
Description: "Forced vital capacity (z-score) post-bronchodilator."
* code
  * text = "Forced vital capacity (z-score) post-bronchodilator"
* value[x] only Quantity
* valueQuantity
  * unit = "Zscore"
  * system = $UCUM
  * code = #{Zscore}

Profile: ForcedVitalCapacity_PostBronchodilator_percentPredicted
Parent: Observation
Id: FVC-POST-percentPredicted
Title: "FVC_POST_percentPredicted"
Description: "Forced vital capacity (% pred) post-bronchodilator."
* code = $LNC#19873-9 "FVC post bronchodilation measured/predicted"
* value[x] only Quantity
* valueQuantity
  * unit = "%"
  * system = $UCUM
  * code = #%

Profile: ForcedVitalCapacity_PostBronchodilator_mLChange
Parent: Observation
Id: FVC-POST-mLChange
Title: "FVC_POST_mLChange"
Description: "Forced vital capacity, post-bronchodilator change from pre-bronchodilator (mL)"
* code
  * text = "Forced vital capacity, post-bronchodilator change from pre-bronchodilator (mL)"
* value[x] only Quantity
* valueQuantity
  * unit = "mL"
  * system = $UCUM
  * code = #mL

Profile: ForcedVitalCapacity_PostBronchodilator_percentChange
Parent: Observation
Id: FVC-POST-percentChange
Title: "FVC_POST_percentChange"
Description: "Forced vital capacity, post-bronchodilator change from pre-bronchodilator (%)"
* code = $LNC#69982-7 "FVC percent change Respiratory system"
* value[x] only Quantity
* valueQuantity
  * unit = "%"
  * system = $UCUM
  * code = #%