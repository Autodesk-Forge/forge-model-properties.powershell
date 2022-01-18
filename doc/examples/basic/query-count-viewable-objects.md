## Count the number of viewable objects in the index

### Index Specification

```json
{
    "versions": [
        {
            "versionUrn": "urn:adsk.wipprod:fs.file:vf.OGB3DgCdTQq--zcEsvlm6A?version=1",
            "query": {
                "$gt": [{ "$count": "s.views" }, 0]
            },
            "columns": {
                "rowCount": { "$count": "s.svf2Id" }
            }
        }
    ]
}
```

### Query

```json
{
    "query": {
        "$gt": [{ "$count": "s.views" }, 0]
    },
    "columns": {
        "rowCount": { "$count": "s.svf2Id" }
    }
}
```

### S3 SELECT

```sql
select 
    count(s.svf2Id) as rowCount 
from S3Object[*] s 
where 
    count(s.views) > 0
```

### Output

```json
{
    "rowCount": 6528
}
```

### Description 

In the example above the `$count` operator is used to make a `rowCount` value by counting the number of `s.svf2Id` values returned by the query filter `s.views.count > 0`.

---
[back](../README.md)