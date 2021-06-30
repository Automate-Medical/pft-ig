/* FVC Observation Instances associated with the PFT DiagnosticReport */

// TODO: For now, we omit repeated data like subject, encounter, performer.
//       Focus of example is on parts which differ from Instance to Instance.

/*
 * FVC_PRE
 */
Instance: FVC_PRE
InstanceOf: ForcedVitalCapacityPreBronchodilator
Title: "FVC (L) pre-bronchodilator"
Description: "An example ForcedVitalCapacityPreBronchodilator resource for forced vital capacity volume, pre-bronchodilator."
Usage: #example
* text // `text` element inherited from `Observation` ancestor `DomainResource`
  * status = #additional
  * div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Test quality: A</div>" // TODO: This is given in the Composition Narrative but could go here?
* id = "FVC-PRE"
* status = #final
* category = $FHIR_ObservationCategory#procedure "Procedure"
* code = $LNC#19876-2 "Forced vital capacity [Volume] Respiratory system by Spirometry --pre bronchodilation"
* subject = Reference(PFT_Patient)
* encounter = Reference(PFT_Encounter)
* performer[+] = Reference(PFT_Technician)
* performer[+] = Reference(PFT_Organization)
* effectiveDateTime = "2015-02-07T13:28:17-05:00"
* valueQuantity = 3.90 'L' "L"
* referenceRange
  * low = 3.70 'L' "L"
  * type
    * text = "FVC normal bounds"

/*
 * FVC_PRE_zScore
 */
Instance: FVC_PRE_zScore
InstanceOf: ForcedVitalCapacityPreBronchodilator_Zscore
Title: "FVC z-score pre-bronchodilator"
Description: "An example ForcedVitalCapacityPreBronchodilator_Zscore resource for forced vital capacity z-score, pre-bronchodilator."
Usage: #example
* id = "FVC-PRE-Zscore"
* status = #final
* code
  * text = "Forced vital capacity (z-score) pre-bronchodilator"
* valueQuantity = -1.34 '{Zscore}' "Zscore"
* derivedFrom[+] = Reference(FVC_PRE)
* derivedFrom[+] = Reference(FVC_PREREF_predicted)

/*
 * FVC PRE measured/predicted
 */
Instance: FVC_PRE_percentPredicted
InstanceOf: ForcedVitalCapacityPreBronchodilator_PercentOfPredicted
Title: "FVC pre-bronchodilator, % of predicted value"
Description: "An example ForcedVitalCapacityPreBronchodilator_PercentOfPredicted resource for forced vital capacity measured/predicted, pre-bronchodilator."
Usage: #example
* id = "FVC-PRE-percentPredicted"
* status = #final
* code = $LNC#19871-3 "FVC pre bronchodilation measured/predicted"
* valueQuantity = 82 '%' "%"
* derivedFrom[+] = Reference(FVC_PRE)
* derivedFrom[+] = Reference(FVC_PREREF_predicted)


/* FVC POST Observations. */

/*
 * FVC_POST
 */
Instance: FVC_POST
InstanceOf: ForcedVitalCapacityPostBronchodilator
Title: "FVC (L) post-bronchodilator"
Description: "An example ForcedVitalCapacityPostBronchodilator resource for forced vital capacity volume, post-bronchodilator."
Usage: #example
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
InstanceOf: ForcedVitalCapacityPostBronchodilator_Zscore
Title: "FVC z-score post-bronchodilator"
Description: "An example ForcedVitalCapacityPostBronchodilator_Zscore resource for forced vital capacity z-score, post-bronchodilator."
Usage: #example
* id = "FVC-POST-Zscore"
* status = #final
* code
  * text = "Forced vital capacity (z-score) post-bronchodilator"
* valueQuantity = -0.09 '{Zscore}' "Zscore"
* derivedFrom[+] = Reference(FVC_POST)
// TODO: Do FVC_POST measurements use the same reference values as FVC_PRE?
// * derivedFrom[+] = Reference(FVC_PREREF_predicted)

/*
 * FVC POST measured/predicted
 */
Instance: FVC_POST_percentPredicted
InstanceOf: ForcedVitalCapacityPostBronchodilator_PercentOfPredicted
Title: "FVC post-bronchodilator, % of predicted value"
Description: "An example ForcedVitalCapacityPostBronchodilator_PercentOfPredicted resource for forced vital capacity measured/predicted, post-bronchodilator."
Usage: #example
* id = "FVC-POST-percentPredicted"
* status = #final
* code = $LNC#19873-9 "FVC post bronchodilation measured/predicted"
* valueQuantity = 99 '%' "%"
* derivedFrom[+] = Reference(FVC_POST)
// * derivedFrom[+] = Reference(FVC_PREREF_predicted)

Instance: FVC_POST_mLChange
InstanceOf: ForcedVitalCapacityPostBronchodilator_mLChange
Title: "FVC post-bronchodilator, change from pre-bronchodilator (mL)"
Description: "An example ForcedVitalCapacityPostBronchodilator_mLChange resource for the volume change in forced vital capacity volume, from pre-bronchodilator to post-bronchodilator."
Usage: #example
* id = "FVC-POST-mLChange"
* status = #final
* code
  * text = "Forced vital capacity, post-bronchodilator change from pre-bronchodilator (mL)"
* valueQuantity = 600 'mL' "mL"
* derivedFrom[+] = Reference(FVC_PRE)
* derivedFrom[+] = Reference(FVC_POST)

Instance: FVC_POST_percentChange
InstanceOf: ForcedVitalCapacityPostBronchodilator_PercentChange
Title: "FVC post-bronchodilator, change from pre-bronchodilator (%)"
Description: "An example ForcedVitalCapacityPostBronchodilator_PercentChange resource for the percent change in forced vital capacity volume, from pre-bronchodilator to post-bronchodilator."
Usage: #example
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
 */
Instance: FVC_PREREF_predicted
InstanceOf: Observation
Title: "FVC (L) pre-bronchodilator reference value"
Description: "An example of using Observation to include a forced vital capacity reference value."
Usage: #example
* id = "FVC-PREREF-predicted"
* status = #final
* code = $LNC#19869-7 "Forced vital capacity [Volume] Respiratory system Predicted"
* note = FVC_referenceValueAnnotation

/*
 * Annotation for FVC reference values derived from GLI 2012.
 */
Instance: FVC_referenceValueAnnotation
InstanceOf: Annotation
Title: "Reference values for FVC pre-bronchodilator"
Description: "An example annotation for using Observation to include a forced vital capacity reference value."
Usage: #inline
* id = "FVC-referenceValueAnnotation"
* authorString = "Created for PFT example"
* time = "2021-06-10"
* text = "Reference value, taken from GLI 2012. Depends on the patient's demographic info."