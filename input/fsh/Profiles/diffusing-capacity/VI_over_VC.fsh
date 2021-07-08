/*
 * Profile for VI/VC (ratio of inspired volume to vital capacity) Observation.
 *
 * NOTE: Vital capacity is usually written as "VC" or "V_C" where the C is subscripted.
 * I've seen some occurrences of pulmonary capillary blood volume also written as "V_C".
 * For example, see table 16 of "Interpretative Strategies for Lung Function Tests" (2005),
 * available at: <https://pubmed.ncbi.nlm.nih.gov/16264058/>
 *
 * This is very confusing!
 */
Profile: VI_over_VC
Parent: Observation
Id: VI-over-VC
Title: "VI/VC"
// TODO: Expand description to explain what VI and VC are, and how they are measured or calculated.
Description: """The ratio of inspired volume (VI) to vital capacity (VC), expressed as the percentage `VI/VC`."""
* code
  * text = "VI/VC"
* value[x] only Quantity
* valueQuantity
  * unit = "%"
  * system = $UCUM
  * code = #%