/* Profiles for FEV1 PRE and POST Observations, as well as pre/post unspecified. */


/*
 * Pre/post bronchodilator not specified
 */
Profile: ForcedExpiratoryVolume_1s
Parent: Observation
Id: ForcedExpiratoryVolume1Sec
Title: "Forced Expiratory Volume In 1 Second (FEV1)"
Description: "Forced expiratory volume in 1 second"
* code = $LNC#20150-9 "FEV1"
* value[x] only Quantity
* valueQuantity
  * unit = "L"
  * system = $UCUM
  * code = #L

Profile: ForcedExpiratoryVolume_1s_Zscore
Parent: Observation
Id: ForcedExpiratoryVolume1Sec-Zscore
Title: "Forced Expiratory Volume In 1 Second (FEV1) Zscore"
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
Id: ForcedExpiratoryVolume1Sec-PercentOfPredicted
Title: "Forced Expiratory Volume In 1 Second (FEV1) Percent Of Predicted"
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
Id: ForcedExpiratoryVolume1SecPreBronchodilator
Title: "Forced Expiratory Volume In 1 Second (FEV1) Pre-bronchodilator"
Description: "Forced expiratory volume in 1 second pre-bronchodilator"
* code = $LNC#20157-4 "FEV1 --pre bronchodilation"
* value[x] only Quantity
* valueQuantity
  * unit = "L"
  * system = $UCUM
  * code = #L

Profile: ForcedExpiratoryVolume_1s_PreBronchodilator_Zscore
Parent: Observation
Id: ForcedExpiratoryVolume1SecPreBronchodilator-Zscore
Title: "Forced Expiratory Volume In 1 Second (FEV1) Pre-bronchodilator Zscore"
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
Id: ForcedExpiratoryVolume1SecPreBronchodilator-PercentOfPredicted
Title: "Forced Expiratory Volume In 1 Second (FEV1) Pre-bronchodilator Percent Of Predicted"
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
Id: ForcedExpiratoryVolume1SecPostbronchodilator
Title: "Forced Expiratory Volume In 1 Second (FEV1) Post-bronchodilator"
Description: "Forced expiratory volume in 1 second (liters) post-bronchodilator"
* code = $LNC#20155-8 "FEV1 --post bronchodilation"
* value[x] only Quantity
* valueQuantity
  * unit = "L"
  * system = $UCUM
  * code = #L

Profile: ForcedExpiratoryVolume_1s_PostBronchodilator_Zscore
Parent: Observation
Id: ForcedExpiratoryVolume1SecPostbronchodilator-Zscore
Title: "Forced Expiratory Volume In 1 Second (FEV1) Post-bronchodilator Zscore"
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
Id: ForcedExpiratoryVolume1SecPostbronchodilator-PercentOfPredicted
Title: "Forced Expiratory Volume In 1 Second (FEV1) Post-bronchodilator Percent Of Predicted"
Description: "Forced expiratory volume in 1 second (% pred) post-bronchodilator"
* code
  * coding = $LNC#20152-5 "FEV1 measured/predicted"
  * text = "FEV1 measured/predicted post-bronchodilator"
* value[x] only Quantity
  * unit = "%"
  * system = $UCUM
  * code = #%

Profile: ForcedExpiratoryVolume_1s_PostBronchodilator_mLChange
Parent: Observation
Id: ForcedExpiratoryVolume1SecPostbronchodilator-mLChange
Title: "Forced Expiratory Volume In 1 Second (FEV1) Post-bronchodilator mL Change"
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
Id: ForcedExpiratoryVolume1SecPostbronchodilator-PercentChange
Title: "Forced Expiratory Volume In 1 Second (FEV1) Post-bronchodilator Percent Change"
Description: "Forced expiratory volume in one second, percent change from pre-bronchodilator to post-bronchodilator"
* code
  * text = "FEV1 percent change"
* value[x] only Quantity
* valueQuantity
  * unit = "%"
  * system = $UCUM
  * code = #%