# PFT DiagnosticReport

Rough JSON model of what a PFT might look like using FHIR R4+ resources, implemented as a 1:N collection of `DiagnosticReport`:`Observation`.

## Project Structure

`PFT-example.js` - Working draft of the PFT resource.

`FVC-observation-component-example.js` - Example of an Observation resource for FVC with multiple Components.

`/examples` - Examples provided by HL7 for `DiagnosticReport` and `Observation` (with `Observation.component`).

`/templates` - HL7 templates for FHIR resources.

`notes.txt` - Stuff I want to remember or haven't developed enough to include in the files or Github issue.