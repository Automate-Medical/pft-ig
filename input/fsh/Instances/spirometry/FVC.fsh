/* FVC Observation Instances associated with the PFT DiagnosticReport */

// TODO: For now, we omit repeated data like subject, encounter, performer.
//       Focus of example is on parts which differ from Instance to Instance.

/*
 * Pre/post bronchodilator not specified
 */
Instance: FVC
InstanceOf: ForcedVitalCapacity
Title: "FVC pre/post unspecified"
Description: "An example ForcedVitalCapacity resource."
Usage: #example
* id = "FVC"
* status = #final
* code = $LNC#19870-5 "Forced vital capacity [Volume] Respiratory system"
* valueQuantity = 3.90 'L' "L"
* referenceRange
  * low = 3.70 'L' "L"
  * type
    * text = "FVC normal bounds"

Instance: FVC_ZScore
InstanceOf: ForcedVitalCapacity_Zscore
Title: "FVC pre/post unspecified Zscore"
Description: "An example ForcedVitalCapacity_Zscore resource."
Usage: #example
* id = "FVC-Zscore"
* status = #final
* code
  * text = "Forced vital capacity (z-score)"
* valueQuantity = -1.34 '{Zscore}' "Zscore"
* derivedFrom[+] = Reference(FVC)

Instance: FVC_percentPredicted
InstanceOf: ForcedVitalCapacity_PercentOfPredicted
Title: "FVC pre/post unspecified % of predicted value"
Description: "An example ForcedVitalCapacity_PercentOfPredicted resource."
Usage: #example
* id = "FVC-percentPredicted"
* status = #final
* code = $LNC#19872-1 "FVC measured/predicted"
* valueQuantity = 82 '%' "%"
* derivedFrom[+] = Reference(FVC)

/*
 * Pre-bronchodilator
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


/*
 * Post-bronchodilator
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
