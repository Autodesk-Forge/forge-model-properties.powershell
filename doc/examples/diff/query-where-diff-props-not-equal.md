## Get rows where Elevation from Level has changed 

### Fields

```json
{"key":"p1b2aabe1","category":"Constraints","type":"Double","name":"Elevation from Level","uom":"ft"}
```

### Index Specification

```json
{
    "diffs": [
        {
            "prevVersionUrn": "urn:adsk.wipprod:fs.file:vf.HdCtnuXlRVGYJsJI7pS90Q?version=1",
            "curVersionUrn": "urn:adsk.wipprod:fs.file:vf.HdCtnuXlRVGYJsJI7pS90Q?version=2",
            "query": 
                {
                    "$ne": [
                        "s.props.p1b2aabe1",
                        "s.prev.props.p1b2aabe1"
                    ]
                }
        }
    ]
}
```

### Query

The query JSON which could be used with the run query scripts in the `scripts` folder.

```json
{
    "query": 
        {
            "$ne": [
                "s.props.p1b2aabe1",
                "s.prev.props.p1b2aabe1"
            ]
        }
}
```

### S3 SELECT

```sql
select s.* 
from S3Object[*] s 
where 
    s.props.p1b2aabe1 <> s.prev.props.p1b2aabe1
```

### Output

