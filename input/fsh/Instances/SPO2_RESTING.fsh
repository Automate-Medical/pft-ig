/* "SpO2 at rest" is measured at the top of the example PFT.
 * Included because it may be relevant to diagnosis. */
Instance: SPO2_RESTING
InstanceOf: SPO2AtRest
Title: "SpO2 at rest"
Usage: #inline
* id = "SPO2-RESTING"
* status = #final
* code = $LNC#59417-6 "Oxygen saturation in Arterial blood by Pulse oximetry --resting"
* valueQuantity = 99 '%' "%"