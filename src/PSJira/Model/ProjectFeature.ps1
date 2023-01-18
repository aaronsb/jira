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

Details of a project feature.

.PARAMETER ProjectId
The ID of the project.
.PARAMETER State
The state of the feature. When updating the state of a feature, only ENABLED and DISABLED are supported. Responses can contain all values
.PARAMETER ToggleLocked
Whether the state of the feature can be updated.
.PARAMETER Feature
The key of the feature.
.PARAMETER Prerequisites
List of keys of the features required to enable the feature.
.PARAMETER LocalisedName
Localized display name for the feature.
.PARAMETER LocalisedDescription
Localized display description for the feature.
.PARAMETER ImageUri
URI for the image representing the feature.
.OUTPUTS

ProjectFeature<PSCustomObject>
#>

function Initialize-ProjectFeature {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${ProjectId},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("ENABLED", "DISABLED", "COMING_SOON")]
        [String]
        ${State},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${ToggleLocked},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Feature},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${Prerequisites},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${LocalisedName},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${LocalisedDescription},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ImageUri}
    )

    Process {
        'Creating PSCustomObject: PSJira => ProjectFeature' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "projectId" = ${ProjectId}
            "state" = ${State}
            "toggleLocked" = ${ToggleLocked}
            "feature" = ${Feature}
            "prerequisites" = ${Prerequisites}
            "localisedName" = ${LocalisedName}
            "localisedDescription" = ${LocalisedDescription}
            "imageUri" = ${ImageUri}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ProjectFeature<PSCustomObject>

.DESCRIPTION

Convert from JSON to ProjectFeature<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ProjectFeature<PSCustomObject>
#>
function ConvertFrom-JsonToProjectFeature {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSJira => ProjectFeature' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in ProjectFeature
        $AllProperties = ("projectId", "state", "toggleLocked", "feature", "prerequisites", "localisedName", "localisedDescription", "imageUri")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "projectId"))) { #optional property not found
            $ProjectId = $null
        } else {
            $ProjectId = $JsonParameters.PSobject.Properties["projectId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "state"))) { #optional property not found
            $State = $null
        } else {
            $State = $JsonParameters.PSobject.Properties["state"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "toggleLocked"))) { #optional property not found
            $ToggleLocked = $null
        } else {
            $ToggleLocked = $JsonParameters.PSobject.Properties["toggleLocked"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "feature"))) { #optional property not found
            $Feature = $null
        } else {
            $Feature = $JsonParameters.PSobject.Properties["feature"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "prerequisites"))) { #optional property not found
            $Prerequisites = $null
        } else {
            $Prerequisites = $JsonParameters.PSobject.Properties["prerequisites"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "localisedName"))) { #optional property not found
            $LocalisedName = $null
        } else {
            $LocalisedName = $JsonParameters.PSobject.Properties["localisedName"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "localisedDescription"))) { #optional property not found
            $LocalisedDescription = $null
        } else {
            $LocalisedDescription = $JsonParameters.PSobject.Properties["localisedDescription"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "imageUri"))) { #optional property not found
            $ImageUri = $null
        } else {
            $ImageUri = $JsonParameters.PSobject.Properties["imageUri"].value
        }

        $PSO = [PSCustomObject]@{
            "projectId" = ${ProjectId}
            "state" = ${State}
            "toggleLocked" = ${ToggleLocked}
            "feature" = ${Feature}
            "prerequisites" = ${Prerequisites}
            "localisedName" = ${LocalisedName}
            "localisedDescription" = ${LocalisedDescription}
            "imageUri" = ${ImageUri}
        }

        return $PSO
    }

}
