## Determine the stats for Flange cut length

### Fields

```json
{"key":"p7eba89fd","category":"Structural","type":"Double","name":"Cut Length","uom":"ft"}
{"key":"p153cb174","category":"__name__","type":"String","name":"name","uom":null}
```

### Index Specification

```json
{
    "versions": [
        {
            "versionUrn": "urn:adsk.wipprod:fs.file:vf.OGB3DgCdTQq--zcEsvlm6A?version=1",
            "query": 
            {
                "$and": [
                    { "$gt": ["s.props.p7eba89fd", 0] },
                    { "$like": ["s.props.p153cb174", "''SMBH-W-Wide Flange%''"] }
                ]
            },
            "columns":
            {
                "count": { "$count": "s.otgId" }, 
                "sum": { "$sum": "s.props.p7eba89fd" },
                "min": { "$min": "s.props.p7eba89fd" },
                "max": { "$max": "s.props.p7eba89fd" },
                "avg": { "$avg": "s.props.p7eba89fd" }
            }
        }
    ]
}
```

### Query

```json
{
    "query": 
    {
        "$and": [
            { "$gt": ["s.props.p7eba89fd", 0] },
            { "$like": ["s.props.p153cb174", "''SMBH-W-Wide Flange%''"] }
        ]
    },
    "columns":
    {
        "count": { "$count": "s.otgId" }, 
        "sum": { "$sum": "s.props.p7eba89fd" },
        "min": { "$min": "s.props.p7eba89fd" },
        "max": { "$max": "s.props.p7eba89fd" },
        "avg": { "$avg": "s.props.p7eba89fd" }
    }   
}
```

### S3 SELECT

```sql
select 
    count(s.otgId) as "count",
    sum(s.props.p7eba89fd) as "sum",
    min(s.props.p7eba89fd) as "min",
    max(s.props.p7eba89fd) as "max",
    avg(s.props.p7eba89fd) as "avg"
from S3Object[*] s
where
    count(s.props.p7eba89fd) > 0
    and s.props.p153cb174 like 'SMBH-W-Wide Flange%'
```

### Output

```json
{
    "count": 145,
    "sum": 30000621564225079361913482649135403335e-34,
    "min": 5605312851958786e-16,
    "max": 42389793631117094e-15,
    "avg": 20690083837396606456492056999403726438e-36
}
```

### Description 

Using the element's name, find all the rows with names like `SMBH-W-Wide Flange%` that have a cut lengte greater than `0 ft`. Then use the `sum`, `min`, `max` and `avg` to calculate the cut lenght desriptive statistics.

---
[back](../README.md)