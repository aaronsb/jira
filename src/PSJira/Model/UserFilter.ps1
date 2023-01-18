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

Filter for a User Picker (single) custom field.

.PARAMETER Enabled
Whether the filter is enabled.
.PARAMETER Groups
User groups autocomplete suggestion users must belong to. If not provided, the default values are used. A maximum of 10 groups can be provided.
.PARAMETER RoleIds
Roles that autocomplete suggestion users must belong to. If not provided, the default values are used. A maximum of 10 roles can be provided.
.OUTPUTS

UserFilter<PSCustomObject>
#>

function Initialize-UserFilter {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [Boolean]
        ${Enabled},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${Groups},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [Int64[]]
        ${RoleIds}
    )

    Process {
        'Creating PSCustomObject: PSJira => UserFilter' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $Enabled) {
            throw "invalid value for 'Enabled', 'Enabled' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "enabled" = ${Enabled}
            "groups" = ${Groups}
            "roleIds" = ${RoleIds}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to UserFilter<PSCustomObject>

.DESCRIPTION

Convert from JSON to UserFilter<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

UserFilter<PSCustomObject>
#>
function ConvertFrom-JsonToUserFilter {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSJira => UserFilter' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in UserFilter
        $AllProperties = ("enabled", "groups", "roleIds")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'enabled' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "enabled"))) {
            throw "Error! JSON cannot be serialized due to the required property 'enabled' missing."
        } else {
            $Enabled = $JsonParameters.PSobject.Properties["enabled"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "groups"))) { #optional property not found
            $Groups = $null
        } else {
            $Groups = $JsonParameters.PSobject.Properties["groups"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "roleIds"))) { #optional property not found
            $RoleIds = $null
        } else {
            $RoleIds = $JsonParameters.PSobject.Properties["roleIds"].value
        }

        $PSO = [PSCustomObject]@{
            "enabled" = ${Enabled}
            "groups" = ${Groups}
            "roleIds" = ${RoleIds}
        }

        return $PSO
    }

}
