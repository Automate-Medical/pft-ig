/* Profiles for KCO (aka DLCO/VA) PRE and POST Observations, as well as pre/post unspecified. */

ValueSet: KCO_Codes
Id: KCO-Codes
Title: "KCO Codes"
Description: """LOINC codes for carbon monoxide transfer coefficient (KCO) observations performed pre-bronchodilator, post-bronchodilator, and pre/post unspecified."""
* include $LNC#19916-6	"Diffusion capacity/Alveolar volume"
* include $LNC#82619-8	"Diffusion capacity/Alveolar volume --pre bronchodilation"
* include $LNC#82620-6	"Diffusion capacity/Alveolar volume --post bronchodilation"

/*
 * Pre- or post-bronchodilator not specified
 */
Profile: KCO
Parent: Observation
Id: KCO
Title: "KCO"
Description: """A measurement of carbon monoxide transfer coefficient (KCO). KCO is also referred to as DLCO/VA."""
* code from KCO_Codes
* value[x] only Quantity
* valueQuantity
  * unit = "mL/min/mm[Hg]/L"
  * system = $UCUM
  * code = #mL/min/mm[Hg]/L

Profile: KCO_Zscore
Parent: Observation
Id: KCO-Zscore
Title: "KCO Zscore"
Description: """The Zscore of a carbon monoxide transfer coefficient (KCO) measurement. KCO is also referred to as DLCO/VA."""
* code
  * text = "Diffusion capacity/Alveolar volume (z-score)"
* value[x] only Quantity
* valueQuantity
  * unit = "Zscore"
  * system = $UCUM
  * code = #{Zscore}

Profile: KCO_PercentOfPredicted
Parent: Observation
Id: KCO-PercentOfPredicted
Title: "KCO Percent Of Predicted"
Description: """The ratio of a carbon monoxide transfer coefficient (KCO) measurement to some predicted value, expressed as the percentage `measured/predicted`. This is also referred to as \"% predicted\" or \"% pred\"."""
* code
  * text = "Diffusion capacity/Alveolar volume (measured/predicted)"
* value[x] only Quantity
* valueQuantity
  * unit = "%"
  * system = $UCUM
  * code = #%


/*
 * Pre-bronchodilator
 */
Profile: KCOPreBronchodilator
Parent: KCO
Id: KCOPreBronchodilator
Title: "KCO Pre-bronchodilator"
Description: """A measurement of carbon monoxide transfer coefficient (KCO) performed pre-bronchodilator. KCO is also referred to as DLCO/VA."""
* code = $LNC#82619-8	"Diffusion capacity/Alveolar volume --pre bronchodilation"
* value[x] only Quantity
* valueQuantity
  * unit = "mL/min/mm[Hg]/L"
  * system = $UCUM
  * code = #mL/min/mm[Hg]/L

Profile: KCOPreBronchodilator_Zscore
Parent: Observation
Id: KCOPreBronchodilator-Zscore
Title: "KCO Pre-bronchodilator Zscore"
Description: """The Zscore of a carbon monoxide transfer coefficient (KCO) measurement performed pre-bronchodilator. KCO is also referred to as DLCO/VA."""
* code
  * text = "Diffusion capacity/Alveolar volume (z-score) pre-bronchodilator"
* value[x] only Quantity
* valueQuantity
  * unit = "Zscore"
  * system = $UCUM
  * code = #{Zscore}

Profile: KCOPreBronchodilator_PercentOfPredicted
Parent: Observation
Id: KCOPreBronchodilator-PercentOfPredicted
Title: "KCO Pre-bronchodilator Percent Of Predicted"
Description: """The ratio of a carbon monoxide transfer coefficient (KCO) measurement performed pre-bronchodilator to some predicted value, expressed as the percentage `measured/predicted`. This is also referred to as \"% predicted\" or \"% pred\"."""
* code
  * text = "Diffusion capacity/Alveolar volume (measured/predicted) pre-bronchodilator"
* value[x] only Quantity
* valueQuantity
  * unit = "%"
  * system = $UCUM
  * code = #%

/*
 * Post-bronchodilator
 */
Profile: KCOPostBronchodilator
Parent: KCO
Id: KCOPostBronchodilator
Title: "KCO Post-bronchodilator"
Description: """A measurement of carbon monoxide transfer coefficient (KCO) performed post-bronchodilator. KCO is also referred to as DLCO/VA."""
* code = $LNC#82620-6	"Diffusion capacity/Alveolar volume --post bronchodilation"
* value[x] only Quantity
* valueQuantity
  * unit = "mL/min/mm[Hg]/L"
  * system = $UCUM
  * code = #mL/min/mm[Hg]/L


Profile: KCOPostBronchodilator_Zscore
Parent: Observation
Id: KCOPostBronchodilator-Zscore
Title: "KCO Post-bronchodilator Zscore"
Description: """The Zscore of a carbon monoxide transfer coefficient (KCO) measurement performed post-bronchodilator. KCO is also referred to as DLCO/VA."""
* code
  * text = "Diffusion capacity/Alveolar volume (z-score) post-bronchodilator"
* value[x] only Quantity
* valueQuantity
  * unit = "Zscore"
  * system = $UCUM
  * code = #{Zscore}

Profile: KCOPostBronchodilator_PercentOfPredicted
Parent: Observation
Id: KCOPostBronchodilator-PercentOfPredicted
Title: "KCO Post-bronchodilator Percent Of Predicted"
Description: """The ratio of a carbon monoxide transfer coefficient (KCO) measurement performed post-bronchodilator to some predicted value, expressed as the percentage `measured/predicted`. This is also referred to as \"% predicted\" or \"% pred\"."""
* code
  * text = "Diffusion capacity/Alveolar volume (measured/predicted) post-bronchodilator"
* value[x] only Quantity
* valueQuantity
  * unit = "%"
  * system = $UCUM
  * code = #%