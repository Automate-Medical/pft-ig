Extension: TechnicianComment
Id: TechnicianComment
Title: "Technician Comment"
Description: """Comments by the technician who performed the pulmonary function test observation.

This exists to include additional information not captured by our models, such as the medication used for bronchodilator reversibility testing."""
* value[x] only Annotation

Extension: ReferenceValueSource
Id: ReferenceValueSource
Title: "Reference Value Source"
Description: """A string providing the source of the reference value(s) used in a particular pulmonary function test observation.

We currently provide no constraints on how the source is described or formatted. This could be a DOI, a URL, or even the title and year of a publication.

We currently provide no way to indicate which reference value the source corresponds to. This may present problems for observations which may use multiple sources for reference values."""
* value[x] only string

Extension: TestQuality
Id: TestQuality
Title: "Test Quality"
Description: """A letter A through F describing test quality."""
* value[x] only string
// * valueString from TestQuality_ValueSet

// TODO: How do we constrain TestQuality to ONLY letters A-F?
// Extension: TestQuality_ValueSet
// Id: TestQuality-ValueSet
// Title: "Test Quality Value Set"
// Description: """Letters for describing test quality."""
// * include "A"
// * include "B"