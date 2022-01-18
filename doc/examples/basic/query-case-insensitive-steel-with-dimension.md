## Get case insensitive Structural Material steel with a height > 0.5 ft

### Fields

```json
{"key":"p6637df3c","category":"Materials and Finishes","type":"String","name":"Structural Material","uom":null}
{"key":"p69a0daab","category":"Dimensions","type":"Double","name":"Ht","uom":"ft"}

```

### Index Specification

```json
{
    "versions": [
        {
            "versionUrn": "urn:adsk.wipprod:fs.file:vf.3F_w-tXFS3eabQ1RyR_PFg?version=1",
            "query": 
            {
                "$and": [
                    { 
                        "$or": [
                            { "$like": ["s.props.p6637df3c", "''%Steel%''"] },
                            { "$like": ["s.props.p6637df3c", "''%steel%''"] }
                        ]
                    },
                    {
                        "$ge": ["s.props.p69a0daab", 0.5]
                    }
                ]
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
            { 
                "$or": [
                    { "$like": ["s.props.p6637df3c", "''%Steel%''"] },
                    { "$like": ["s.props.p6637df3c", "''%steel%''"] }
                ]
            },
            {
                "$ge": ["s.props.p69a0daab", 0.5]
            }
        ]
    }
}
```

### S3 SELECT

```sql
select s.* 
from S3Object[*] s 
where 
    s.props.p69a0daab >= 0.5 and
    (s.props.p6637df3c like '%Steel%' or s.props.p6637df3c like '%steel%')
```

### Output

