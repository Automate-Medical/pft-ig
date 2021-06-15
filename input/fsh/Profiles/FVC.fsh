Profile: ForcedVitalCapacity
Parent: Observation
Id: ForcedVitalCapacity
Title: "ForcedVitalCapacity"
Description: "Forced vital capacity (liters)"
// * code: $LNC#19870-5 "Forced vital capacity [Volume] Respiratory system" or $LNC#19876-2 "Forced vital capacity [Volume] Respiratory system by Spirometry --pre bronchodilation" or $LNC#19875-4 "Forced vital capacity [Volume] Respiratory system --post bronchodilation"
* value[x] only Quantity
* valueQuantity
  * unit = "L"
  * system = $UCUM
  * code = #L

// ValueSet:    FVC_Codes_ValueSet
// Title:       "FVC LOINC Codes Value Set"
// Id:          FVC-Codes-ValueSet
// Description: "LOINC Codes for FVC Observations"
// *

/*
 * Pre-bronchodilator
 */
Profile: FVC_PRE
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

Profile: FVC_PRE_Zscore
Parent: Observation
Id: FVC-PRE-Zscore
Title: "FVC_PRE_Zscore"
Description: "Forced vital capacity (z-score) pre-bronchodilator."
* code
  * text = "Forced vital capacity (z-score) pre-bronchodilator"
* value[x] only Quantity
* valueQuantity
  * unit = "Z-score"
  * system = $UCUM
  * code = #{Zscore}

Profile: FVC_PRE_percentPredicted
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
Profile: FVC_POST
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

Profile: FVC_POST_Zscore
Parent: Observation
Id: FVC-POST-Zscore
Title: "FVC_POST_Zscore"
Description: "Forced vital capacity (z-score) post-bronchodilator."
* code
  * text = "Forced vital capacity (z-score) post-bronchodilator"
* value[x] only Quantity
* valueQuantity
  * unit = "Z-score"
  * system = $UCUM
  * code = #{Zscore}

Profile: FVC_POST_percentPredicted
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

Profile: FVC_POST_mLChange
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

Profile: FVC_POST_percentChange
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