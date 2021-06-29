This list is non-exhaustive; an observation's omission does not imply there exists a specific code for it.

The primary issues for most observations are that "measured/predicted" and "z-score" are missing. Some observations also have ambiguous codes, where there they cannot be specified as pre or post bronchodilation.

### Table of gaps

| Observation                                                 | URI                              | Issue      | Note        |
|-------------------------------------------------------------|:--------------------------------:|:----------:|:-----------:|
|                                                             |                                  |            |             |
| **Spirometry**                                              |                                  |            |             |
| FVC z-score                                                 | -                                | Missing    |             |
| FVC mL change                                               | -                                | Missing    |             |
| FEV1 z-score                                                | -                                | Missing    |             |
| FEV1 measured/predicted                                     | https://loinc.org/20152-5/       | Ambiguous  | No pre/post |
| FEV1/FVC                                                    | https://loinc.org/19926-5/       | Ambiguous  | No pre/post |
| FEV1/FVC z-score                                            | -                                | Missing    |             |
| Forced expiratory time                                      | https://loinc.org/65819-5/       | Ambiguous  | No pre/post |
|                                                             |                                  |            |             |
| **Diffusing capacity**                                      |                                  |            |             |
| Diffusion capacity.carbon monoxide                          | https://loinc.org/19911-7        | Ambiguous  | No pre/post |
| DLCO (at standard P_B)                                      | -                                | Missing    |             |
| DLCO (at standard P_B) z-score                              | -                                | Missing    |             |
| DLCO (at standard P_B )measured/predicted                   | -                                | Missing    |             |
| DLCO (pred adj Hb 13.8 g/dL)                                | -                                | Missing    |             |
| DLCO (pred adj Hb 13.8 g/dL) z-score                        | -                                | Missing    |             |
| DLCO (pred adj Hb 13.8 g/dL) measured/predicted             | -                                | Missing    |             |
| Alveolar Volume (V_A)                                       | http://snomed.info/id/251953007  | Missing    | Has SNOMED  |
| Alveolar Volume (V_A) z-score                               | -                                | Missing    |             |
| Alveolar Volume (V_A) measured/predicted                    | -                                | Missing    |             |
| Total lung capacity by Helium single breath                 | https://loinc.org/19858-0        | Ambiguous  | No pre/post |
| Inspired volume/vital capacity (V_I/V_C)                    | -                                | Missing    |             |
| Diffusion capacity/Alveolar volume z-score                  | -                                | Missing    |             |
| Diffusion capacity/Alveolar volume measured/predicted       | -                                | Missing    |             |

Note: "Diffusion capacity/Alveolar volume" is alternatively written as "DLCO/VA", or "KCO"

**Inconsistent**: These codes are accurate, but the LOINC long names aren't consistent.
- "Percent change" LOINC names differ:
  - `ForcedVitalCapacity_PostBronchodilator_percentChange` has LOINC name "FVC percent change Respiratory system" (https://loinc.org/69982-7).
  - `FEV1_POST_change_percent` has LOINC name "FEV1 percent change" (https://loinc.org/69983-5/).

### SNOMED
Some observations which lack LOINC codes may have SNOMED codes. The SNOMED concept "[Respiratory measure (observable entity)](http://snomed.info/id/251880004)" has children corresponding to various pulmonary function test measures.