```json
{"type":"OBJECT_CHANGED","svf2Id":127,"externalId":"4fcbe8e4-7bda-49d6-8863-f0ba387a7892-000ccf8f","lmvId":2608,"lineageId":"346f2e05","databaseId":"3d0bd846","props":{"p002932a2":0e0,"p01bbdcf2":"Arch-FIRST FLOOR","p0337db30":true,"p07bfebb5":14e0,"p09faf620":"1 D","p13b6b3a0":"1 D","p153cb174":"Round Elbow [839567]","p1b2aabe1":8750000000000028e-15,"p20d8441e":"Duct Fittings","p240c30c1":"Coefficient from ASHRAE Table","p2508403c":"14\"Ã¸-14\"Ã¸","p271e8080":9000000000000009e-14,"p2c0bde18":"Return Air","p30db51f9":"Round Elbow","p3c57b64e":"New Construction","p40adfd90":13999999999999996e-15,"p4709f0b8":"14\"Ã¸-14\"Ã¸","p512a7a70":0e0,"p52f36fef":7e0,"p5eddc473":"Revit Duct Fittings","p86cd967d":0e0,"p875a6521":"14\"Ã¸-14\"Ã¸","p8d70f1c5":"1460","p8f7dfe92":0e0,"pa7275c45":-2008010,"pab5862eb":"Return Air","pc9829743":"Air Ductwork","pccae2592":1e0,"pdbb511ef":"RA","pdbc25565":"23.75.70.14","pe36ff9a6":"Mechanical Return Air 2","pe61a57c3":0e0,"pedfa76dc":"839567","pee815a7f":"None"},"propsHash":"92705bd0","propsIgnored":{"p6a81eafd":2588,"p93e93af5":2589},"geomHash":"pgCPY/Q9PGx996XUOeQmsg","bbox":{"min":[29311146955028047e-15,-17986398379990533e-15,32969199978804575e-15],"max":[2997224404688642e-14,-17325301288132156e-15,33.3248000030279e0]},"views":["f109b687","f24d458"],"prev":{"lmvId":2608,"lineageId":"ad667fbf","databaseId":"936acb06","props":{"p1b2aabe1":10666666666666671e-15},"propsHash":"5c47b822","propsIgnored":{"p6a81eafd":2588,"p93e93af5":2589},"geomHash":"oWhRZbDyBKalU0YyhjEAgA","bbox":{"min":[29311146955028047e-15,-17986398379990533e-15,3355340000756978e-14],"max":[2997224404688642e-14,-17325301288132156e-15,33908999990916236e-15]},"views":["f109b687","8e525582"]}}
{"type":"OBJECT_CHANGED","svf2Id":128,"externalId":"4fcbe8e4-7bda-49d6-8863-f0ba387a7892-000ccf91","lmvId":2610,"lineageId":"346f2e05","databaseId":"3d0bd846","props":{"p002932a2":0e0,"p01bbdcf2":"Arch-FIRST FLOOR","p0337db30":true,"p07bfebb5":14e0,"p09faf620":"1 D","p13b6b3a0":"1 D","p153cb174":"Round Elbow [839569]","p1b2aabe1":8750000000000028e-15,"p20d8441e":"Duct Fittings","p240c30c1":"Coefficient from ASHRAE Table","p2508403c":"14\"Ã¸-14\"Ã¸","p271e8080":45e0,"p2c0bde18":"Return Air","p30db51f9":"Round Elbow","p3c57b64e":"New Construction","p40adfd90":57989898732233245e-16,"p4709f0b8":"14\"Ã¸-14\"Ã¸","p512a7a70":0e0,"p52f36fef":7e0,"p5eddc473":"Revit Duct Fittings","p86cd967d":0e0,"p875a6521":"14\"Ã¸-14\"Ã¸","p8d70f1c5":"1464","p8f7dfe92":0e0,"pa7275c45":-2008010,"pab5862eb":"Return Air","pc9829743":"Air Ductwork","pccae2592":1e0,"pdbb511ef":"RA","pdbc25565":"23.75.70.14","pe36ff9a6":"Mechanical Return Air 2","pe61a57c3":0e0,"pedfa76dc":"839569","pee815a7f":"None"},"propsHash":"9c3a1de","propsIgnored":{"p6a81eafd":2588,"p93e93af5":2589},"geomHash":"2lR7pGHE8oGswaIfacQ2fQ","bbox":{"min":[26979165972522495e-15,-1713391835475864e-14,32969199978804575e-15],"max":[27455147298158398e-15,-16637159535657883e-15,33.3248000030279e0]},"views":["f109b687","f24d458"],"prev":{"lmvId":2610,"lineageId":"ad667fbf","databaseId":"936acb06","props":{"p1b2aabe1":10666666666666671e-15},"propsHash":"a94214ff","propsIgnored":{"p6a81eafd":2588,"p93e93af5":2589},"geomHash":"uPuhBkNUFL545lmxjDfo3A","bbox":{"min":[26979165972522495e-15,-1713391835475864e-14,3355340000756978e-14],"max":[27455147298158398e-15,-16637159535657883e-15,33908999990916236e-15]},"views":["f109b687","8e525582"]}}
{"type":"OBJECT_CHANGED","svf2Id":129,"externalId":"4fcbe8e4-7bda-49d6-8863-f0ba387a7892-000ccf93","lmvId":2612,"lineageId":"346f2e05","databaseId":"3d0bd846","props":{"p002932a2":0e0,"p01bbdcf2":"Arch-FIRST FLOOR","p0337db30":true,"p07bfebb5":14e0,"p09faf620":"1 D","p13b6b3a0":"1 D","p153cb174":"Round Elbow [839571]","p1b2aabe1":8750000000000028e-15,"p20d8441e":"Duct Fittings","p240c30c1":"Coefficient from ASHRAE Table","p2508403c":"14\"Ã¸-14\"Ã¸","p271e8080":45e0,"p2c0bde18":"Return Air","p30db51f9":"Round Elbow","p3c57b64e":"New Construction","p40adfd90":57989898732233245e-16,"p4709f0b8":"14\"Ã¸-14\"Ã¸","p512a7a70":0e0,"p52f36fef":7e0,"p5eddc473":"Revit Duct Fittings","p86cd967d":0e0,"p875a6521":"14\"Ã¸-14\"Ã¸","p8d70f1c5":"1471","p8f7dfe92":0e0,"pa7275c45":-2008010,"pab5862eb":"Return Air","pc9829743":"Air Ductwork","pccae2592":1e0,"pdbb511ef":"RA","pdbc25565":"23.75.70.14","pe36ff9a6":"Mechanical Return Air 2","pe61a57c3":0e0,"pedfa76dc":"839571","pee815a7f":"None"},"propsHash":"ebcaf0d5","propsIgnored":{"p6a81eafd":2588,"p93e93af5":2589},"geomHash":"HwWFZcic3kP/lyK/eDDCWA","bbox":{"min":[26409013127724254e-15,-17471848365905288e-15,32969199978804575e-15],"max":[26884994453360154e-15,-16975089546804533e-15,33.3248000030279e0]},"views":["f109b687","f24d458"],"prev":{"lmvId":2612,"lineageId":"ad667fbf","databaseId":"936acb06","props":{"p1b2aabe1":10666666666666671e-15},"propsHash":"b51735e6","propsIgnored":{"p6a81eafd":2588,"p93e93af5":2589},"geomHash":"mg1/IqEv1Kf9Y2iaJ835jA","bbox":{"min":[26471974119382864e-15,-17437248450404326e-15,3355340000756978e-14],"max":[26947955445018767e-15,-1694048963130357e-14,33908999990916236e-15]},"views":["f109b687","8e525582"]}}
...
```

### Description 

The `$ne`, not equal, operator is used to compare a field (`p1b2aabe1`) in the current version of the file `s.props.p1b2aabe1` with the previous value of this field `s.prev.props.p1b2aabe1`.

---
[back](../README.md)