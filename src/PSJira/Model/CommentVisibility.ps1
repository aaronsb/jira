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

The group or role to which this comment is visible. Optional on create and update.

.PARAMETER Type
Whether visibility of this item is restricted to a group or role.
.PARAMETER Value
The name of the group or role that visibility of this item is restricted to. Please note that the name of a group is mutable, to reliably identify a group use `identifier`.
.PARAMETER Identifier
The ID of the group or the name of the role that visibility of this item is restricted to.
.OUTPUTS

CommentVisibility<PSCustomObject>
#>

function Initialize-CommentVisibility {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("group", "role")]
        [String]
        ${Type},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Value},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Identifier}
    )

    Process {
        'Creating PSCustomObject: PSJira => CommentVisibility' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "type" = ${Type}
            "value" = ${Value}
            "identifier" = ${Identifier}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to CommentVisibility<PSCustomObject>

.DESCRIPTION

Convert from JSON to CommentVisibility<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

CommentVisibility<PSCustomObject>
#>
function ConvertFrom-JsonToCommentVisibility {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSJira => CommentVisibility' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in CommentVisibility
        $AllProperties = ("type", "value", "identifier")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "value"))) { #optional property not found
            $Value = $null
        } else {
            $Value = $JsonParameters.PSobject.Properties["value"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "identifier"))) { #optional property not found
            $Identifier = $null
        } else {
            $Identifier = $JsonParameters.PSobject.Properties["identifier"].value
        }

        $PSO = [PSCustomObject]@{
            "type" = ${Type}
            "value" = ${Value}
            "identifier" = ${Identifier}
        }

        return $PSO
    }

}

