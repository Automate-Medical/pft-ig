<span class="label label-danger">NOTE</span> This implementation guide is under **active development** on [GitHub](https://github.com/automate-medical/pft-ig/issues), and **may change without notice**. Please comment on or [create](https://github.com/automate-medical/pft-ig/issues/new) an issue on GitHub if you have questions, comments, or suggestions. Contributions are welcome! Development has been sponsored by [Automate Medical](https://www.automatemedical.com/).

### Contents
1. [Scope](#scope)
2. [Background](#background)
3. [Usage](#usage)
4. [Limitations](#limitations)
    1. [Gaps in coding](#gaps-in-coding)
    2. [Non-exhaustive](#non-exhaustive)
    3. [Review status](#review-status)
6. [Contact](#contact)
7. [Authors](#authors)

### Scope

This [FHIR Implementation Guide](https://www.hl7.org/fhir/implementationguide.html) (IG) describes how to structure pulmonary function test data in an interoperable format.

A pulmonary function test evaluates lung function and impairment. Several unique, individual tests typically compose a complete pulmonary function test. [Spirometry](https://en.wikipedia.org/wiki/Spirometry) is the most common method of measurement and includes tests of pulmonary mechanics. Measuring pulmonary mechanics assesses the ability of the lungs to move huge volumes of air quickly through the airways to identify airway obstruction.

Multiple practitioners are involved in the workflow of administering and evaluating pulmonary function tests. Patients who present with observations such as dyspnea in encounters are frequently referred for pulmonary testing. Pulmonary testing can be significantly confounded by patient effort, and evaluation criteria are used to gauge test validity. Respiratory therapists are trained to monitor patient effort during testing.

Pulmonary function tests have interpretative guidelines established by professional clinical societies such as the [American Thoracic Society](https://www.thoracic.org/) and the [European Respiratory Society](https://www.ersnet.org/). Standardization and uniformity in performance of tests is critical both because interpretative strategies in part depend upon relative performance in comparison to normative reference values.

This IG currently profiles a DiagnosticReport with a minimal set of the most clinically significant discrete observations obtained from [Spirometry](https://en.wikipedia.org/wiki/Spirometry) or [Diffusion Capacity](https://en.wikipedia.org/wiki/Diffusing_capacity). It is intentionally designed to provide guidance in conformance with reporting standardization efforts such as [Recommendations for a Standardized Pulmonary Function Report](https://www.thoracic.org/statements/resources/pft/standardized-pulmonary-function-report.pdf) by Culver et al.

### Background

Professional clinical societies and patient advocates mutually agree that interoperability of pulmonary function test data and the standardization of the reporting of results are critically important. Pulmonary function is a significant, trackable biomarker with benchmark value. Function measurements can be particularly useful in monitoring the progression of disease states such as cystic fibrosis and COPD. Spirometry is particularly well established and dates from the 1840s.

Interoperability efforts and standards development have proceeded in a three key areas:

* [Standardization of reference values through efforts such as Global Lung Function Initiative](https://www.ers-education.org/lrmedia/2012/pdf/266696.pdf)
* Standardization of quality assurance measurements to guide uniformity of test performance
* [Standardization of clinically reported content](https://www.thoracic.org/statements/resources/pft/standardized-pulmonary-function-report.pdf))

This IG concerns a fourth kind of standardization of pulmonary function tests: standardization of a PFT inside of an electronic health record. It contains FHIR Profiles, or structural definitions, for the most important measurements. The PFT, to-date, has not benefited from the advancement of interoperability standards.

As the working group in McCormack et al wrote in [Electronic Health Records and Pulmonary Function Data: Developing an Interoperability Roadmap. An Official American Thoracic Society Workshop Report](https://www.atsjournals.org/doi/full/10.1513/AnnalsATS.202010-1318ST):

> The ability to access PFT data within and between healthcare systems holds great promise for improving our understanding of lung diseases and the respiratory health of patients and the population. This would not only allow monitoring of trends in forced expiratory volume in 1 second in the same way one can typically monitor trends in other clinical laboratory values (e.g., white-blood-cell count or hemoglobin A1c) within the EHR but would also allow visualization of flow-volume loops and indicators of testing quality (e.g., acceptable and reproducible spirometric effort).

Additionally, they note a number of significant organizational challenges to overcome in driving interoperability for PFTs: "PFT data [has not been] prioritized for standardization by organizational bodies (FHIR)", "lack of consensus on which discrete variables should be sent to the EHR", and "lack of common data model and interoperability standard by societies".

Finally, they point towards the benefit of a standardized data vocabulary for PFTs:

> Availability of a standardized data vocabulary that labels and defines PFT elements would benefit both manufacturers of PFT equipment that generates pulmonary function data and developers of EHR software that receives the data and manages it. Moving from proprietary solutions to standardized information models and approaches to data exchange between PFT equipment and EHRs would have many benefits. It would promote interoperability, enabling data generated by pulmonary function equipment from a wide range of manufacturers to be recognized by a wide range of EHR systems and to be shared between different brands of EHR systems.

This IG is a response to this articulation.

### Usage

A `DiagnosticReport` profile with an identifier of `PulmonaryFunctionTestDiagnosticReport` is introduced.

This implementation guide can be used by device manufacturers, pulmonary function laboratories, and electronic health record vendors to model pulmonary function test data.
The `PulmonaryFunctionTestDiagnosticReport` defines a set of reference `Observation` Profiles that map to the 2017 [Recommendations for a Standardized Pulmonary Function Report](https://www.thoracic.org/statements/resources/pft/standardized-pulmonary-function-report.pdf). As a design principle, this implementation guide makes use of `derivedFrom` associations for `Observation` Profiles of measures such as the Zscore of a patient's performance against a reference value equation. Where possible, this implementation guide.

Implementers should consider referencing the examples included as artifacts and in particular [DiagnosticReport-diagnostic-report](./DiagnosticReport-diagnostic-report.html) and its associated Observations.

Practical use cases include:

* Defining a target export for the data consolidation process of large research studies on normative pulmonary function
* Completing digital transformation of paper or portable document format (PDF) versions of pulmonary function test reports to fully electronic health records
* Connecting and promoting interoperable pulmonary function test records as part of public health research
* Integrating novel self-surveillance data formats such as mobile at-home spirometry back into a provider's health information system

### Limitations

#### Gaps in coding

For Observations where an appropriate LOINC or SNOMED code can not be found, we specify a human readable name for the Observation in `code.text`. Missing, ambiguous, or inconsistent LOINC codes/names were encountered during modeling. This problem is known in the existing clinical literature. Successfully progressing this Implementation Guide from its draft state will require co-ordination on recommendations to LOINC or SNOMED to guide resolving gaps in codeable concepts.

A list of our documentation for these gaps is available in [Coding Gaps](./coding-gaps.html).

#### Non-exhaustive

We only include Spirometry and Diffusion Capacity in the current draft state. A published state should probably include other measures.

Significantly, we do not describe a profile for series data, such as flow-volume results. Standardization efforts for device manufacturers, such as the [IEEE SA efforts on spirometry](https://standards.ieee.org/project/11073-10429.html) may produce efforts worth modelling in a published IG.

#### Review status

This FHIR IG needs clinical collaborators, device manufacturers, and electronic health record systems to review its current recommendations. Their input must inform published status.

### Contact

This FHIR Implementation Guide was sponsored and developed by [Automate Medical](https://www.automatemedical.com/). Questions and comments may be submitted to [josh@automatemedical.com](mailto:josh@automatemedical.com)

### Authors

* Joshua Kelly
* Joseph Conroy
