![alt text](../img/autodesk-logo.png "Autodesk (c)")

# Cmdlets

[Get-ForgeEnvironment](#Get-ForgeEnvironment)

[Set-ForgeEnvironment](#Set-ForgeEnvironment)

[Set-ForgeToken](#Set-ForgeToken)

[Get-ResourceUrl](#Get-ResourceUrl)

# <a name="Get-ForgeEnvironment"></a>Get-ForgeEnvironment

### Syntax

```PowerShell
Get-ForgeEnvironment
```

### Description

Get the current Forge API environment setting.

### Examples

```PowerShell
PS > Get-ForgeEnvironment;
```

# <a name="Set-ForgeEnvironment"></a>Set-ForgeEnvironment

### Syntax

```PowerShell
Set-ForgeEnvironment
    [-Environment <string>]
```

### Description

Set the current Forge API environment.

### Examples

```PowerShell
PS > Set-ForgeEnvironment -Environment Default;
```

```PowerShell
PS > Set-ForgeEnvironment -Environment StagingUs;
```

### Parameters

#### `-Environment`

The Environment to use, permitted values `ProductionUs`, `StagingUs` and `Default`.

| Attribute                  | Value           |
| -------------------------- |---------------- |
| Type    	                 | `System.String` |
| Position                   | Named           |
| Default value              | None            |
| Accept pipeline input      | False           |
| Accept wildcard characters | False           |

### Outputs

None, use `Get-ForgeEnvironment` to read the current setting.

# <a name="Set-ForgeToken"></a>Set-ForgeToken

### Syntax

```PowerShell
Set-ForgeToken
    [-Token <string>]
```

### Description

Set the OAuth 2.0 authorization token to use.

### Examples

```PowerShell
PS > Set-ForgeToken -Token 'agagetdjcasn8383djwxxxjfgshr...';
```

### Parameters

#### `-Token`

The OAuth 2.0 token string which will be set as the Authorization Bearer HTTP header.

| Attribute                  | Value           |
| -------------------------- |---------------- |
| Type    	                 | `System.String` |
| Position                   | Named           |
| Default value              | None            |
| Accept pipeline input      | False           |
| Accept wildcard characters | False           |

### Outputs

None

# <a name="Get-ResourceUrl"></a>Get-ResourceUrl

### Syntax

```PowerShell
Get-ResourceUrl
    [-Url] <string>,
    [[-Path] <System.IO.FileInfo>] 
```
### Description

Get a web resource URL. Optionally save the resource to a local file path. With the option to convert the response to JSON, controlling the depth of the serialization.

### Examples

Get a web resource.

```PowerShell
Get-ResourceUrl `
    -Url 'https://some-web-api.com/resource_collection/resource';
```

Get a web resource and write the result to a file on the local hard drive.

```PowerShell
Get-ResourceUrl `
    -Url 'https://some-web-api.com/resource_collection/resource' `
    -Path 'c:\users\me\Desktop\output\resource.json'
```

### Parameters

#### `-Url`

The resource web URL to retrieve.

| Attribute                  | Value           |
| -------------------------- |---------------- |
| Type    	                 | `System.String` |
| Position                   | Named           |
| Default value              | None            |
| Accept pipeline input      | False           |
| Accept wildcard characters | False           |

#### `-Path`

The string to convert to a secure string

| Attribute                  | Value                |
| -------------------------- |--------------------- |
| Type    	                 | `System.IO.FileInfo` |
| Position                   | Named                |
| Default value              | None                 |
| Accept pipeline input      | False                |
| Accept wildcard characters | False                |

### Outputs

If a `-Path` is supplied then the output from any response serialization will be written to the file path passed in the input parameter.