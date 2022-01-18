$basicSamples = Get-ChildItem "$PSScriptRoot\basic" -Exclude @('template.md');
$diffSamples = Get-ChildItem "$PSScriptRoot\diff" -Exclude @('template.md');

$examples = @();

# header
$examples += 
'## Query Examples 

# Getting Started 

Before you can build indexes and index queries it is essential to understand the [structure of index tables](./table.md). Read this document before proceeding!

## Indexing and Querying by Example

### Basic Indexing

The following examples illustrate index specification and query JSON bodies which can be used to index and query model property data.
';

foreach ($sample in $basicSamples) 
{
    # strip the ## prefix 
    $title = (Get-Content $sample -First 1).Replace('#', '').Trim();

    $examples +=
"[$title](./basic/$($sample.Name))
";    
}

$examples +=
'### Diff Indexing

The following examples illustrate index specification and query JSON bodies which can be used to create and query diff indexes.
';

foreach ($sample in $diffSamples) 
{
    # strip the ## prefix 
    $title = (Get-Content $sample -First 1).Replace('#', '').Trim();

    $examples +=
"[$title](./diff/$($sample.Name))
";    
}

# footer
$examples += 
"---

### Contributing

If you want to add more examples, please follow the steps below

1. Fork this repo on github
2. Add your sample(s) to the [basic](./basic) or [diff](./diff) sub-folders. You can use the [exampleTemplate.md](./exampleTemplate.md) to quickly format your example. Please base your examples on the sample models provided so that they can be verified by a maintainer.
3. DO NOT edit this README file by hand, use the [readmeBuild.ps1](./readmeBuild.ps1) script located in this folder to re-build `README.md`
4. Create a PR!
[back](../README.md)
";

$examples | Out-File "$PSSCriptRoot\README.md" -Encoding utf8 -Force;