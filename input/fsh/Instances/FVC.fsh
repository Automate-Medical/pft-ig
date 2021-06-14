/* FVC Observation Instances associated with the PFT DiagnosticReport */

// TODO: For now, we omit repeated data like subject, encounter, performer,
//       effectiveDateTime, etc.
//       Focus of example is on parts which differ from Instance to Instance.

// TODO: Getting errors trying to add hh:mm:ss to effectDateTime.

// TODO: Can we flag valueQuantity to not lose precision (trailing zeros) when compiled to JSON?

// TODO: Am I using LOINC Part codes properly when adding to z-score?

/*
 * FVC_PRE
 */
Instance: FVC_PRE
InstanceOf: Observation
Title: "FVC (L) pre-bronchodilator"
Usage: #example
* text // `text` element inherited from `Observation` ancestor `DomainResource`
  * status = #additional
  * div = "<div>Test quality: A</div>" // TODO: This is given in the Composition Narrative but could go here?
* id = "FVC-PRE"
* status = #final
* category = $FHIR_ObservationCategory#procedure "Procedure"
* code = $LNC#19876-2 "Forced vital capacity [Volume] Respiratory system by Spirometry --pre bronchodilation"
* subject = Reference(PFT_Patient)
* encounter = Reference(PFT_Encounter)
* performer[+] = Reference(PFT_Technician)
* performer[+] = Reference(PFT_Organization)
* effectiveDateTime = "2017-02-20"
* valueQuantity = 3.90 'L' "L"
* referenceRange
  * low = 3.70 'L' "L"
  * type
    * text = "FVC normal bounds"

/*
 * FVC_PRE_zScore
 */
Instance: FVC_PRE_zScore
InstanceOf: Observation
Title: "FVC z-score pre-bronchodilator"
Usage: #example
* id = "FVC-PRE-Zscore"
* status = #final
* code
  * coding[+] = $LNC#19876-2 "Forced vital capacity [Volume] Respiratory system by Spirometry --pre bronchodilation"
  * coding[+] = $LNC#LP164005-3 "Z-score"
  * text = "FVC_PRE Z-score"
* valueQuantity = -1.34 '{Zscore}' "Z-score"
* derivedFrom[+] = Reference(FVC_PRE)
* derivedFrom[+] = Reference(FVC_PREREF_predicted)
* derivedFrom[+] = Reference(FVC_PREREF_stdDev)

/*
 * FVC PRE measured/predicted
 */
Instance: FVC_PRE_percentPredicted
InstanceOf: Observation
Title: "FVC pre-bronchodilator, % of predicted value"
Usage: #example
* id = "FVC-PRE-percentPredicted"
* status = #final
* code = $LNC#19871-3 "FVC pre bronchodilation measured/predicted"
* valueQuantity = 82 '%' "%"
* derivedFrom[+] = Reference(FVC_PRE)
* derivedFrom[+] = Reference(FVC_PREREF_predicted)


/* FVC POST Observations. Probably move these into separate file. */

/*
 * FVC_POST
 */
Instance: FVC_POST
InstanceOf: Observation
Title: "FVC (L) post-bronchodilator"
Usage: #inline
* id = "FVC-POST"
* status = #final
* code = $LNC#19874-7 "Forced vital capacity [Volume] Respiratory system by Spirometry --post bronchodilation"
* valueQuantity = 4.70 'L' "L"
* referenceRange
  * low = 3.70 'L' "L"
  * type
    * text = "FVC normal bounds"

/*
 * FVC_POST_zScore
 */
Instance: FVC_POST_zScore
InstanceOf: Observation
Title: "FVC z-score post-bronchodilator"
Usage: #inline
* id = "FVC-POST-Zscore"
* status = #final
* code
  * coding[+] = $LNC#19874-7 "Forced vital capacity [Volume] Respiratory system by Spirometry --post bronchodilation"
  * coding[+] = $LNC#LP164005-3 "Z-score"
  * text = "FVC_POST z-score"
* valueQuantity = -0.09 '{Zscore}' "Z-score"
* derivedFrom[+] = Reference(FVC_POST)
// TODO: Do FVC_POST measurements use the same reference values as FVC_PRE?
// * derivedFrom[+] = Reference(FVC_PREREF_predicted)
// * derivedFrom[+] = Reference(FVC_PREREF_stdDev)

/*
 * FVC POST measured/predicted
 */
Instance: FVC_POST_percentPredicted
InstanceOf: Observation
Title: "FVC post-bronchodilator, % of predicted value"
Usage: #inline
* id = "FVC-POST-percentPredicted"
* status = #final
* code = $LNC#19873-9 "FVC post bronchodilation measured/predicted"
* valueQuantity = 99 '%' "%"
* derivedFrom[+] = Reference(FVC_POST)
// * derivedFrom[+] = Reference(FVC_PREREF_predicted)

Instance: FVC_POST_mLChange
InstanceOf: Observation
Title: "FVC post-bronchodilator, change from pre-bronchodilator (mL)"
Usage: #inline
* id = "FVC-POST-mLChange"
* status = #final
* code
  * text = "FVC POST change (mL)"
* valueQuantity = 600 'mL' "mL"
* derivedFrom[+] = Reference(FVC_PRE)
* derivedFrom[+] = Reference(FVC_POST)

Instance: FVC_POST_percentChange
InstanceOf: Observation
Title: "FVC post-bronchodilator, change from pre-bronchodilator (%)"
Usage: #inline
* id = "FVC-post-percentChange"
* status = #final
* code = $LNC#69982-7 "FVC percent change Respiratory system"
* valueQuantity = 20 '%' "%"
* derivedFrom[+] = Reference(FVC_PRE)
* derivedFrom[+] = Reference(FVC_POST)


// Stub reference values for FVC measurements.
//
// These have no set `value` field, and in practice should be derived from the
// patient's demographic info.

/*
 * Reference value for FVC_PRE_percentPredicted. This should be a number of liters.
 *
 * TODO: I think this is the mean of the distribution?
 *       Then this plus standard deviation can give the z-score.
 */
Instance: FVC_PREREF_predicted
InstanceOf: Observation
Title: "FVC (L) pre-bronchodilator reference value"
Usage: #inline
* id = "FVC-PREREF-predicted"
* status = #final
* code = $LNC#19869-7 "Forced vital capacity [Volume] Respiratory system Predicted"
* note = FVC_referenceValueAnnotation

/*
 * Reference value for FVC_PRE_zScore.
 *
 * TODO: This is stdDev because we can derive z-score from mean + std dev, but
 *       I'm unclear on how the z-score is determined for PFTs in practice.
 */
Instance: FVC_PREREF_stdDev
InstanceOf: Observation
Title: "FVC (L) pre-bronchodilator reference value"
Usage: #inline
* id = "FVC-PREREF-stdDev"
* status = #final
* code
  // * coding = $LNC#19876-2 "Forced vital capacity [Volume] Respiratory system by Spirometry --pre bronchodilation"
  * text = "Reference value: standard deviation for FVC PRE "
// * valueQuantity = {StandardDeviation} "Standard Deviation" // TODO: Add value before {StandardDeviation}
* note = FVC_referenceValueAnnotation

/*
 * Annotation for FVC reference values derived from GLI 2012.
 */
Instance: FVC_referenceValueAnnotation
InstanceOf: Annotation
Title: "Reference values for FVC pre-bronchodilator"
Usage: #inline
* id = "FVC-referenceValueAnnotation"
* authorString = "Created for PFT example"
* time = "2021-06-10"
* text = "Reference value, taken from GLI 2012. Depends on the patient's demographic info."