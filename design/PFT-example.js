// File overview: Example PFT

const PulmonaryFunctionTest = {
  "resourceType": "Bundle",
  "id": "1",
  "type": "collection",
  "entry": [
    {
      "resource": {
        "resourceType": "DiagnosticReport",
        "id": "report-01",
        "status": "final",
        "code": {
          "coding": [
            {
              "system": "http://loinc.org",
              "code": "81458-2",
              "display": "Pulmonary function test panel"
            }
          ],
          "text": "Pulmonary Function Test"
        },
        "subject": {
          "reference": "Patient/patient-01", // TODO: Is Type/id proper form? Or just id?
          "display": "Example Patient Name"
        },
        "encounter": [
          {
            "reference": "Encounter/encounter-01",
          }
        ],
        "effectiveDateTime": "2017-02-24",
        "performer": [
          {
            "reference": "Practitioner/practitioner-01",
            "display": "Dr. P. Pulmonologist"
          },
          {
            "reference": "Organization/org-01",
            "display": "Sample Pulmonary Function Laboratory"
          },
        ],
        "resultsIntepreter": [
          {
            "reference": "Practitioner/practitioner-01",
            "display": "Dr. P. Pulmonologist"
          },
        ],
        "result": [
          {
            "reference": "Observation/ob-01"
          },
          {
            "reference": "Observation/ob-02"
          },
          // TODO: More `Observations` go here.
        ],
        "conclusion": "Moderately severe, partially reversible airflow obstruction.",
        // TODO: How to add in Technician Comments from sample pdf?
        "conclusionCode": [
          // TODO: One or more codes representing conclusion of diagnostic report.
          // Type: `CodeableConcept`
        ],
        "presentedForm": [
          {
            "contentType": "application/pdf",
            "language": "en-US",
            "title": "Example PFT DiagnosticReport"
          }
        ]
      }
    },
    {
      "resource": {
        "resourceType": "Observation",
        "id": "ob-01",
        "status": "final",
        "code": {
          "coding": [
            {
              "system": "http://loinc.org",
              "code": "19876-2",
              "display": "Forced vital capacity [Volume] Respiratory system by Spirometry --pre bronchodilation"
            }
          ],
          "text": "FVC (Forced Vital Capacity) Best, Pre-bronchodilator"
        },
        "subject": {
          "reference": "patient-01"
        },
        "performer": [
          {
            "reference": "Practitioner/practitioner-01",
            "display": "Dr. P. Pulmonologist"
          },
          {
            "reference": "Organization/org-01",
            "display": "Sample Pulmonary Function Laboratory"
          },
        ],
        "valueQuantity": {
          "value": 3.90,
          "unit": "L",
          "system": "http://unitsofmeasure.org",
          "code": "L"
        },
        "referenceRange": [
          {
            "low": {
              "value": 3.70,
              "unit": "L",
              "system": "http://unitsofmeasure.org",
              "code": "L"
            },
          },
        ],
      }
    }
  ]
}
