Extension: TechnicianComment
Id: TechnicianComment
Title: "Technician Comment"
Description: """Comments by the technician who performed the pulmonary function test observation.

This exists to include additional information not captured by our models, such as the medication used for bronchodilator reversibility testing."""
* value[x] only Annotation

Extension: ReferenceValueSource
Id: ReferenceValueSource
Title: "Reference Value Source"
Description: """A string indicating the source of the reference value(s) used in a particular pulmonary function test observation.

The lack of universally-recognized reference values for many pulmonary function test observation presents a difficulty for implementers, as we must rely on the author of the resource to provide an unambiguous identifier for the source of the values.

The reference value on its own is unnecessary and does not need to be included. It is only relevant in relation to the measured value.

We currently provide no constraints on how the source is described or formatted. This could be a DOI, a URL, or even the title and year of a publication.

We currently provide no way to indicate which reference value the source corresponds to. This may present problems for observations which may use multiple sources for reference values."""
* value[x] only string

Extension: TestQuality
Id: TestQuality
Title: "Test Quality"
Description: """A letter 'A' through 'F' describing test quality.

**Note**: There is currently no constraint limiting the value to those six characters."""
* value[x] only string
// * valueString from TestQuality_ValueSet

// TODO: How do we constrain TestQuality to ONLY letters A-F?
// Extension: TestQuality_ValueSet
// Id: TestQuality-ValueSet
// Title: "Test Quality Value Set"
// Description: """Letters for describing test quality."""
// * include "A"
// * include "B"