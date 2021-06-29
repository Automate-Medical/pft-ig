/* Profile for VI/VC Observation. */
Profile: VI_over_VC
Parent: Observation
Id: VI-over-VC
Title: "VI/VC"
Description: "Inspired volume (V_I) as a percentage of vital capacity (V_C)."
* code
  * text = "VI/VC"
* value[x] only Quantity
* valueQuantity
  * unit = "%"
  * system = $UCUM
  * code = #%