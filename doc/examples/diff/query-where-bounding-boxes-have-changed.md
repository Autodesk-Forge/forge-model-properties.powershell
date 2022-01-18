## Get viewable elements where the element bounding box has changed

### Index Specification

```json
{
    "diffs": [
        {
            "prevVersionUrn": "urn:adsk.wipprod:fs.file:vf.wMlmWye9SMGMzvXlRAPWOQ?version=1",
            "curVersionUrn": "urn:adsk.wipprod:fs.file:vf.wMlmWye9SMGMzvXlRAPWOQ?version=2",
            "query": {
                "$and": [
                    { "$gt": [{ "$count": "s.views" }, 0] },
                    { "$or": [
                        { "$ne": ["s.bboxMin.x", "s.prev.bboxMin.x"] },
                        { "$ne": ["s.bboxMin.y", "s.prev.bboxMin.y"] },
                        { "$ne": ["s.bboxMin.z", "s.prev.bboxMin.z"] },
                        { "$ne": ["s.bboxMax.x", "s.prev.bboxMax.x"] },
                        { "$ne": ["s.bboxMax.y", "s.prev.bboxMax.y"] },
                        { "$ne": ["s.bboxMax.z", "s.prev.bboxMax.z"] }
                    ]}                    
                ]
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
            { "$gt": [{ "$count": "s.views" }, 0] },
            { "$or": [
                { "$ne": ["s.bboxMin.x", "s.prev.bboxMin.x"] },
                { "$ne": ["s.bboxMin.y", "s.prev.bboxMin.y"] },
                { "$ne": ["s.bboxMin.z", "s.prev.bboxMin.z"] },
                { "$ne": ["s.bboxMax.x", "s.prev.bboxMax.x"] },
                { "$ne": ["s.bboxMax.y", "s.prev.bboxMax.y"] },
                { "$ne": ["s.bboxMax.z", "s.prev.bboxMax.z"] }
            ]}                    
        ]
    }
}
```

### S3 SELECT

The S3 select query

```sql
select s.* 
from S3S3Object[*] s
where 
    count(s.views) > 0
    and (
        s.bboxMin.x <> s.prev.bboxMin.x or
        s.bboxMin.y <> s.prev.bboxMin.y or
        s.bboxMin.z <> s.prev.bboxMin.z or
        s.bboxMax.x <> s.prev.bboxMax.x or
        s.bboxMax.y <> s.prev.bboxMax.y or
        s.bboxMax.z <> s.prev.bboxMax.z
    )
```

### Output

Some sample query output lines. Three are normally enough

