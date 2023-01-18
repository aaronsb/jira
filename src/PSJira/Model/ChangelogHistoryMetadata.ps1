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

The history metadata associated with the changed.

.PARAMETER Type
The type of the history record.
.PARAMETER Description
The description of the history record.
.PARAMETER DescriptionKey
The description key of the history record.
.PARAMETER ActivityDescription
The activity described in the history record.
.PARAMETER ActivityDescriptionKey
The key of the activity described in the history record.
.PARAMETER EmailDescription
The description of the email address associated the history record.
.PARAMETER EmailDescriptionKey
The description key of the email address associated the history record.
.PARAMETER Actor
No description available.
.PARAMETER Generator
No description available.
.PARAMETER Cause
No description available.
.PARAMETER ExtraData
Additional arbitrary information about the history record.
.OUTPUTS

ChangelogHistoryMetadata<PSCustomObject>
#>

function Initialize-ChangelogHistoryMetadata {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Type},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Description},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${DescriptionKey},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ActivityDescription},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ActivityDescriptionKey},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${EmailDescription},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${EmailDescriptionKey},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Actor},
        [Parameter(Position = 8, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Generator},
        [Parameter(Position = 9, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Cause},
        [Parameter(Position = 10, ValueFromPipelineByPropertyName = $true)]
        [System.Collections.Hashtable]
        ${ExtraData}
    )

    Process {
        'Creating PSCustomObject: PSJira => ChangelogHistoryMetadata' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "type" = ${Type}
            "description" = ${Description}
            "descriptionKey" = ${DescriptionKey}
            "activityDescription" = ${ActivityDescription}
            "activityDescriptionKey" = ${ActivityDescriptionKey}
            "emailDescription" = ${EmailDescription}
            "emailDescriptionKey" = ${EmailDescriptionKey}
            "actor" = ${Actor}
            "generator" = ${Generator}
            "cause" = ${Cause}
            "extraData" = ${ExtraData}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ChangelogHistoryMetadata<PSCustomObject>

.DESCRIPTION

Convert from JSON to ChangelogHistoryMetadata<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ChangelogHistoryMetadata<PSCustomObject>
#>
function ConvertFrom-JsonToChangelogHistoryMetadata {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSJira => ChangelogHistoryMetadata' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in ChangelogHistoryMetadata
        $AllProperties = ("type", "description", "descriptionKey", "activityDescription", "activityDescriptionKey", "emailDescription", "emailDescriptionKey", "actor", "generator", "cause", "extraData")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "type"))) { #optional property not found
            $Type = $null
        } else {
            $Type = $JsonParameters.PSobject.Properties["type"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "description"))) { #optional property not found
            $Description = $null
        } else {
            $Description = $JsonParameters.PSobject.Properties["description"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "descriptionKey"))) { #optional property not found
            $DescriptionKey = $null
        } else {
            $DescriptionKey = $JsonParameters.PSobject.Properties["descriptionKey"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "activityDescription"))) { #optional property not found
            $ActivityDescription = $null
        } else {
            $ActivityDescription = $JsonParameters.PSobject.Properties["activityDescription"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "activityDescriptionKey"))) { #optional property not found
            $ActivityDescriptionKey = $null
        } else {
            $ActivityDescriptionKey = $JsonParameters.PSobject.Properties["activityDescriptionKey"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "emailDescription"))) { #optional property not found
            $EmailDescription = $null
        } else {
            $EmailDescription = $JsonParameters.PSobject.Properties["emailDescription"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "emailDescriptionKey"))) { #optional property not found
            $EmailDescriptionKey = $null
        } else {
            $EmailDescriptionKey = $JsonParameters.PSobject.Properties["emailDescriptionKey"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "actor"))) { #optional property not found
            $Actor = $null
        } else {
            $Actor = $JsonParameters.PSobject.Properties["actor"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "generator"))) { #optional property not found
            $Generator = $null
        } else {
            $Generator = $JsonParameters.PSobject.Properties["generator"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "cause"))) { #optional property not found
            $Cause = $null
        } else {
            $Cause = $JsonParameters.PSobject.Properties["cause"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "extraData"))) { #optional property not found
            $ExtraData = $null
        } else {
            $ExtraData = $JsonParameters.PSobject.Properties["extraData"].value
        }

        $PSO = [PSCustomObject]@{
            "type" = ${Type}
            "description" = ${Description}
            "descriptionKey" = ${DescriptionKey}
            "activityDescription" = ${ActivityDescription}
            "activityDescriptionKey" = ${ActivityDescriptionKey}
            "emailDescription" = ${EmailDescription}
            "emailDescriptionKey" = ${EmailDescriptionKey}
            "actor" = ${Actor}
            "generator" = ${Generator}
            "cause" = ${Cause}
            "extraData" = ${ExtraData}
        }

        return $PSO
    }

}

