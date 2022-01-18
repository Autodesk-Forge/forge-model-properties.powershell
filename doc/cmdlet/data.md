![alt text](../img/autodesk-logo.png "Autodesk (c)")

# Cmdlets

The [ForgeCLI](../src/ForgeCLI.psd1) module contains the following Forge Data Management API cmdlets. 

[ConvertTo-ForgeDataFilter](#ConvertTo-ForgeDataFilter)

[Get-ForgeHubs](#Get-ForgeHubs)

[Get-ForgeHub](#Get-ForgeHub)

[Get-ForgeProjects](#Get-ForgeProjects)

[Get-ForgeProject](#Get-ForgeProject)

[Get-Get-ForgeProjectTopFolders](#Get-Get-ForgeProjectTopFolders)

[Get-ForgeFolderContents](#Get-ForgeFolderContents)

[Search-ForgeFolder](#Search-ForgeFolder)

[Get-ForgeFolderByPath](#Get-ForgeFolderByPath)

[Get-ForgeItemByPath](#Get-ForgeItemByPath)

# <a name="ConvertTo-ForgeDataFilter"></a>ConvertTo-ForgeDataFilter

### Syntax

```PowerShell
ConvertTo-ForgeDataFilter
    [-Filters] <hashtable>
```

### Description

Converts a hash table of filter values into a URL encoded Forge Data Management query parameter. For mor information see the [Forge Data Management filtering tutorial](https://forge.autodesk.com/en/docs/data/v2/developers_guide/filtering/). When using [comparison operators](https://forge.autodesk.com/en/docs/data/v2/developers_guide/filtering/#comparison-types) apply the operator in the value of the hash table filter row, see examples below.

### Examples

```PowerShell
ConvertTo-ForgeDataFilter -Filters @{ 'attributes.name' = 'foo' }
```

```PowerShell
ConvertTo-ForgeDataFilter -Filters @{ 
    'attributes.displayName' = 'bar'
    'extension.type' = 'folders:autodesk.bim360:Folder'
};
```

```PowerShell
ConvertTo-ForgeDataFilter -Filters @{ 'attributes.name' = '-starts=cat' }
```

```PowerShell
ConvertTo-ForgeDataFilter -Filters @{ 'lastModifiedTime' = '-ge=2020' }
```

### Parameters

#### `-Filters`

The hash table of filters to convert to an encoded query string.

| Attribute                  | Value                          |
| -------------------------- |------------------------------- |
| Type    	                 | `System.Collections.Hashtable` |
| Position                   | Named                          |
| Default value              | None                           |
| Accept pipeline input      | False                          |
| Accept wildcard characters | False                          |

### Outputs

A `[PSCustomObject]` with the following properties

| Name    | Type     | Description                                                                    |
| ------- | -------- | ------------------------------------------------------------------------------ |
| Clear   | `string` | A clear text, human readable version of the filter string for debug purposes   |
| Encoded | `string` | A set of URL encoded query parameters which can be appended to Forge Data URLs |

# <a name="Get-ForgeHubs"></a>Get-ForgeHubs

### Syntax

```PowerShell
Get-ForgeHubs
    [[-Filter] <hashtable>]
```

### Description

Get a [collection of Hubs](https://forge.autodesk.com/en/docs/data/v2/reference/http/hubs-GET/) (accounts) accessible to the calling Forge user.

### Examples

```PowerShell
Get-ForgeHubs;
```

```PowerShell
Get-ForgeHubs -Filter @{ 'attributes.name' = 'foo' };
```

### Parameters

#### `-Filter`

An optional hash table of filters to apply.

| Attribute                  | Value                          |
| -------------------------- |------------------------------- |
| Type    	                 | `System.Collections.Hashtable` |
| Position                   | Named                          |
| Default value              | None                           |
| Accept pipeline input      | False                          |
| Accept wildcard characters | False                          |

### Outputs

A JSON API collection of Hubs, see the [Forge Data Management API documentation](https://forge.autodesk.com/en/docs/data/v2/reference/http/hubs-GET/) for more information.

# <a name="Get-ForgeHub"></a>Get-ForgeHub

### Syntax

```PowerShell
Get-ForgeHub
    [-HubId] <string>] 
```

### Description

Get a [Hub by ID](https://forge.autodesk.com/en/docs/data/v2/reference/http/hubs-hub_id-GET/).

### Examples

```PowerShell
Get-ForgeHub -HubId 'b.f252a243-96e5-41f5-b34f-f5068a780e39';
```

### Parameters

#### `-HubId`

The ID of the Hub to retrieve. BIM 360/ACC Hubs are identified by a `guid` which is prefixed with `b.`. If you have the guid ID of an existing Hub then you will need to add this prefix *before* supplying it as an input parameter using `-HubId`. 

| Attribute                  | Value           |
| -------------------------- |---------------- |
| Type    	                 | `System.String` |
| Position                   | Named           |
| Default value              | None            |
| Accept pipeline input      | False           |
| Accept wildcard characters | False           |

### Outputs

A JSON API hub, see the [Forge Data Management API documentation](https://forge.autodesk.com/en/docs/data/v2/reference/http/hubs-hub_id-GET/) for more information.

# <a name="Get-ForgeProjects"></a>Get-ForgeProjects

### Syntax

```PowerShell
Get-ForgeProjects
    [-HubId] <string>
    [[-Filter] <hashtable>]
```

### Description

Return a [collection of Projects](https://forge.autodesk.com/en/docs/data/v2/reference/http/hubs-hub_id-projects-GET/) accessible to the calling Forge user. The projects can [optionally filtered](https://forge.autodesk.com/en/docs/data/v2/developers_guide/filtering/).

### Examples

```PowerShell
Get-ForgeProjects `
    -HubId 'b.f252a243-96e5-41f5-b34f-f5068a780e39' `
   ;
```

```PowerShell
Get-ForgeProjects `
    -HubId 'b.f252a243-96e5-41f5-b34f-f5068a780e39' `
    -Filter @{ 'attributes.name' = 'foo' } `
   ;
```

```PowerShell
Get-ForgeProjects `
    -HubId 'b.f252a243-96e5-41f5-b34f-f5068a780e39' `
    -Filter @{ 'attributes.name' = '-starts=bar' } `
   ;
```

### Parameters

#### `-HubId`

The ID of the Hub to query.

| Attribute                  | Value           |
| -------------------------- |---------------- |
| Type    	                 | `System.String` |
| Position                   | Named           |
| Default value              | None            |
| Accept pipeline input      | False           |
| Accept wildcard characters | False           |

#### `-Filter`

An optional hash table of filters to apply.

| Attribute                  | Value                          |
| -------------------------- |------------------------------- |
| Type    	                 | `System.Collections.Hashtable` |
| Position                   | Named                          |
| Default value              | None                           |
| Accept pipeline input      | False                          |
| Accept wildcard characters | False                          |

### Outputs

A JSON API collection of Projects, see the [Forge Data Management API documentation](https://forge.autodesk.com/en/docs/data/v2/reference/http/hubs-hub_id-projects-GET/) for more information.

# <a name="Get-ForgeProject"></a>Get-ForgeProject

### Syntax

```PowerShell
Get-ForgeProjects
    [-HubId] <string>
    [-ProjectId] <string>
```

### Description

Get a Hub [Project by ID](https://forge.autodesk.com/en/docs/data/v2/reference/http/hubs-hub_id-projects-project_id-GET/).

### Examples

```PowerShell
Get-ForgeProject `
    -HubId 'b.f252a243-96e5-41f5-b34f-f5068a780e39' `
    -ProjectId 'b.f83eef12-deef-4781-9feb-af85644e3c46' `
   ;
```

### Parameters

#### `-HubId`

The ID of the Hub to query. BIM 360/ACC Hubs are identified by a `guid` which is prefixed with `b.`. If you have the guid ID of an existing Hub then you will need to add this prefix *before* supplying it as an input parameter using `-HubId`. 

| Attribute                  | Value           |
| -------------------------- |---------------- |
| Type    	                 | `System.String` |
| Position                   | Named           |
| Default value              | None            |
| Accept pipeline input      | False           |
| Accept wildcard characters | False           |

#### `-ProjectId`

The ID of the Project to query. BIM 360/ACC Projects are identified by a `guid` which is prefixed with `b.`. If you have the guid ID of an existing Project then you will need to add this prefix *before* supplying it as an input parameter using `-ProjectId`. 

| Attribute                  | Value           |
| -------------------------- |---------------- |
| Type    	                 | `System.String` |
| Position                   | Named           |
| Default value              | None            |
| Accept pipeline input      | False           |
| Accept wildcard characters | False           |

### Outputs

A JSON API hub, see the [Forge Data Management API documentation](https://forge.autodesk.com/en/docs/data/v2/reference/http/hubs-hub_id-projects-project_id-GET/) for more information.

# <a name="Get-ForgeProjectTopFolders"></a>Get-ForgeProjectTopFolders

### Syntax

```PowerShell
Get-ForgeProjectTopFolders
    [-HubId] <string>
    [-ProjectId] <string>
```

### Description
Get the [top (root) folders](https://forge.autodesk.com/en/docs/data/v2/reference/http/hubs-hub_id-projects-project_id-topFolders-GET/) for the specified Hub Project.
### Examples

```PowerShell
Get-ForgeProjectTopFolders `
    -HubId 'b.f252a243-96e5-41f5-b34f-f5068a780e39' `
    -ProjectId 'b.f83eef12-deef-4781-9feb-af85644e3c46' `
   ;
```

### Parameters

#### `-HubId`

The ID of the Hub to query. BIM 360/ACC Hubs are identified by a `guid` which is prefixed with `b.`. If you have the guid ID of an existing Hub then you will need to add this prefix *before* supplying it as an input parameter using `-HubId`. 

| Attribute                  | Value           |
| -------------------------- |---------------- |
| Type    	                 | `System.String` |
| Position                   | Named           |
| Default value              | None            |
| Accept pipeline input      | False           |
| Accept wildcard characters | False           |

#### `-ProjectId`

The ID of the Project to query. BIM 360/ACC Projects are identified by a `guid` which is prefixed with `b.`. If you have the guid ID of an existing Project then you will need to add this prefix *before* supplying it as an input parameter using `-ProjectId`. 

| Attribute                  | Value           |
| -------------------------- |---------------- |
| Type    	                 | `System.String` |
| Position                   | Named           |
| Default value              | None            |
| Accept pipeline input      | False           |
| Accept wildcard characters | False           |

### Outputs

If this call is successful there will be a maximum of two folder in `data[]` array of the JSON API response returned by this cmdlet, see the [Forge Data Management API documentation](https://forge.autodesk.com/en/docs/data/v2/reference/http/hubs-hub_id-projects-project_id-topFolders-GET/) for more information.

# <a name="Get-ForgeFolderContents"></a>Get-ForgeFolderContents

### Syntax

```PowerShell
Get-ForgeFolderContents
    [-ProjectId] <string>
    [-FolderUrn] <string>
    [[-Filter] <hashtable>]
``` 

### Description

Get the [contents](https://forge.autodesk.com/en/docs/data/v2/reference/http/projects-project_id-folders-folder_id-contents-GET/) of a Project Folder using an optional filter.

### Examples

```PowerShell
Get-ForgeFolderContents `
    -ProjectId 'b.f83eef12-deef-4781-9feb-af85644e3c46' `
    -FolderUrn 'urn:adsk.wipprod:fs.folder:co.YqcE36AxRFKKie-mclpFbQ' `
   ;
```

```PowerShell
Get-ForgeFolderContents `
    -ProjectId 'b.f83eef12-deef-4781-9feb-af85644e3c46' `
    -FolderUrn 'urn:adsk.wipprod:fs.folder:co.YqcE36AxRFKKie-mclpFbQ' `
    -Filter @{ 
        'attributes.name' = 'API Testing'
        'extension.type' = 'folders:autodesk.bim360:Folder'
    } `
   ;
```

### Parameters

#### `-ProjectId`

The ID of the Project to query. BIM 360/ACC Projects are identified by a `guid` which is prefixed with `b.`. If you have the guid ID of an existing Project then you will need to add this prefix *before* supplying it as an input parameter using `-ProjectId`. 

| Attribute                  | Value           |
| -------------------------- |---------------- |
| Type    	                 | `System.String` |
| Position                   | Named           |
| Default value              | None            |
| Accept pipeline input      | False           |
| Accept wildcard characters | False           |

#### `-FolderUrn`

The URN of the folder to query.

| Attribute                  | Value           |
| -------------------------- |---------------- |
| Type    	                 | `System.String` |
| Position                   | Named           |
| Default value              | None            |
| Accept pipeline input      | False           |
| Accept wildcard characters | False           |

#### `-Filter`

An optional hash table of filters to apply.

| Attribute                  | Value                          |
| -------------------------- |------------------------------- |
| Type    	                 | `System.Collections.Hashtable` |
| Position                   | Named                          |
| Default value              | None                           |
| Accept pipeline input      | False                          |
| Accept wildcard characters | False                          |

### Outputs

The content of the folder, see the [Forge Data Management API documentation](https://forge.autodesk.com/en/docs/data/v2/reference/http/projects-project_id-folders-folder_id-contents-GET/) for more information.

# <a name="Search-ForgeFolder"></a>Search-ForgeFolder

### Syntax

```PowerShell
Search-ForgeFolder
    [-ProjectId] <string>
    [-FolderUrn] <string>
    [[-Filter] <hashtable>]
```

### Description

perform a **recursive** [search of the Project folder tree](https://forge.autodesk.com/en/docs/data/v2/reference/http/projects-project_id-folders-folder_id-search-GET/) starting from a specific project Folder

### Examples

```PowerShell
Search-ForgeFolder `
    -ProjectId 'b.f83eef12-deef-4781-9feb-af85644e3c46' `
    -FolderUrn 'urn:adsk.wipprod:fs.folder:co.YqcE36AxRFKKie-mclpFbQ' `
   ;
```

```PowerShell
Search-ForgeFolder `
    -ProjectId 'b.f83eef12-deef-4781-9feb-af85644e3c46' `
    -FolderUrn 'urn:adsk.wipprod:fs.folder:co.YqcE36AxRFKKie-mclpFbQ' `
    -Filter @{ 
        'attributes.name' = 'API Testing'
        'extension.type' = 'folders:autodesk.bim360:Folder'
    } `
   ;
```

### Parameters

#### `-ProjectId`

The ID of the Project to query. BIM 360/ACC Projects are identified by a `guid` which is prefixed with `b.`. If you have the guid ID of an existing Project then you will need to add this prefix *before* supplying it as an input parameter using `-ProjectId`. 

| Attribute                  | Value           |
| -------------------------- |---------------- |
| Type    	                 | `System.String` |
| Position                   | Named           |
| Default value              | None            |
| Accept pipeline input      | False           |
| Accept wildcard characters | False           |

#### `-FolderUrn`

The URN of the folder to query.

| Attribute                  | Value           |
| -------------------------- |---------------- |
| Type    	                 | `System.String` |
| Position                   | Named           |
| Default value              | None            |
| Accept pipeline input      | False           |
| Accept wildcard characters | False           |

#### `-Filter`

An optional hash table of filters to apply.

| Attribute                  | Value                          |
| -------------------------- |------------------------------- |
| Type    	                 | `System.Collections.Hashtable` |
| Position                   | Named                          |
| Default value              | None                           |
| Accept pipeline input      | False                          |
| Accept wildcard characters | False                          |

### Outputs

The content of the folder search, see the [Forge Data Management API documentation](https://forge.autodesk.com/en/docs/data/v2/reference/http/projects-project_id-folders-folder_id-search-GET/) for more information.

# <a name="Get-ForgeFolderByPath"></a>Get-ForgeFolderByPath

### Syntax

```PowerShell
Get-ForgeFolderByPath `
    [-HubId] <System.String>
    [-ProjectId] <System.String>
    [-Path] <System.String>;
```

### Description

Get the Folder for the specified path.

### Examples

```PowerShell
Get-ForgeFolderByPath `
    -HubId 'b.f252a243-96e5-41f5-b34f-f5068a780e39' `
    -ProjectId 'b.f83eef12-deef-4781-9feb-af85644e3c46' `
    -Path '//Project Files/API Testing/Index Service Audubon' `
   ;
```

### Parameters

#### `-HubId`

The ID of the Hub to query. BIM 360/ACC Hubs are identified by a `guid` which is prefixed with `b.`. If you have the guid ID of an existing Hub then you will need to add this prefix *before* supplying it as an input parameter using `-HubId`. 

| Attribute                  | Value           |
| -------------------------- |---------------- |
| Type    	                 | `System.String` |
| Position                   | Named           |
| Default value              | None            |
| Accept pipeline input      | False           |
| Accept wildcard characters | False           |

#### `-ProjectId`

The ID of the Project to query. BIM 360/ACC Projects are identified by a `guid` which is prefixed with `b.`. If you have the guid ID of an existing Project then you will need to add this prefix *before* supplying it as an input parameter using `-ProjectId`. 

| Attribute                  | Value           |
| -------------------------- |---------------- |
| Type    	                 | `System.String` |
| Position                   | Named           |
| Default value              | None            |
| Accept pipeline input      | False           |
| Accept wildcard characters | False           |

#### `-Path`

The path string describing the fully qualified path to the folder. The start of the path is denoted by two forward slashes `//`, additional forward slashes are expected to denote sub folders. Given the following folder tree

![alt text](../doc/audubon-in-api-test-folder.png "Autodesk (c)")

The following folder paths are possible

```
'//Plans'
'//Project Files'
'//Project Files/API Testing'
'//Project Files/API Testing/Index Service Audubon'
```

| Attribute                  | Value           |
| -------------------------- |---------------- |
| Type    	                 | `System.String` |
| Position                   | Named           |
| Default value              | None            |
| Accept pipeline input      | False           |
| Accept wildcard characters | False           |

### Outputs

A JSON API response body converted to a `[PSCustomObject]` representing the Folder.

# <a name="Get-ForgeItemByPath"></a>Get-ForgeItemByPath

### Syntax

```PowerShell
Get-ForgeItemByPath `
    [-HubId] <System.String>
    [-ProjectId] <System.String>
    [-Path] <System.String>;
```

### Description

Get the Forge Item (lineage) at the path specified.

### Examples

```PowerShell
Get-ForgeItemByPath `
    -HubId 'b.f252a243-96e5-41f5-b34f-f5068a780e39' `
    -ProjectId 'b.f83eef12-deef-4781-9feb-af85644e3c46' `
    -Path '//Project Files/API Testing/Index Service Audubon/Audubon_Structure.rvt' `
   ;
```

### Parameters

#### `-HubId`

The ID of the Hub to query. BIM 360/ACC Hubs are identified by a `guid` which is prefixed with `b.`. If you have the guid ID of an existing Hub then you will need to add this prefix *before* supplying it as an input parameter using `-HubId`. 

| Attribute                  | Value           |
| -------------------------- |---------------- |
| Type    	                 | `System.String` |
| Position                   | Named           |
| Default value              | None            |
| Accept pipeline input      | False           |
| Accept wildcard characters | False           |

#### `-ProjectId`

The ID of the Project to query. BIM 360/ACC Projects are identified by a `guid` which is prefixed with `b.`. If you have the guid ID of an existing Project then you will need to add this prefix *before* supplying it as an input parameter using `-ProjectId`. 

| Attribute                  | Value           |
| -------------------------- |---------------- |
| Type    	                 | `System.String` |
| Position                   | Named           |
| Default value              | None            |
| Accept pipeline input      | False           |
| Accept wildcard characters | False           |

#### `-Path`

The path string describing the fully qualified path to the Item. The start of the path is denoted by two forward slashes `//`, additional forward slashes are expected to denote sub folders, the final part of the path is assumed to be the Item `displayName`.

| Attribute                  | Value           |
| -------------------------- |---------------- |
| Type    	                 | `System.String` |
| Position                   | Named           |
| Default value              | None            |
| Accept pipeline input      | False           |
| Accept wildcard characters | False           |

### Outputs

A JSON API response body converted to a `[PSCustomObject]` representing the Item.
