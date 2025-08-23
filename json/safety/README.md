# Safety Incidents Dataset

This dataset contains **safety incidents and near misses** for demonstration and testing purposes. It is designed for use in **safety reporting applications**, dashboards, or APIs.

## Overview

The dataset includes records of workplace incidents and near misses, capturing details about:

- Incident type (`Accident` or `Near Miss`)  
- Incident category (e.g., Slip/Fall, Chemical, Electrical, Fire, Equipment, Thermal, Environmental, Safety Protocol, Material Handling)  
- Location within the facility  
- Reporting employee  
- Incident and report dates  
- Severity levels (Low, Moderate, High)  
- Current status (Resolved, Investigating, Under Review)  
- Number of injuries  
- Description of the incident  
- Actions taken to resolve or mitigate the issue  

## Dataset Structure

The data is in JSON format:

```json
{
  "safety_incidents": [
    {
      "incident_id": 10001,
      "title": "Slip and Fall in Warehouse",
      "incident_type": "Accident",
      "category": "Slip/Fall",
      "location": "Warehouse A",
      "reported_by": "John Smith",
      "reported_date": "2025-01-15T09:30:00Z",
      "incident_date": "2025-01-14T16:45:00Z",
      "severity": "Moderate",
      "status": "Investigating",
      "injuries_reported": 1,
      "description": "Employee slipped on wet floor near loading dock. Minor bruises reported.",
      "actions_taken": ["Area cordoned off", "Wet floor sign placed", "First aid administered"]
    }
  ]
}
````

### Fields

| Field               | Type              | Description                                       |
| ------------------- | ----------------- | ------------------------------------------------- |
| `incident_id`       | integer           | Unique ID for the incident                        |
| `title`             | string            | Short descriptive title of the incident           |
| `incident_type`     | string            | `"Accident"` or `"Near Miss"`                     |
| `category`          | string            | Type of incident (Slip/Fall, Chemical, etc.)      |
| `location`          | string            | Physical location where incident occurred         |
| `reported_by`       | string            | Employee who reported the incident                |
| `reported_date`     | string (ISO 8601) | Date and time when incident was reported          |
| `incident_date`     | string (ISO 8601) | Date and time when incident occurred              |
| `severity`          | string            | `"Low"`, `"Moderate"`, `"High"`                   |
| `status`            | string            | `"Resolved"`, `"Investigating"`, `"Under Review"` |
| `injuries_reported` | integer           | Number of injuries                                |
| `description`       | string            | Detailed description of the incident              |
| `actions_taken`     | array of strings  | Actions taken to mitigate or resolve the incident |

## Usage

* Ideal for **demo apps**, **safety dashboards**, or **mock APIs**.
* Can be loaded into a **frontend app**, **database**, or **REST API**.
* Can be filtered by `incident_type`, `category`, `severity`, or `status` for testing analytics or reporting features.

## Notes

* Dates are in **UTC ISO 8601 format**.
* This dataset is **synthetic** and for **demonstration purposes only**. No real personal or sensitive information is included.
* Actions, locations, and names are **fictional**.