```json
{"type":"OBJECT_CHANGED","svf2Id":127,"externalId":"4fcbe8e4-7bda-49d6-8863-f0ba387a7892-000ccf8f","changeType":"Transform","lmvId":2608,"lineageId":"e1eeca2b","databaseId":"3d0bd846","props":{"p002932a2":0e0,"p01bbdcf2":"Arch-FIRST FLOOR","p0337db30":true,"p07bfebb5":14e0,"p09faf620":"1 D","p13b6b3a0":"1 D","p153cb174":"Round Elbow [839567]","p1b2aabe1":8750000000000028e-15,"p20d8441e":"Duct Fittings","p240c30c1":"Coefficient from ASHRAE Table","p2508403c":"14\"Ã¸-14\"Ã¸","p271e8080":9000000000000009e-14,"p2c0bde18":"Return Air","p30db51f9":"Round Elbow","p3c57b64e":"New Construction","p40adfd90":13999999999999996e-15,"p4709f0b8":"14\"Ã¸-14\"Ã¸","p512a7a70":0e0,"p52f36fef":7e0,"p5eddc473":"Revit Duct Fittings","p86cd967d":0e0,"p875a6521":"14\"Ã¸-14\"Ã¸","p8d70f1c5":"1460","p8f7dfe92":0e0,"pa7275c45":-2008010,"pab5862eb":"Return Air","pc9829743":"Air Ductwork","pccae2592":1e0,"pdbb511ef":"RA","pdbc25565":"23.75.70.14","pe36ff9a6":"Mechanical Return Air 2","pe61a57c3":0e0,"pedfa76dc":"839567","pee815a7f":"None"},"propsHash":"92705bd0","propsIgnored":{"p6a81eafd":2588,"p93e93af5":2589},"geomHash":"35w/2kXfdhGb+Hqh23vEqQ","bboxMin":{"x":29311146955028047e-15,"y":-17986398379990533e-15,"z":32969199978804575e-15},"bboxMax":{"x":2997224404688642e-14,"y":-17325301288132156e-15,"z":33.3248000030279e0},"views":["f109b687","f24d458"],"prev":{"lmvId":2608,"lineageId":"78e79b91","databaseId":"936acb06","props":{"p1b2aabe1":10666666666666671e-15},"propsHash":"5c47b822","propsIgnored":{"p6a81eafd":2588,"p93e93af5":2589},"geomHash":"EEmlccavNc/o2bYUORx21w","bboxMin":{"x":29311146955028047e-15,"y":-17986398379990533e-15,"z":3355340000756978e-14},"bboxMax":{"x":2997224404688642e-14,"y":-17325301288132156e-15,"z":33908999990916236e-15},"views":["f109b687","8e525582"]}}
{"type":"OBJECT_CHANGED","svf2Id":128,"externalId":"4fcbe8e4-7bda-49d6-8863-f0ba387a7892-000ccf91","changeType":"Transform","lmvId":2610,"lineageId":"e1eeca2b","databaseId":"3d0bd846","props":{"p002932a2":0e0,"p01bbdcf2":"Arch-FIRST FLOOR","p0337db30":true,"p07bfebb5":14e0,"p09faf620":"1 D","p13b6b3a0":"1 D","p153cb174":"Round Elbow [839569]","p1b2aabe1":8750000000000028e-15,"p20d8441e":"Duct Fittings","p240c30c1":"Coefficient from ASHRAE Table","p2508403c":"14\"Ã¸-14\"Ã¸","p271e8080":45e0,"p2c0bde18":"Return Air","p30db51f9":"Round Elbow","p3c57b64e":"New Construction","p40adfd90":57989898732233245e-16,"p4709f0b8":"14\"Ã¸-14\"Ã¸","p512a7a70":0e0,"p52f36fef":7e0,"p5eddc473":"Revit Duct Fittings","p86cd967d":0e0,"p875a6521":"14\"Ã¸-14\"Ã¸","p8d70f1c5":"1464","p8f7dfe92":0e0,"pa7275c45":-2008010,"pab5862eb":"Return Air","pc9829743":"Air Ductwork","pccae2592":1e0,"pdbb511ef":"RA","pdbc25565":"23.75.70.14","pe36ff9a6":"Mechanical Return Air 2","pe61a57c3":0e0,"pedfa76dc":"839569","pee815a7f":"None"},"propsHash":"9c3a1de","propsIgnored":{"p6a81eafd":2588,"p93e93af5":2589},"geomHash":"irLYC2QrZNRVS+rC8aa+AQ","bboxMin":{"x":26979165972522495e-15,"y":-1713391835475864e-14,"z":32969199978804575e-15},"bboxMax":{"x":27455147298158398e-15,"y":-16637159535657883e-15,"z":33.3248000030279e0},"views":["f109b687","f24d458"],"prev":{"lmvId":2610,"lineageId":"78e79b91","databaseId":"936acb06","props":{"p1b2aabe1":10666666666666671e-15},"propsHash":"a94214ff","propsIgnored":{"p6a81eafd":2588,"p93e93af5":2589},"geomHash":"S5/tmBEJ2ZTd03CWynkFSA","bboxMin":{"x":26979165972522495e-15,"y":-1713391835475864e-14,"z":3355340000756978e-14},"bboxMax":{"x":27455147298158398e-15,"y":-16637159535657883e-15,"z":33908999990916236e-15},"views":["f109b687","8e525582"]}}
{"type":"OBJECT_CHANGED","svf2Id":129,"externalId":"4fcbe8e4-7bda-49d6-8863-f0ba387a7892-000ccf93","changeType":"Transform","lmvId":2612,"lineageId":"e1eeca2b","databaseId":"3d0bd846","props":{"p002932a2":0e0,"p01bbdcf2":"Arch-FIRST FLOOR","p0337db30":true,"p07bfebb5":14e0,"p09faf620":"1 D","p13b6b3a0":"1 D","p153cb174":"Round Elbow [839571]","p1b2aabe1":8750000000000028e-15,"p20d8441e":"Duct Fittings","p240c30c1":"Coefficient from ASHRAE Table","p2508403c":"14\"Ã¸-14\"Ã¸","p271e8080":45e0,"p2c0bde18":"Return Air","p30db51f9":"Round Elbow","p3c57b64e":"New Construction","p40adfd90":57989898732233245e-16,"p4709f0b8":"14\"Ã¸-14\"Ã¸","p512a7a70":0e0,"p52f36fef":7e0,"p5eddc473":"Revit Duct Fittings","p86cd967d":0e0,"p875a6521":"14\"Ã¸-14\"Ã¸","p8d70f1c5":"1471","p8f7dfe92":0e0,"pa7275c45":-2008010,"pab5862eb":"Return Air","pc9829743":"Air Ductwork","pccae2592":1e0,"pdbb511ef":"RA","pdbc25565":"23.75.70.14","pe36ff9a6":"Mechanical Return Air 2","pe61a57c3":0e0,"pedfa76dc":"839571","pee815a7f":"None"},"propsHash":"ebcaf0d5","propsIgnored":{"p6a81eafd":2588,"p93e93af5":2589},"geomHash":"f3+1qwZON5rfLy7kMzpC0g","bboxMin":{"x":26409013127724254e-15,"y":-17471848365905288e-15,"z":32969199978804575e-15},"bboxMax":{"x":26884994453360154e-15,"y":-16975089546804533e-15,"z":33.3248000030279e0},"views":["f109b687","f24d458"],"prev":{"lmvId":2612,"lineageId":"78e79b91","databaseId":"936acb06","props":{"p1b2aabe1":10666666666666671e-15},"propsHash":"b51735e6","propsIgnored":{"p6a81eafd":2588,"p93e93af5":2589},"geomHash":"a/aqk8eRwOfT29vlJlvcdw","bboxMin":{"x":26471974119382864e-15,"y":-17437248450404326e-15,"z":3355340000756978e-14},"bboxMax":{"x":26947955445018767e-15,"y":-1694048963130357e-14,"z":33908999990916236e-15},"views":["f109b687","8e525582"]}}
...
```

### Description 

This query uses a count to restrict the rows considered to those which are viewable, `s.views > 0`. Then the `s.bbox*` and `s.prev.bbox*` objects are compared to detect where x current != x previous or y current != y previous or z current != z previous.

---
[back](../README.md)