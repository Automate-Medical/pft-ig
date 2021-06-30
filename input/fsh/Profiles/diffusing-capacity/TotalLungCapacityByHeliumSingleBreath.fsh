/* Profile for TLC_sb Observation. */
Profile: TotalLungCapacityByHeliumSingleBreath
Parent: Observation
Id: TotalLungCapacityByHeliumSingleBreath
Title: "Total Lung Capacity By Helium Single Breath (TLC_sb)"
// TODO: Expand description to explain how this is measured or calculated.
Description: """A measurement of total lung capacity by helium single breath (TLC_sb).

Total lung capacity by helium single breath is the maximum volume of air, in liters, that the lungs can contain."""
* code = $LNC#19858-0 "Total lung capacity by Helium single breath"
* value[x] only Quantity
* valueQuantity
  * unit = "L"
  * system = $UCUM
  * code = #L