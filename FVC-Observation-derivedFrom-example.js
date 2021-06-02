// File overview: Example of using `Observation.derivedFrom` to associate
//   `z-score` and `% pred` with a single FVC pre measurement.

const FVCpreBundle =
{
  "resourceType": "Bundle",
  "id": "bundle-FVCpre",
  "type": "collection",
  "entry": [
    {
      "resource": {
        "resourceType": "Observation",
        "id": "ob-FVCpre-measurement",
        "status": "final",
        "code": {
          "coding": [
            {
              "system": "http://loinc.org",
              "code": "19876-2",
              "display": "Forced vital capacity [Volume] Respiratory system by Spirometry --pre bronchodilation"
            }
          ],
          "text": "FVC Best (Pre-bronchodilator), liters"
        },
        "subject": {
          "reference": "Patient/patient-01",
          "display": "Example Patient Name"
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
      }
    },
    {
      "resource": {
        "resourceType": "Observation",
        "id": "ob-FVCpre-zscore",
        "status": "final",
        "code": {
          "coding": [
            {
              "system": "http://loinc.org",
              "code": "", // TODO: What code does z-score have? Same as FVC pre measurement?
              "display": "", // TODO
            }
          ],
          "text": "FVC Best (Pre-bronchodilator), z-score"
        },
        "subject": {
          "reference": "Patient/patient-01",
          "display": "Example Patient Name"
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
          "value": -1.34,
          "unit": "", // TODO: How to code a z-score?
          "system": "", // TODO
          "code": "" // TODO
        },
       "referenceRange": [
          // TODO: Think this might just be a string, "z-score"
        ],
        "derivedFrom": [
          {
            "reference": "Observation/ob-FVCpre-measurement"
          }
        ]
      }
    },
    {
      "resource": {
        "resourceType": "Observation",
        "id": "ob-FVCpre-percentpredicted",
        "status": "final",
        "code": {
          "coding": [
            {
              "system": "http://loinc.org",
              "code": "", // TODO: What code does an FVC % pred have? Same as FVC pre measurement?
              "display": "", // TODO
            }
          ],
          "text": "FVC Best (Pre-bronchodilator), % pred"
        },
        "subject": {
          "reference": "Patient/patient-01",
          "display": "Example Patient Name"
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
          "value": 82,
          "unit": "%", // TODO: How to code a percentage
          "system": "", // TODO
          "code": "" // TODO
        },
       "referenceRange": [
          // TODO
        ],
        "derivedFrom": [
          {
            "reference": "Observation/ob-FVCpre-measurement"
          }
        ]
      }
    },
  ],
}