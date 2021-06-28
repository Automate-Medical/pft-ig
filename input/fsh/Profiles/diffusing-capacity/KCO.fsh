/* Profiles for KCO (aka DLCO/VA) PRE and POST Observations, as well as pre/post unspecified. */


/*
 * Pre- or post-bronchodilator not specified
 */
Profile: CarbonMonoxideTransferCoefficient
Parent: Observation
Id: KCO
Title: "KCO"
Description: """A measurement of a carbon monoxide transfer coefficient, in mL/min/mmHg.

Also referred to as KCO or DLCO/VA."""
* code = $LNC#19916-6	"Diffusion capacity/Alveolar volume	"
* value[x] only Quantity
* valueQuantity
  * unit = "mL/min/mmHg"
  * system = $UCUM
  * code = #mL/min/mmHg

Profile: CarbonMonoxideTransferCoefficient_Zscore
Parent: Observation
Id: KCO-Zscore
Title: "KCO Zscore"
Description: "The z-score of a carbon monoxide transfer coefficient measurement, calculated from some reference distribution."
* code
  * text = "Diffusion capacity/Alveolar volume (z-score)"
* value[x] only Quantity
* valueQuantity
  * unit = "Zscore"
  * system = $UCUM
  * code = #{Zscore}

Profile: CarbonMonoxideTransferCoefficient_percentPredicted
Parent: Observation
Id: KCO-PercentOfPredicted
Title: "KCO Percent Of Predicted"
Description: "A measurement of carbon monoxide transfer coefficient as the percentage of some predicted reference value."
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
Profile: CarbonMonoxideTransferCoefficient_PreBronchodilator
Parent: Observation
Id: KCOPreBronchodilator
Title: "KCO Pre-bronchodilator"
Description: """A measurement of carbon monoxide transfer coefficient pre-bronchodilation, in mL/min/mmHg.

Also referred to as KCO or DLCO/VA."""
* code = $LNC#82619-8	"Diffusion capacity/Alveolar volume --pre bronchodilation"
* value[x] only Quantity
* valueQuantity
  * unit = "mL/min/mmHg"
  * system = $UCUM
  * code = #mL/min/mmHg

Profile: CarbonMonoxideTransferCoefficient_PreBronchodilator_Zscore
Parent: Observation
Id: KCOPreBronchodilator-Zscore
Title: "KCO Pre-bronchodilator Zscore"
Description: "Carbon monoxide transfer coefficient pre-bronchodilator z-score. Note: also known as KCO or DLCO/VA."
* code
  * text = "Diffusion capacity/Alveolar volume (z-score) pre-bronchodilator"
* value[x] only Quantity
* valueQuantity
  * unit = "Zscore"
  * system = $UCUM
  * code = #{Zscore}

Profile: CarbonMonoxideTransferCoefficient_PreBronchodilator_percentPredicted
Parent: Observation
Id: KCOPreBronchodilator-PercentOfPredicted
Title: "KCO Pre-bronchodilator Percent Of Predicted"
Description: "Carbon monoxide transfer coefficient (% predicted), pre-bronchodilator. Note: also known as KCO or DLCO/VA."
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
Profile: CarbonMonoxideTransferCoefficient_PostBronchodilator
Parent: Observation
Id: KCOPostBronchodilator
Title: "KCO Post-bronchodilator"
Description: "Carbon monoxide transfer coefficient, post-bronchodilator. Note: also known as KCO or DLCO/VA."
* code = $LNC#82620-6	"Diffusion capacity/Alveolar volume --post bronchodilation"
* value[x] only Quantity
* valueQuantity
  * unit = "mL/min/mmHg"
  * system = $UCUM
  * code = #mL/min/mmHg


Profile: CarbonMonoxideTransferCoefficient_PostBronchodilator_Zscore
Parent: Observation
Id: KCOPostBronchodilator-Zscore
Title: "KCO Post-bronchodilator Zscore"
Description: "Carbon monoxide transfer coefficient post-bronchodilator z-score. Note: also known as KCO or DLCO/VA."
* code
  * text = "Diffusion capacity/Alveolar volume (z-score) post-bronchodilator"
* value[x] only Quantity
* valueQuantity
  * unit = "Zscore"
  * system = $UCUM
  * code = #{Zscore}

Profile: CarbonMonoxideTransferCoefficient_PostBronchodilator_percentPredicted
Parent: Observation
Id: KCOPostBronchodilator-PercentOfPredicted
Title: "KCO Post-bronchodilator Percent Of Predicted"
Description: "Carbon monoxide transfer coefficient (% predicted), post-bronchodilator. Note: also known as KCO or DLCO/VA."
* code
  * text = "Diffusion capacity/Alveolar volume (measured/predicted) pre-bronchodilator"
* value[x] only Quantity
* valueQuantity
  * unit = "%"
  * system = $UCUM
  * code = #%