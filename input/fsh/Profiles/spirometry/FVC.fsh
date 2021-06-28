/* Profiles for FVC PRE and POST Observations, as well as pre/post unspecified. */


/*
 * Pre- or post-bronchodilator not specified
 */
Profile: ForcedVitalCapacity
Parent: Observation
Id: ForcedVitalCapacity
Title: "Forced Vital Capacity (FVC)"
Description: "Forced vital capacity (liters)"
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
Id: ForcedVitalCapacity-PercentOfPredicted
Title: "Forced Vital Capacity (FVC) Percent Of Predicted"
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
Id: ForcedVitalCapacityPreBronchodilator
Title: "Forced Vital Capacity (FVC) Pre-bronchodilator"
Description: "Forced vital capacity (liters) pre-bronchodilator."
* code = $LNC#19876-2 "Forced vital capacity [Volume] Respiratory system by Spirometry --pre bronchodilation"
* value[x] only Quantity
* valueQuantity
  * unit = "L"
  * system = $UCUM
  * code = #L

Profile: ForcedVitalCapacity_PreBronchodilator_Zscore
Parent: Observation
Id: ForcedVitalCapacityPreBronchodilator-Zscore
Title: "Forced Vital Capacity (FVC) Pre-bronchodilator Zscore"
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
Id: ForcedVitalCapacityPreBronchodilator-PercentOfPredicted
Title: "Forced Vital Capacity (FVC) Pre-bronchodilator Percent Of Predicted"
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
Id: ForcedVitalCapacityPostBronchodilator
Title: "Forced Vital Capacity (FVC) Post-bronchodilator"
Description: "Forced vital capacity post-bronchodilator"
* code =  $LNC#19874-7 "Forced vital capacity [Volume] Respiratory system by Spirometry --post bronchodilation"
* value[x] only Quantity
* valueQuantity
  * unit = "L"
  * system = $UCUM
  * code = #L

Profile: ForcedVitalCapacity_PostBronchodilator_Zscore
Parent: Observation
Id: ForcedVitalCapacityPostBronchodilator-Zscore
Title: "Forced Vital Capacity (FVC) Post-bronchodilator Zscore"
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
Id: ForcedVitalCapacityPostBronchodilator-PercentOfPredicted
Title: "Forced Vital Capacity (FVC) Post-bronchodilator Percent Of Predicted"
Description: "Forced vital capacity (% pred) post-bronchodilator."
* code = $LNC#19873-9 "FVC post bronchodilation measured/predicted"
* value[x] only Quantity
* valueQuantity
  * unit = "%"
  * system = $UCUM
  * code = #%

Profile: ForcedVitalCapacity_PostBronchodilator_mLChange
Parent: Observation
Id: ForcedVitalCapacityPostBronchodilator-mLChange
Title: "Forced Vital Capacity (FVC) Post-bronchodilator mL Change"
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
Id: ForcedVitalCapacityPostBronchodilator-PercentChange
Title: "Forced Vital Capacity (FVC) Post-bronchodilator Percent Change"
Description: "Forced vital capacity, post-bronchodilator change from pre-bronchodilator (%)"
* code = $LNC#69982-7 "FVC percent change Respiratory system"
* value[x] only Quantity
* valueQuantity
  * unit = "%"
  * system = $UCUM
  * code = #%