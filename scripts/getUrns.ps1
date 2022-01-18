#############################################################
# This script gets URNs of some model of specific folder using Data Management API of Forge.
# It only extracts first page of the folder. The response data will be output to
# .\out\folder-contents.json file
#############################################################
param 
( 
    # The project containing the files to be indexed
    [Parameter(Mandatory=$true, ValueFromPipeline=$false)]
    [string] $ProjectId,
    # The folder containing the files to be indexed
    [Parameter(Mandatory=$true, ValueFromPipeline=$false)]
    [string] $FolderUrn,
     # Forge auth token.
    [Parameter(Mandatory=$true, ValueFromPipeline=$false)]
    [string] $ForgeToken
)

#############################################################
# Forge CLI module import
#############################################################
$modulePath = Join-Path $PSScriptRoot '..\src\ForgeCLI.psd1' -Resolve;
Import-Module $modulePath;

#############################################################
# Output variables
#############################################################

$outDir = "$PSScriptRoot\out";

#############################################################
# Main
#############################################################

try {  
    # create the token
    Set-ForgeToken -Token $ForgeToken; 

    #Data Management API requires project id with 'b.'
   
    $response = Get-ForgeFolderContents -ProjectId $ProjectId -FolderUrn $FolderUrn;
    
    # create the output dir if it does not exist
    if (-not(Test-Path $outDir))
    {
        New-Item -Path $outDir -ItemType Directory | Out-Null;
    }    
    
    if ($null -ne $response){
        $response | ConvertTo-Json -depth 100 | Out-File $outDir'\folder-contents.json'
    }else{
        $_;
    } 
 
}
catch {
    $_;
}
