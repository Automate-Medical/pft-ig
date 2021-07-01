/* FET Instances */

/*
 * Pre-bronchodilator
 */
Instance: FET_PRE
InstanceOf: ForcedExpiratoryTimePreBronchodilator
Usage: #example
Title: "FET PRE"
Description: """An example ForcedExpiratoryTimePreBronchodilator resource."""
* id = "FET-PRE"
* status = #final
* code
  * coding = $LNC#65819-5 "Forced expiratory time"
  * text = "Forced expiratory time pre-bronchodilator"
* valueQuantity = 10.3 's' "s"

/*
 * Post-bronchodilator
 */
Instance: FET_POST
InstanceOf: ForcedExpiratoryTimePostBronchodilator
Usage: #example
Title: "FET POST"
Description: """An example ForcedExpiratoryTimePostBronchodilator resource."""
* id = "FET-POST"
* status = #final
* code
  * coding = $LNC#65819-5 "Forced expiratory time"
  * text = "Forced expiratory time post-bronchodilator"
* valueQuantity = 11.2 's' "s"