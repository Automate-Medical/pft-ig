/* Profiles for FET PRE and POST Observations, as well as pre/post unspecified. */


/*
 * Pre/post bronchodilator not specified
 */
Profile: ForcedExpiratoryTime
Parent: Observation
Id: ForcedExpiratoryTime
Title: "Forced Expiratory Time (FET)"
Description: """A measurement of forced expiratory time (FET).

Forced expiratory time is the total length of time, in seconds, that it takes to forcibly exhale fully after taking as deep a breath as possible.

This profile is for a forced expiratory time observation which was not specified as performed pre or post-bronchodilator. Measurements of forced expiratory time (and spirometry tests in general) may be performed both before and after administering a bronchodilator to the patient, in order to study the bronchodilator's effectiveness for treating their respiratory conditions."""
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
Parent: ForcedExpiratoryTime
Id: ForcedExpiratoryTime-PreBronchodilator
Title: "Forced Expiratory Time (FET) Pre-bronchodilator"
Description: """A measurement of forced expiratory time (FET) performed pre-bronchodilator.

Forced expiratory time is the total length of time, in seconds, that it takes to forcibly exhale fully after taking as deep a breath as possible.

This profile is for a forced expiratory time observation which was performed pre-bronchodilator. Measurements of forced expiratory time (and spirometry tests in general) may be performed both before and after administering a bronchodilator to the patient, in order to study the bronchodilator's effectiveness for treating their respiratory conditions."""
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
Parent: ForcedExpiratoryTime
Id: ForcedExpiratoryTime-PostBronchodilator
Title: "Forced Expiratory Time (FET) Post-bronchodilator"
Description: """A measurement of forced expiratory time (FET) performed post-bronchodilator.

Forced expiratory time is the total length of time, in seconds, that it takes to forcibly exhale fully after taking as deep a breath as possible.

This profile is for a forced expiratory time observation which was performed post-bronchodilator. Measurements of forced expiratory time (and spirometry tests in general) may be performed both before and after administering a bronchodilator to the patient, in order to study the bronchodilator's effectiveness for treating their respiratory conditions."""
* code
  * coding = $LNC#65819-5 "Forced expiratory time"
  * text = "Forced expiratory time post-bronchodilator"
* value[x] only Quantity
* valueQuantity
  * unit = "s"
  * system = $UCUM
  * code = #s