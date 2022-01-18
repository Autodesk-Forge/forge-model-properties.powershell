## Get changed objects where the object's geometry has changed

### Index Specification

```json
{
    "diffs": [
        {
            "prevVersionUrn": "urn:adsk.wipprod:fs.file:vf.wMlmWye9SMGMzvXlRAPWOQ?version=1",
            "curVersionUrn": "urn:adsk.wipprod:fs.file:vf.wMlmWye9SMGMzvXlRAPWOQ?version=2",
            "query": {
                "$and": [
                    { "$eq": ["s.changeType", "''Geometry''"] },
                    { "$eq": ["s.type", "''OBJECT_CHANGED''"] }                    
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
            { "$eq": ["s.changeType", "''Geometry''"] },
            { "$eq": ["s.type", "''OBJECT_CHANGED''"] }                    
        ]                
    }
}
```

### S3 SELECT

```sql
select s.* 
from S3Object[*] s 
where 
    s.changeType = 'Geometry' and
    s.type = 'OBJECT_CHANGED'

```

### Output

```json
{"type":"OBJECT_CHANGED","svf2Id":231,"externalId":"ea0341c6-aad8-415a-9b96-b5942dba4da4-000dcb2d","changeType":"Geometry","lmvId":2898,"lineageId":"4229ba","databaseId":"3d0bd846","props":{"p002932a2":0e0,"p01bbdcf2":"Arch-FIRST FLOOR","p0337db30":true,"p09faf620":"Standard","p13b6b3a0":"Standard","p13fd91d3":2568021983631486e-15,"p153cb174":"Round Takeoff - Bellmouth [903981]","p1b2aabe1":10500000000000227e-15,"p20d8441e":"Duct Fittings","p240c30c1":"Coefficient from ASHRAE Table","p2508403c":"6\"ø-6\"ø","p2c0bde18":"Supply Air","p30db51f9":"Round Takeoff - Bellmouth","p3a352521":24999999999999997e-17,"p3c57b64e":"New Construction","p4709f0b8":"6\"ø-6\"ø","p512a7a70":0e0,"p56cded73":5e0,"p5c2bd7ad":10e0,"p5eddc473":"Revit Duct Fittings","p602797af":7704065950894458e-15,"p75e3635f":5999999999999999e-15,"p7f055981":29999999999999996e-16,"p86cd967d":0e0,"p875a6521":"6\"ø-6\"ø","p893f47a6":0.24e0,"p8d70f1c5":"972","p8f7dfe92":0e0,"pa7275c45":-2008010,"paabc667d":39999999999999996e-16,"pab5862eb":"Supply Air","pc9829743":"Air Ductwork","pdbb511ef":"SA","pdbc25565":"23.75.70.14","pe36ff9a6":"Mechanical Supply Air 2","pe61a57c3":0e0,"pedfa76dc":"903981","pee815a7f":"None","pf12e16b6":2e0},"propsHash":"a2ca2cf","propsIgnored":{"p6a81eafd":2712,"p93e93af5":2713},"geomHash":"1S8ldQUaAXZI/eDuXoD7VQ","bboxMin":{"x":-19314974934578366e-15,"y":-8866412940140838e-15,"z":33.5534000030279e0},"bboxMax":{"x":-19.0503123219543e0,"y":-8566182619595377e-15,"z":3380739999697207e-14},"views":["f109b687","f24d458"],"prev":{"lmvId":2900,"lineageId":"994b7800","databaseId":"936acb06","props":{"p13fd91d3":13333333333333333e-16,"p602797af":4e0,"p893f47a6":10438475772936522e-16},"propsHash":"629b670","propsIgnored":{"p6a81eafd":2714,"p93e93af5":2715},"geomHash":"arl5IcWF/goZsB4FaWWRUg","bboxMin":{"x":-19331618548230097e-15,"y":-8841010599569081e-15,"z":33.5534000030279e0},"bboxMax":{"x":-19137691572750036e-15,"y":-8561344093990318e-15,"z":3380739999697207e-14},"views":["f109b687","8e525582"]}}
{"type":"OBJECT_CHANGED","svf2Id":519,"externalId":"df07fbd4-2fb7-4fdf-b179-fe34f21afad6-000e098a","changeType":"Geometry","lmvId":3348,"lineageId":"4229ba","databaseId":"3d0bd846","props":{"p002932a2":0e0,"p01bbdcf2":"Arch-FIRST FLOOR","p0337db30":true,"p09faf620":"Standard","p13b6b3a0":"Standard","p13fd91d3":2440883984938669e-15,"p153cb174":"Round Takeoff - Bellmouth [919946]","p1b2aabe1":10833333333333684e-15,"p20d8441e":"Duct Fittings","p240c30c1":"Coefficient from ASHRAE Table","p2508403c":"10\"ø-10\"ø","p2c0bde18":"Supply Air","p30db51f9":"Round Takeoff - Bellmouth","p3a352521":24999999999999997e-17,"p3c57b64e":"New Construction","p4709f0b8":"10\"ø-10\"ø","p512a7a70":0e0,"p56cded73":7000000000000001e-15,"p5c2bd7ad":14000000000000002e-15,"p5eddc473":"Revit Duct Fittings","p602797af":7322651954816008e-15,"p75e3635f":10e0,"p7f055981":5e0,"p86cd967d":0e0,"p875a6521":"10\"ø-10\"ø","p893f47a6":24000000000004262e-17,"p8d70f1c5":"1855","p8f7dfe92":0e0,"pa7275c45":-2008010,"paabc667d":39999999999999996e-16,"pab5862eb":"Supply Air","pc9829743":"Air Ductwork","pdbc25565":"23.75.70.14","pe36ff9a6":"Supply Room 126-132","pe61a57c3":0e0,"pedfa76dc":"919946","pee815a7f":"None","pf12e16b6":2e0},"propsHash":"5dcc579b","propsIgnored":{"p6a81eafd":2712,"p93e93af5":2713},"geomHash":"BdhBSoiJFUhVjBZPbQ2bjw","bboxMin":{"x":22469075433553584e-15,"y":-19.3708914508563e0,"z":33604200024980294e-15},"bboxMax":{"x":2286416360440973e-14,"y":-1908716880772724e-14,"z":33959799978804575e-15},"views":["f109b687","f24d458"],"prev":{"lmvId":3358,"lineageId":"994b7800","databaseId":"936acb06","props":{"p13fd91d3":13333333333333333e-16,"p602797af":4e0,"p893f47a6":23410205144337985e-16},"propsHash":"81a9f0a3","propsIgnored":{"p6a81eafd":2714,"p93e93af5":2715},"geomHash":"ZuyG4Uwd4ucRfSwwMJ8Mpg","bboxMin":{"x":2256612786539376e-14,"y":-1940100510197253e-14,"z":33604200024980294e-15},"bboxMax":{"x":2295255204070929e-14,"y":-1914707793418804e-14,"z":33959799978804575e-15},"views":["f109b687","8e525582"]}}
{"type":"OBJECT_CHANGED","svf2Id":4639,"externalId":"88c84245-7fce-41b3-acdc-15fc4f6eec3b-000fcff0","changeType":"Geometry","lmvId":4753,"lineageId":"4229ba","databaseId":"3d0bd846","props":{"p07d2c9bb":0e0,"p08ee891e":false,"p0aef9df9":0e0,"p13b6b3a0":"Taps / Short Radius","p153cb174":"Round Duct [1036272]","p15f8f5ec":13149131135538852e-16,"p1fe8f2b0":5e0,"p20d8441e":"Ducts","p2508403c":"5\"ø","p2c0bde18":"Supply Air","p30db51f9":"Round Duct","p3af5f744":17212172406874016e-16,"p3c57b64e":"New Construction","p43fcc07e":0e0,"p45fb58cd":"Middle","p4709f0b8":"5\"ø","p512a7a70":0e0,"p5eddc473":"Revit Center line","p6c3c219f":0e0,"p6de7c220":0e0,"p722a7fb7":0e0,"p742b8448":10768420219779458e-15,"p7e832617":12083333333333371e-15,"p86cd967d":0e0,"p875a6521":"5\"ø","p8876a5cb":"Arch-FIRST FLOOR","p8d70f1c5":"287","p8f7dfe92":0e0,"p8fff5ec3":0e0,"p9a289a89":12083333333333357e-15,"pa7275c45":-2008001,"paa557cc7":3.0E-4,"pab3dfabd":"Center","pab5862eb":"Supply Air","pb6382fcb":0e0,"pbdebede6":5e0,"pc5e53334":10768420219779472e-15,"pc98a05ba":"0","pdbb511ef":"SA","pe36ff9a6":"Mechanical Supply Air 2","pe61a57c3":0e0,"pedfa76dc":"1036272","pee815a7f":"None","pf369e722":10768420219779472e-15},"propsHash":"517dc744","propsIgnored":{"p6a81eafd":2529,"p93e93af5":2530},"geomHash":"oPHnwBkbBLVRCBr+VMKX2Q","bboxMin":{"x":-21252732608631238e-15,"y":-16323398444271827e-15,"z":3376221361083983e-14},"bboxMax":{"x":-21252732608631238e-15,"y":-16323398444271827e-15,"z":3416300076606272e-14},"views":["f109b687","f24d458"],"prev":{"lmvId":4781,"lineageId":"994b7800","databaseId":"936acb06","props":{"p15f8f5ec":8333333333333002e-16,"p3af5f744":10908307824964116e-16,"p742b8448":11250000000000043e-15,"pc5e53334":11250000000000057e-15,"pf369e722":11250000000000057e-15},"propsHash":"ee7846f6","propsIgnored":{"p6a81eafd":2529,"p93e93af5":2530},"geomHash":"Z8aUd6SSoAuKaX2E8a8udQ","bboxMin":{"x":-21252732608631238e-15,"y":-16323398444271827e-15,"z":33909000009083734e-15},"bboxMax":{"x":-21252732608631238e-15,"y":-16323398444271827e-15,"z":3416300076606272e-14},"views":["f109b687","8e525582"]}}
...
```

### Description 

Ues the `type` and `changeType` fields to determine the type of change

---
[back](../README.md)