// File overview: example of `Observation.component` to associate Observations.

const FVCComponent = {
  "resource": {
    "resourceType": "Observation",
    "id": "ob-01",
    "status": "final",
    "code": {
      "coding": [
        {
          "system": "http://loinc.org",
          "code": "19868-9",
          "display": " Forced vital capacity [Volume] Respiratory system by Spirometry"
        }
      ],
      "text": "FVC Best"
    },
    "subject": {
      "reference": "patient-01",
      "display": "Patient's Name"
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
   "referenceRange": [
      {
        "low": {
          "value": 3.70,
          "unit": "L",
          "system": "http://unitsofmeasure.org",
          "code": "L"
          },
        "high": {
          "value": 5, // TODO: Placeholder value, not real ULN.
          "unit": "L",
          "system": "http://unitsofmeasure.org",
          "code": "L"
        },
        "type": {
          "text": "FVC (Best) normal bounds"
        }
      }
    ],
   "component": [
      // Component: FVC Best (Pre-bronchodilator) measurement
      {
        "code": {
          "coding": [
            {
              "system": "http://loinc.org",
              "code": "19876-2",
              "display": "Forced vital capacity [Volume] Respiratory system by Spirometry --pre bronchodilation"
            }
          ],
          "text": "FVC Best (Pre-bronchodilator)"
        },
        "valueQuantity": {
          "value": 3.90,
          "unit": "L",
          "system": "http://unitsofmeasure.org",
          "code": "L"
        },
      },
      // Component: FVC Best (Post-bronchodilator) measurement
      {
        "code": {
          "coding": [
            {
              "system": "http://loinc.org",
              "code": "19874-7",
              "display": "Forced vital capacity [Volume] Respiratory system by Spirometry --post bronchodilation"
            }
          ],
          "text": "FVC Best (Post-bronchodilator)"
        },
        "valueQuantity": {
          "value": 4.70,
          "unit": "L",
          "system": "http://unitsofmeasure.org",
          "code": "L"
        },
      }
    ]
  }
}