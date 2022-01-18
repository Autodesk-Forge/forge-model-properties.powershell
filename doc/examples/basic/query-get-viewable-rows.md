## Get viewable rows

### Index Specification

```json
{
    "versions": [
        {
            "versionUrn": "urn:adsk.wipprod:fs.file:vf.OGB3DgCdTQq--zcEsvlm6A?version=1",
             "query": {
                "$gt": [{ "$count": "s.views" }, 0]
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
    }
}
```

### S3 SELECT

```sql
select s.* 
from S3Object[*] s
where
    count(s.views) > 0
```

### Output

```json
{"svf2Id":325,"lineageId":"1a82f28","externalId":"5e0bc1aa-5715-46e1-a969-6e93a8d1c547-000db7ee","lmvId":3476,"databaseId":"3d24adf4","props":{"p00723fa6":"Main Model","p0338037d":false,"p037745d1":false,"p09faf620":"Exterior - Wood Panel on Metal Stud","p10f4572e":4805277777777777e-13,"p13b6b3a0":"Exterior - Wood Panel on Metal Stud","p153cb174":"Basic Wall [899054]","p15f8f5ec":46468750000000014e-15,"p188478f2":43547829861111126e-14,"p1ccc807a":0,"p20d8441e":"Walls","p30db51f9":"Basic Wall","p3184274a":0e0,"p3bc3b7ef":0e0,"p3c57b64e":"New Construction","p54217060":"B2010158","p57d80b8b":"Non-bearing","p5eddc473":"Revit Walls","p63ed81bb":"Ext. Wall - Brick Veneer w/ Stud","p6637df3c":"Metal - Stud Layer","p67db7500":false,"p6ff711ae":"Exterior","p751e1b21":false,"p7628c928":"Both","p794e101d":0.1e0,"p7f586bec":14e0,"p9da42bf1":"Up to level: BEARING","pa5b87728":0e0,"pa7275c45":-2000011,"pa80e07d8":"Core Centerline","pb0b7b2ac":0e0,"pb5b8cef7":false,"pc2e44dc0":"Exterior","pc68f86fa":0e0,"pc8dbf8fb":"<Solid fill>","pd8ac5e15":"1","pe56a7c7c":9062500000000002e-16,"pe61a57c3":0e0,"pebcd7501":"FIRST FLOOR","pedfa76dc":"899054","pee815a7f":"None","pef87fde6":0e0,"pfa63d9d0":2e0,"pffc76c27":true},"propsHash":"5f5f29cb","propsIgnored":{"p6a81eafd":3474,"p93e93af5":3475},"geomHash":"KJwiA+A7RDTGuYkwQm0J+A","bbox":{"min":[33663883916345455e-15,-3283850944775215e-14,30479999999999993e-15],"max":[3796011977004494e-14,-18895548749287492e-15,3474719999999999e-14]},"views":["bfe04eff"]}
{"svf2Id":326,"lineageId":"1a82f28","externalId":"5e0bc1aa-5715-46e1-a969-6e93a8d1c547-000db82d","lmvId":3482,"databaseId":"3d24adf4","props":{"p00723fa6":"Main Model","p0338037d":false,"p037745d1":false,"p09faf620":"Interior - 9 1/4\" Partition - 1 HR- P6","p10f4572e":269.375e0,"p13b6b3a0":"Interior - 9 1/4\" Partition - 1 HR- P6","p153cb174":"Basic Wall [899117]","p15f8f5ec":2290104166666666e-14,"p188478f2":20764322916666535e-14,"p1ccc807a":0,"p20d8441e":"Walls","p30db51f9":"Basic Wall","p3184274a":0e0,"p3bc3b7ef":0e0,"p3c57b64e":"New Construction","p54217060":"C1010145","p57d80b8b":"Non-bearing","p5bfd2c8a":"P6","p5eddc473":"Revit Walls","p63ed81bb":"Partitions - Drywall w/ Metal Stud","p6637df3c":"Metal - Stud Layer","p67db7500":false,"p6ff711ae":"Interior","p751e1b21":false,"p7628c928":"Do not wrap","p794e101d":0.1e0,"p7f586bec":12e0,"p9da42bf1":"Up to level: BEARING","pa5b87728":0e0,"pa7275c45":-2000011,"pa80e07d8":"Wall Centerline","pb0b7b2ac":0e0,"pb5b8cef7":false,"pc2e44dc0":"None","pc68f86fa":0e0,"pc8dbf8fb":"<Solid fill>","pd8ac5e15":"1","pe56a7c7c":7708333333333334e-16,"pe61a57c3":0e0,"pebcd7501":"FIRST FLOOR","pedfa76dc":"899117","pee815a7f":"None","pef87fde6":0e0,"pfa63d9d0":0e0,"pffc76c27":true},"propsHash":"c22b4ac4","propsIgnored":{"p6a81eafd":3480,"p93e93af5":3481},"geomHash":"9F8qn90KwLGkIAw4qMOsOA","bbox":{"min":[28683353371403644e-15,-23.7544165384463e0,30479999999999993e-15],"max":[30818989862484077e-15,-17118706933959604e-15,3413759999999999e-14]},"views":["bfe04eff"]}
{"svf2Id":327,"lineageId":"1a82f28","externalId":"5e0bc1aa-5715-46e1-a969-6e93a8d1c547-000db87d","lmvId":3483,"databaseId":"3d24adf4","props":{"p00723fa6":"Main Model","p0338037d":false,"p037745d1":false,"p09faf620":"Exterior - Wood Panel on Metal Stud","p10f4572e":81.78125e0,"p13b6b3a0":"Exterior - Wood Panel on Metal Stud","p153cb174":"Basic Wall [899197]","p15f8f5ec":5.90625e0,"p188478f2":7411425781249999e-14,"p1ccc807a":0,"p20d8441e":"Walls","p30db51f9":"Basic Wall","p3184274a":0e0,"p3bc3b7ef":0e0,"p3c57b64e":"New Construction","p54217060":"B2010158","p57d80b8b":"Non-bearing","p5eddc473":"Revit Walls","p63ed81bb":"Ext. Wall - Brick Veneer w/ Stud","p6637df3c":"Metal - Stud Layer","p67db7500":false,"p6ff711ae":"Exterior","p751e1b21":false,"p7628c928":"Both","p794e101d":0.1e0,"p7f586bec":14e0,"p9da42bf1":"Up to level: BEARING","pa5b87728":0e0,"pa7275c45":-2000011,"pa80e07d8":"Core Centerline","pb0b7b2ac":0e0,"pb5b8cef7":false,"pc2e44dc0":"Exterior","pc68f86fa":0e0,"pc8dbf8fb":"<Solid fill>","pd8ac5e15":"1","pe56a7c7c":9062500000000002e-16,"pe61a57c3":0e0,"pebcd7501":"FIRST FLOOR","pedfa76dc":"899197","pee815a7f":"None","pef87fde6":0e0,"pfa63d9d0":2e0,"pffc76c27":true},"propsHash":"29d54bff","propsIgnored":{"p6a81eafd":3474,"p93e93af5":3475},"geomHash":"LGpdeAoJdBp8Qq+F2WN/VA","bbox":{"min":[31935225749469748e-15,-3276139944232229e-14,30479999999999993e-15],"max":[3374099392177531e-14,-31993611078464895e-15,3474719999999999e-14]},"views":["bfe04eff"]}
...
```

### Description

 The `$gt` operator is used to ensure that a `$count` of the elements in the `s.views` array is greater than `0` (i.e. the object is viewable). This query can be applied to both the batch status and merge endpoints.

---
[back](../README.md)