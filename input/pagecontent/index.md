# PulmonaryFunctionTestIG

This implementation guide defines FHIR profiles for pulmonary function tests and provides examples of their usage.

## Contents
1. [Scope](#scope)
2. [Background](#background)
3. [Motivation](#motivation)
4. [Usage](#usage)
5. [Issues](#issues)
    1. [Gaps in coding](#gaps-in-observation-coding)

## Scope

TODO: I think this section should explain what a PFT does, what this implementation guide has to do with PFTs, and explain the terminology used - audience is programmers not doctors

A [pulmonary function test](https://en.wikipedia.org/wiki/Pulmonary_function_testing) (also referred to as PFT) measures the function of the respiratory system with respect to several parameters.

This implementation guide provides profiles for spirometry (pre and post bronchodilation) and diffusing capacity Observations.

### Spirometry

[Spirometry](https://en.wikipedia.org/wiki/Spirometry) measure the volume and flow of air that the lungs can inhale or exhale. This includes:
- Forced vital capacity (FVC) - the total volume of air which can be exhaled after taking as deep a breath as possible
- Forced expiratory volume (FEV) - the volume of air which can be forcibly exhaled over some number of seconds
- FEV1/FVC - the ratio of forced expiratory volume over 1 second to forced vital capacity
- Forced expiratory time (FET) - the amount of time it takes to fully exhale after taking as deep a breath as possible

### Diffusing Capacity
[Diffusing capacity](https://en.wikipedia.org/wiki/Diffusing_capacity) measures the ability of the lungs to transfer gas from air to the blood vessels in the lungs.
This includes:
- TODO

Spirometry is by far the most common test panel included in pulmonary function tests, followed by diffusing capacity.

## Background

TODO

## Motivation

TODO

(Maybe this can be combined with background.)

The objective of this implementation guide is to enable interoperability of pulmonary function test data, allowing health care providers to


Motivations/problems solved discussed here are good to include: https://docs.automatemedical.com/docs/pft-extractor-features

## Usage

TODO

## Issues

### Gaps in coding:

For Observations where an appropriate LOINC or SNOMED code can not be found, we specify a name for the Observation in `code.text`.

Missing, ambiguous, or inconsistent LOINC codes/names encountered during modeling. This list is non-exhaustive; an observation's omission does not imply there exists a specific code for it.

The primary issues for most observations are that "measured/predicted" and "z-score" are missing. Some observations also have ambiguous codes, where there they cannot be specified as pre or post bronchodilation.


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