```json
{"svf2Id":68,"lineageId":"591c4a0d","externalId":"b5c4b31f-321a-418d-a61a-0c8e326aa154-0003f740","lmvId":2388,"databaseId":"3747dccf","props":{"p00723fa6":"Main Model","p09faf620":"HSS7X7X.250","p0e507bbe":"None","p13b6b3a0":"HSS7X7X.250","p153cb174":"HSS-Hollow Structural Section-Column [259904]","p188478f2":0.485383241976329e0,"p20d8441e":"Structural Columns","p2a0774a1":0e0,"p30db51f9":"HSS-Hollow Structural Section-Column","p34ed55db":"F-1.2","p3c57b64e":"New Construction","p54217060":"B10","p5eddc473":"Revit Structural Columns","p63ed81bb":"Superstructure","p6637df3c":"Metal - Steel - ASTM A500 - Grade B - Rectangular and Square","p69a0daab":5833333333333334e-16,"p6aba1771":0.01953125e0,"p751e1b21":true,"p773b5bd7":"Not Defined","p801ffb64":0.0390625e0,"p809920c7":"Square","p953136d0":0.04e0,"pa128dfb9":"Vertical","pa57238c6":"Minimum Intersection","pa7275c45":-2001330,"pa7456b2d":true,"pb5b8cef7":true,"pbadfe721":"BEARING","pbb4f1bfe":"None","pc2b858d6":22.4e0,"pddd761c6":"FOUNDATION PLAN","pe61a57c3":0e0,"pedfa76dc":"259904","pee815a7f":"None","pef87fde6":0e0,"pf4ca60ab":5833333333333334e-16,"pfa63d9d0":-9803431364364671e-16},"propsHash":"fd438c01","propsIgnored":{"p6a81eafd":2386,"p93e93af5":2387},"geomHash":"R3MsiIeXpiFLIFRnJhUc6A","bbox":{"min":[-43085461391840646e-15,-16490426773305373e-15,3047999999573433e-14],"max":[-4286509761599091e-14,-1627006299745564e-14,3383879047310555e-14]},"views":["e7fda9d5","12fcb372"]}
{"svf2Id":69,"lineageId":"591c4a0d","externalId":"b5c4b31f-321a-418d-a61a-0c8e326aa154-0003f742","lmvId":2389,"databaseId":"3747dccf","props":{"p00723fa6":"Main Model","p09faf620":"HSS7X7X.250","p0e507bbe":"None","p13b6b3a0":"HSS7X7X.250","p153cb174":"HSS-Hollow Structural Section-Column [259906]","p188478f2":5285644531249998e-16,"p20d8441e":"Structural Columns","p30db51f9":"HSS-Hollow Structural Section-Column","p34ed55db":"F-3","p3c57b64e":"New Construction","p54217060":"B10","p5eddc473":"Revit Structural Columns","p63ed81bb":"Superstructure","p6637df3c":"Metal - Steel - ASTM A500 - Grade B - Rectangular and Square","p69a0daab":5833333333333334e-16,"p6aba1771":0.01953125e0,"p773b5bd7":"Not Defined","p801ffb64":0.0390625e0,"p809920c7":"Square","p953136d0":0.04e0,"pa128dfb9":"Vertical","pa7275c45":-2001330,"pa7456b2d":true,"pb5b8cef7":true,"pbadfe721":"BEARING","pbb4f1bfe":"None","pc2b858d6":22.4e0,"pddd761c6":"FOUNDATION PLAN","pe61a57c3":0e0,"pedfa76dc":"259906","pee815a7f":"None","pef87fde6":0e0,"pf4ca60ab":5833333333333334e-16,"pfa63d9d0":0e0},"propsHash":"2fa7b1d5","propsIgnored":{"p6a81eafd":2386,"p93e93af5":2387},"geomHash":"5X6Q+ygR9xcxUq0uo/rp5g","bbox":{"min":[-35783795179689584e-15,-1903454795276086e-14,3047999999573433e-14],"max":[-35563428683975644e-15,-18.8141818530048e0,34.1376001410743e0]},"views":["e7fda9d5","12fcb372"]}
{"svf2Id":70,"lineageId":"591c4a0d","externalId":"b5c4b31f-321a-418d-a61a-0c8e326aa154-0003f743","lmvId":2392,"databaseId":"3747dccf","props":{"p00723fa6":"Main Model","p09faf620":"HSS6X6X.1875","p0e507bbe":"None","p13b6b3a0":"HSS6X6X.1875","p153cb174":"HSS-Hollow Structural Section-Column [259907]","p188478f2":5622698018705423e-16,"p20d8441e":"Structural Columns","p30db51f9":"HSS-Hollow Structural Section-Column","p34ed55db":"A-7","p3c57b64e":"New Construction","p54217060":"B10","p5eddc473":"Revit Structural Columns","p63ed81bb":"Superstructure","p6637df3c":"Metal - Steel - ASTM A500 - Grade B - Rectangular and Square","p69a0daab":0.5e0,"p6aba1771":0.0146484375e0,"p773b5bd7":"Not Defined","p801ffb64":0.029296875e0,"p809920c7":"Square","p953136d0":0.03e0,"pa128dfb9":"Vertical","pa7275c45":-2001330,"pa7456b2d":true,"pb5b8cef7":true,"pbadfe721":"BEARING","pbb4f1bfe":"None","pc2b858d6":14.5e0,"pddd761c6":"FOUNDATION PLAN","pe61a57c3":0e0,"pedfa76dc":"259907","pee815a7f":"None","pef87fde6":0e0,"pf4ca60ab":0.5e0,"pfa63d9d0":7771382285923252e-15},"propsHash":"15305dd6","propsIgnored":{"p6a81eafd":2390,"p93e93af5":2391},"geomHash":"JAd2gNsYf3qy/hDWAG8icg","bbox":{"min":[-12397173516055744e-15,2150828870281824e-15,3047999999573433e-14],"max":[-12199820862474244e-15,23481815238633246e-16,36506318057181474e-15]},"views":["e7fda9d5","12fcb372"]}
...
```

### Description 

This query demonstrates the use of `$and` and `$or`. The `$and` condition wraps the array of expressions which will be ANDED together. The first expression is an embedded `$or` which is using the `$like` operator to scan the Structural Material text field for `Steel` or `steel`.  

---
[back](../README.md)