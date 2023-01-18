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

Details of an issue transition.

.PARAMETER Id
The ID of the issue transition. Required when specifying a transition to undertake.
.PARAMETER Name
The name of the issue transition.
.PARAMETER To
No description available.
.PARAMETER HasScreen
Whether there is a screen associated with the issue transition.
.PARAMETER IsGlobal
Whether the issue transition is global, that is, the transition is applied to issues regardless of their status.
.PARAMETER IsInitial
Whether this is the initial issue transition for the workflow.
.PARAMETER IsAvailable
Whether the transition is available to be performed.
.PARAMETER IsConditional
Whether the issue has to meet criteria before the issue transition is applied.
.PARAMETER Fields
Details of the fields associated with the issue transition screen. Use this information to populate `fields` and `update` in a transition request.
.PARAMETER Expand
Expand options that include additional transition details in the response.
.PARAMETER Looped
No description available.
.OUTPUTS

IssueTransition<PSCustomObject>
#>

function Initialize-IssueTransition {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${To},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${HasScreen},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${IsGlobal},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${IsInitial},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${IsAvailable},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${IsConditional},
        [Parameter(Position = 8, ValueFromPipelineByPropertyName = $true)]
        [System.Collections.Hashtable]
        ${Fields},
        [Parameter(Position = 9, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Expand},
        [Parameter(Position = 10, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Looped}
    )

    Process {
        'Creating PSCustomObject: PSJira => IssueTransition' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "name" = ${Name}
            "to" = ${To}
            "hasScreen" = ${HasScreen}
            "isGlobal" = ${IsGlobal}
            "isInitial" = ${IsInitial}
            "isAvailable" = ${IsAvailable}
            "isConditional" = ${IsConditional}
            "fields" = ${Fields}
            "expand" = ${Expand}
            "looped" = ${Looped}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to IssueTransition<PSCustomObject>

.DESCRIPTION

Convert from JSON to IssueTransition<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

IssueTransition<PSCustomObject>
#>
function ConvertFrom-JsonToIssueTransition {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSJira => IssueTransition' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json
        $IssueTransitionAdditionalProperties = @{}

        # check if Json contains properties not defined in IssueTransition
        $AllProperties = ("id", "name", "to", "hasScreen", "isGlobal", "isInitial", "isAvailable", "isConditional", "fields", "expand", "looped")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            # store undefined properties in additionalProperties
            if (!($AllProperties.Contains($name))) {
                $IssueTransitionAdditionalProperties[$name] = $JsonParameters.PSobject.Properties[$name].value
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "id"))) { #optional property not found
            $Id = $null
        } else {
            $Id = $JsonParameters.PSobject.Properties["id"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "name"))) { #optional property not found
            $Name = $null
        } else {
            $Name = $JsonParameters.PSobject.Properties["name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "to"))) { #optional property not found
            $To = $null
        } else {
            $To = $JsonParameters.PSobject.Properties["to"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "hasScreen"))) { #optional property not found
            $HasScreen = $null
        } else {
            $HasScreen = $JsonParameters.PSobject.Properties["hasScreen"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "isGlobal"))) { #optional property not found
            $IsGlobal = $null
        } else {
            $IsGlobal = $JsonParameters.PSobject.Properties["isGlobal"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "isInitial"))) { #optional property not found
            $IsInitial = $null
        } else {
            $IsInitial = $JsonParameters.PSobject.Properties["isInitial"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "isAvailable"))) { #optional property not found
            $IsAvailable = $null
        } else {
            $IsAvailable = $JsonParameters.PSobject.Properties["isAvailable"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "isConditional"))) { #optional property not found
            $IsConditional = $null
        } else {
            $IsConditional = $JsonParameters.PSobject.Properties["isConditional"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "fields"))) { #optional property not found
            $Fields = $null
        } else {
            $Fields = $JsonParameters.PSobject.Properties["fields"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "expand"))) { #optional property not found
            $Expand = $null
        } else {
            $Expand = $JsonParameters.PSobject.Properties["expand"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "looped"))) { #optional property not found
            $Looped = $null
        } else {
            $Looped = $JsonParameters.PSobject.Properties["looped"].value
        }

        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "name" = ${Name}
            "to" = ${To}
            "hasScreen" = ${HasScreen}
            "isGlobal" = ${IsGlobal}
            "isInitial" = ${IsInitial}
            "isAvailable" = ${IsAvailable}
            "isConditional" = ${IsConditional}
            "fields" = ${Fields}
            "expand" = ${Expand}
            "looped" = ${Looped}
            "AdditionalProperties" = $IssueTransitionAdditionalProperties
        }

        return $PSO
    }

}

