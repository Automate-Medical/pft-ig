/* Profiles for FVC PRE and POST Observations, as well as pre/post unspecified. */


/*
 * Pre- or post-bronchodilator not specified
 */
Profile: ForcedVitalCapacity
Parent: Observation
Id: ForcedVitalCapacity
Title: "Forced vital capacity"
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
Title: "Forced vital capacity z-score"
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
Title: "Forced vital capacity measured/predicted"
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
Title: "Forced vital capacity pre-bronchodilator"
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
Title: "Forced vital capacity pre-bronchodilator z-score"
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
Title: "Forced vital capacity pre-bronchodilator measured/predicted"
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
Title: "Forced vital capacity post-bronchodilator"
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
Title: "Forced vital capacity post-bronchodilator z-score"
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
Title: "Forced vital capacity post-bronchodilator measured/predicted"
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
Title: "Forced vital capacity post-bronchodilator mL change"
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
Title: "Forced vital capacity post-bronchodilator percent change"
Description: "Forced vital capacity, post-bronchodilator change from pre-bronchodilator (%)"
* code = $LNC#69982-7 "FVC percent change Respiratory system"
* value[x] only Quantity
* valueQuantity
  * unit = "%"
  * system = $UCUM
  * code = #%