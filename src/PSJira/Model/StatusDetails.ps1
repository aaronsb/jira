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

A status.

.PARAMETER Self
The URL of the status.
.PARAMETER Description
The description of the status.
.PARAMETER IconUrl
The URL of the icon used to represent the status.
.PARAMETER Name
The name of the status.
.PARAMETER Id
The ID of the status.
.PARAMETER StatusCategory
No description available.
.OUTPUTS

StatusDetails<PSCustomObject>
#>

function Initialize-StatusDetails {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Self},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Description},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${IconUrl},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${StatusCategory}
    )

    Process {
        'Creating PSCustomObject: PSJira => StatusDetails' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "self" = ${Self}
            "description" = ${Description}
            "iconUrl" = ${IconUrl}
            "name" = ${Name}
            "id" = ${Id}
            "statusCategory" = ${StatusCategory}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to StatusDetails<PSCustomObject>

.DESCRIPTION

Convert from JSON to StatusDetails<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

StatusDetails<PSCustomObject>
#>
function ConvertFrom-JsonToStatusDetails {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSJira => StatusDetails' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json
        $StatusDetailsAdditionalProperties = @{}

        # check if Json contains properties not defined in StatusDetails
        $AllProperties = ("self", "description", "iconUrl", "name", "id", "statusCategory")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            # store undefined properties in additionalProperties
            if (!($AllProperties.Contains($name))) {
                $StatusDetailsAdditionalProperties[$name] = $JsonParameters.PSobject.Properties[$name].value
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "self"))) { #optional property not found
            $Self = $null
        } else {
            $Self = $JsonParameters.PSobject.Properties["self"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "description"))) { #optional property not found
            $Description = $null
        } else {
            $Description = $JsonParameters.PSobject.Properties["description"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "iconUrl"))) { #optional property not found
            $IconUrl = $null
        } else {
            $IconUrl = $JsonParameters.PSobject.Properties["iconUrl"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "name"))) { #optional property not found
            $Name = $null
        } else {
            $Name = $JsonParameters.PSobject.Properties["name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "id"))) { #optional property not found
            $Id = $null
        } else {
            $Id = $JsonParameters.PSobject.Properties["id"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "statusCategory"))) { #optional property not found
            $StatusCategory = $null
        } else {
            $StatusCategory = $JsonParameters.PSobject.Properties["statusCategory"].value
        }

        $PSO = [PSCustomObject]@{
            "self" = ${Self}
            "description" = ${Description}
            "iconUrl" = ${IconUrl}
            "name" = ${Name}
            "id" = ${Id}
            "statusCategory" = ${StatusCategory}
            "AdditionalProperties" = $StatusDetailsAdditionalProperties
        }

        return $PSO
    }

}

