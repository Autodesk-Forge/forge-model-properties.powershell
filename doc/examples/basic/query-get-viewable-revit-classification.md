## Get viewable rows where Revit category, family and type are not null

### Fields

```json
{"key":"p153cb174","category":"__name__","type":"String","name":"name","uom":null}
{"key":"p20d8441e","category":"__category__","type":"String","name":"_RC","uom":null}
{"key":"p30db51f9","category":"__category__","type":"String","name":"_RFN","uom":null}
{"key":"p13b6b3a0","category":"__category__","type":"String","name":"_RFT","uom":null}
```
### Index Specification

```json
{
    "versions": [
        {
            "versionUrn": "urn:adsk.wipprod:fs.file:vf.OGB3DgCdTQq--zcEsvlm6A?version=1",
            "query": {
                "$and": [ 
                    { "$notnull": "s.props.p20d8441e" },
                    { "$notnull": "s.props.p30db51f9" },
                    { "$notnull": "s.props.p13b6b3a0" },
                    { "$gt": [{ "$count": "s.views" }, 0] }
                ]
            },
            "columns": {
                "s.svf2Id": true,
                "lmvName": "s.props.p153cb174",
                "revitCategory": "s.props.p20d8441e",
                "revitFamily": "s.props.p30db51f9", 
                "revitType": "s.props.p13b6b3a0",
                "s.views": true       
            }
        }
    ]
}
```

### Query

```json
{
    "query": {
        "$and": [ 
            { "$notnull": "s.props.p20d8441e" },
            { "$notnull": "s.props.p30db51f9" },
            { "$notnull": "s.props.p13b6b3a0" },
            { "$gt": [{ "$count": "s.views" }, 0] }
        ]
    },
    "columns": {
        "s.svf2Id": true,
        "lmvName": "s.props.p153cb174",
        "revitCategory": "s.props.p20d8441e",
        "revitFamily": "s.props.p30db51f9", 
        "revitType": "s.props.p13b6b3a0",
        "s.views": true       
    }
}
```

### S3 SELECT

```sql
select s.svf2Id, 
       s.props.p153cb174 as lmvName,
       s.props.p20d8441e as revitCategory,
       s.props.p30db51f9 as revitFamily,
       s.props.p13b6b3a0 as revitType,
       s.views
from S3Object[*] s
where
    s.props.p20d8441e is not null
    and s.props.p30db51f9 is not null
    and s.props.p13b6b3a0 is not null
    and count(s.views) > 0
```

### Output

```json
{"svf2Id":325,"lmvName":"Basic Wall [899054]","revitCategory":"Walls","revitFamily":"Basic Wall","revitType":"Exterior - Wood Panel on Metal Stud","views":["bfe04eff"]}
{"svf2Id":326,"lmvName":"Basic Wall [899117]","revitCategory":"Walls","revitFamily":"Basic Wall","revitType":"Interior - 9 1/4\" Partition - 1 HR- P6","views":["bfe04eff"]}
{"svf2Id":327,"lmvName":"Basic Wall [899197]","revitCategory":"Walls","revitFamily":"Basic Wall","revitType":"Exterior - Wood Panel on Metal Stud","views":["bfe04eff"]}
...
```

### Description

The `$notnull` operator is used to ensure that the Revit category, family and type columns contain values and the  `$gt` operator is used to ensure that a `$count` of the elements in the `s.views` array is greater than `0` (i.e. the object is viewable).

---
[back](../README.md)