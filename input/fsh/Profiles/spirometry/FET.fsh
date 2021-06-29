/* Profiles for FET PRE and POST Observations, as well as pre/post unspecified. */


/*
 * Pre/post bronchodilator not specified
 */
Profile: ForcedExpiratoryTime
Parent: Observation
Id: ForcedExpiratoryTime
Title: "Forced Expiratory Time (FET)"
Description: "Forced expiratory time (seconds)"
* code = $LNC#65819-5 "Forced expiratory time"
* value[x] only Quantity
* valueQuantity
  * unit = "s"
  * system = $UCUM
  * code = #s


/*
 * Pre-bronchodilator
 */
Profile: ForcedExpiratoryTimePreBronchodilator
Parent: Observation
Id: ForcedExpiratoryTime-PreBronchodilator
Title: "Forced Expiratory Time (FET) Pre-bronchodilator"
Description: "Forced expiratory time (seconds) pre-bronchodilator"
* code
  * coding = $LNC#65819-5 "Forced expiratory time"
  * text = "Forced expiratory time pre-bronchodilator"
* value[x] only Quantity
* valueQuantity
  * unit = "s"
  * system = $UCUM
  * code = #s

/*
 * Post-bronchodilator
 */
Profile: ForcedExpiratoryTimePostBronchodilator
Parent: Observation
Id: ForcedExpiratoryTime-PostBronchodilator
Title: "Forced Expiratory Time (FET) Post-bronchodilator"
Description: "Forced expiratory time (seconds) post-bronchodilator"
* code
  * coding = $LNC#65819-5 "Forced expiratory time"
  * text = "Forced expiratory time post-bronchodilator"
* value[x] only Quantity
* valueQuantity
  * unit = "s"
  * system = $UCUM
  * code = #s