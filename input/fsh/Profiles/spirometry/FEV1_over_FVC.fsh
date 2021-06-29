/* Profiles for FEV1/FVC PRE and POST Observations, as well as pre/post unspecified. */


/*
 * Pre/post bronchodilator not specified
 */
Profile: FEV1_over_FVC
Parent: Observation
Id: FEV1-over-FVC
Title: "FEV1/FVC"
Description: "FEV1/FVC"
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
Description: "FEV1/FVC (z-score)"
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
Description: "FEV1/FVC pre-bronchodilator"
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
Description: "FEV1/FVC (z-score) pre-bronchodilator"
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
Description: "FEV1/FVC post-bronchodilator"
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
Description: "FEV1/FVC (z-score) post-bronchodilator"
* code
  * text = "FEV1/FVC (z-score) post-bronchodilator"
* value[x] only Quantity
* valueQuantity
  * unit = "Zscore"
  * system = $UCUM
  * code = #{Zscore}
