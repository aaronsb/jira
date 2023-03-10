#
# The Jira Cloud platform REST API
# Jira Cloud platform REST API documentation
# Version: 1001.0.0-SNAPSHOT
# Contact: ecosystem@atlassian.com
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

The details of a UI modification.

.PARAMETER Id
The ID of the UI modification.
.PARAMETER Name
The name of the UI modification. The maximum length is 255 characters.
.PARAMETER Description
The description of the UI modification. The maximum length is 255 characters.
.PARAMETER Self
The URL of the UI modification.
.PARAMETER VarData
The data of the UI modification. The maximum size of the data is 50000 characters.
.PARAMETER Contexts
List of contexts of the UI modification. The maximum number of contexts is 1000.
.OUTPUTS

UiModificationDetails<PSCustomObject>
#>

function Initialize-UiModificationDetails {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Description},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Self},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${VarData},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Contexts}
    )

    Process {
        'Creating PSCustomObject: PSJira => UiModificationDetails' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $Id) {
            throw "invalid value for 'Id', 'Id' cannot be null."
        }

        if ($null -eq $Name) {
            throw "invalid value for 'Name', 'Name' cannot be null."
        }

        if ($null -eq $Self) {
            throw "invalid value for 'Self', 'Self' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "name" = ${Name}
            "description" = ${Description}
            "self" = ${Self}
            "data" = ${VarData}
            "contexts" = ${Contexts}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to UiModificationDetails<PSCustomObject>

.DESCRIPTION

Convert from JSON to UiModificationDetails<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

UiModificationDetails<PSCustomObject>
#>
function ConvertFrom-JsonToUiModificationDetails {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSJira => UiModificationDetails' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in UiModificationDetails
        $AllProperties = ("id", "name", "description", "self", "data", "contexts")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'id' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "id"))) {
            throw "Error! JSON cannot be serialized due to the required property 'id' missing."
        } else {
            $Id = $JsonParameters.PSobject.Properties["id"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "name"))) {
            throw "Error! JSON cannot be serialized due to the required property 'name' missing."
        } else {
            $Name = $JsonParameters.PSobject.Properties["name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "self"))) {
            throw "Error! JSON cannot be serialized due to the required property 'self' missing."
        } else {
            $Self = $JsonParameters.PSobject.Properties["self"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "description"))) { #optional property not found
            $Description = $null
        } else {
            $Description = $JsonParameters.PSobject.Properties["description"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "data"))) { #optional property not found
            $VarData = $null
        } else {
            $VarData = $JsonParameters.PSobject.Properties["data"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "contexts"))) { #optional property not found
            $Contexts = $null
        } else {
            $Contexts = $JsonParameters.PSobject.Properties["contexts"].value
        }

        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "name" = ${Name}
            "description" = ${Description}
            "self" = ${Self}
            "data" = ${VarData}
            "contexts" = ${Contexts}
        }

        return $PSO
    }

}

