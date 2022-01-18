## Get rows where the Assembly Description is like '%Brick%'

### Fields

```json
{"key":"p63ed81bb","category":"Identity Data","type":"String","name":"Assembly Description","uom":null}
```

### Index Specification

```json
{
    "versions": [
        {
            "versionUrn": "urn:adsk.wipprod:fs.file:vf.OGB3DgCdTQq--zcEsvlm6A?version=1",
             "query": {
                "$like": ["s.props.p63ed81bb", "''%Brick%''"]
            }
        }
    ]
}
```

### Query

```json
{
    "query": {
        "$like": ["s.props.p63ed81bb", "''%Brick%''"]
    }
}
```

### S3 SELECT

```sql
select s.* 
from S3Object[*] s
where
    s.props.p63ed81bb like '%Brick%'
```

### Output

```json
{"svf2Id":325,"lineageId":"1a82f28","externalId":"5e0bc1aa-5715-46e1-a969-6e93a8d1c547-000db7ee","lmvId":3476,"databaseId":"3d24adf4","props":{"p00723fa6":"Main Model","p0338037d":false,"p037745d1":false,"p09faf620":"Exterior - Wood Panel on Metal Stud","p10f4572e":4805277777777777e-13,"p13b6b3a0":"Exterior - Wood Panel on Metal Stud","p153cb174":"Basic Wall [899054]","p15f8f5ec":46468750000000014e-15,"p188478f2":43547829861111126e-14,"p1ccc807a":0,"p20d8441e":"Walls","p30db51f9":"Basic Wall","p3184274a":0e0,"p3bc3b7ef":0e0,"p3c57b64e":"New Construction","p54217060":"B2010158","p57d80b8b":"Non-bearing","p5eddc473":"Revit Walls","p63ed81bb":"Ext. Wall - Brick Veneer w/ Stud","p6637df3c":"Metal - Stud Layer","p67db7500":false,"p6ff711ae":"Exterior","p751e1b21":false,"p7628c928":"Both","p794e101d":0.1e0,"p7f586bec":14e0,"p9da42bf1":"Up to level: BEARING","pa5b87728":0e0,"pa7275c45":-2000011,"pa80e07d8":"Core Centerline","pb0b7b2ac":0e0,"pb5b8cef7":false,"pc2e44dc0":"Exterior","pc68f86fa":0e0,"pc8dbf8fb":"<Solid fill>","pd8ac5e15":"1","pe56a7c7c":9062500000000002e-16,"pe61a57c3":0e0,"pebcd7501":"FIRST FLOOR","pedfa76dc":"899054","pee815a7f":"None","pef87fde6":0e0,"pfa63d9d0":2e0,"pffc76c27":true},"propsHash":"5f5f29cb","propsIgnored":{"p6a81eafd":3474,"p93e93af5":3475},"geomHash":"KJwiA+A7RDTGuYkwQm0J+A","bbox":{"min":[33663883916345455e-15,-3283850944775215e-14,30479999999999993e-15],"max":[3796011977004494e-14,-18895548749287492e-15,3474719999999999e-14]},"views":["bfe04eff"]}
{"svf2Id":327,"lineageId":"1a82f28","externalId":"5e0bc1aa-5715-46e1-a969-6e93a8d1c547-000db87d","lmvId":3483,"databaseId":"3d24adf4","props":{"p00723fa6":"Main Model","p0338037d":false,"p037745d1":false,"p09faf620":"Exterior - Wood Panel on Metal Stud","p10f4572e":81.78125e0,"p13b6b3a0":"Exterior - Wood Panel on Metal Stud","p153cb174":"Basic Wall [899197]","p15f8f5ec":5.90625e0,"p188478f2":7411425781249999e-14,"p1ccc807a":0,"p20d8441e":"Walls","p30db51f9":"Basic Wall","p3184274a":0e0,"p3bc3b7ef":0e0,"p3c57b64e":"New Construction","p54217060":"B2010158","p57d80b8b":"Non-bearing","p5eddc473":"Revit Walls","p63ed81bb":"Ext. Wall - Brick Veneer w/ Stud","p6637df3c":"Metal - Stud Layer","p67db7500":false,"p6ff711ae":"Exterior","p751e1b21":false,"p7628c928":"Both","p794e101d":0.1e0,"p7f586bec":14e0,"p9da42bf1":"Up to level: BEARING","pa5b87728":0e0,"pa7275c45":-2000011,"pa80e07d8":"Core Centerline","pb0b7b2ac":0e0,"pb5b8cef7":false,"pc2e44dc0":"Exterior","pc68f86fa":0e0,"pc8dbf8fb":"<Solid fill>","pd8ac5e15":"1","pe56a7c7c":9062500000000002e-16,"pe61a57c3":0e0,"pebcd7501":"FIRST FLOOR","pedfa76dc":"899197","pee815a7f":"None","pef87fde6":0e0,"pfa63d9d0":2e0,"pffc76c27":true},"propsHash":"29d54bff","propsIgnored":{"p6a81eafd":3474,"p93e93af5":3475},"geomHash":"LGpdeAoJdBp8Qq+F2WN/VA","bbox":{"min":[31935225749469748e-15,-3276139944232229e-14,30479999999999993e-15],"max":[3374099392177531e-14,-31993611078464895e-15,3474719999999999e-14]},"views":["bfe04eff"]}
{"svf2Id":328,"lineageId":"1a82f28","externalId":"5e0bc1aa-5715-46e1-a969-6e93a8d1c547-000dba1e","lmvId":3484,"databaseId":"3d24adf4","props":{"p00723fa6":"Main Model","p0338037d":false,"p037745d1":false,"p09faf620":"Exterior - Wood Panel on Metal Stud","p10f4572e":36361987689319227e-14,"p13b6b3a0":"Exterior - Wood Panel on Metal Stud","p153cb174":"Basic Wall [899614]","p15f8f5ec":27124999999999968e-15,"p188478f2":3295305134344557e-13,"p1ccc807a":0,"p20d8441e":"Walls","p30db51f9":"Basic Wall","p3184274a":0e0,"p3bc3b7ef":0e0,"p3c57b64e":"New Construction","p54217060":"B2010158","p57d80b8b":"Non-bearing","p5eddc473":"Revit Walls","p63ed81bb":"Ext. Wall - Brick Veneer w/ Stud","p6637df3c":"Metal - Stud Layer","p67db7500":false,"p6ff711ae":"Exterior","p751e1b21":false,"p7628c928":"Both","p794e101d":0.1e0,"p7f586bec":12e0,"p9da42bf1":"Up to level: BEARING","pa5b87728":0e0,"pa7275c45":-2000011,"pa80e07d8":"Core Centerline","pb0b7b2ac":0e0,"pb5b8cef7":false,"pc2e44dc0":"Exterior","pc68f86fa":0e0,"pc8dbf8fb":"<Solid fill>","pd8ac5e15":"1","pe56a7c7c":9062500000000002e-16,"pe61a57c3":0e0,"pebcd7501":"FIRST FLOOR","pedfa76dc":"899614","pee815a7f":"None","pef87fde6":0e0,"pfa63d9d0":0e0,"pffc76c27":true},"propsHash":"23268ea4","propsIgnored":{"p6a81eafd":3474,"p93e93af5":3475},"geomHash":"O6akM7FAzzA0uzaBty5NtA","bbox":{"min":[-4815099830268308e-15,-4103856183962611e-14,30479999999999993e-15],"max":[-18258683344228408e-16,-3289874318711497e-14,35439653082275385e-15]},"views":["cf7900d3","bfe04eff"]}
...
```

### Description

The `$like` operator is used to with the `%` wildcard character to find rows where the `Assembly Description` string matches the mask `'%Brick%'`. Note the need for the `'` character surrounding the mask, indicating that this is a `string` literal. The example query above uses a `''` double quote, which is the PowerShell escape sequence for `'`, allowing the example above to be used in conjunction with [runIndexQuery.ps1](../scripts/runIndexQuery.ps1). PowerShell will generate the following query string from the example above.

```
{
    "query": {
        "$like": ["s.props.p63ed81bb", "'%Brick%'"]
    }
}
```

---
[back](../README.md)