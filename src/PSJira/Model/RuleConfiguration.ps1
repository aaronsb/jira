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

A rule configuration.

.PARAMETER Value
Configuration of the rule, as it is stored by the Connect app on the rule configuration page.
.PARAMETER Disabled
EXPERIMENTAL: Whether the rule is disabled.
.PARAMETER Tag
EXPERIMENTAL: A tag used to filter rules in [Get workflow transition rule configurations](https://developer.atlassian.com/cloud/jira/platform/rest/v3/api-group-workflow-transition-rules/#api-rest-api-3-workflow-rule-config-get).
.OUTPUTS

RuleConfiguration<PSCustomObject>
#>

function Initialize-RuleConfiguration {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Value},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Disabled} = $false,
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Tag}
    )

    Process {
        'Creating PSCustomObject: PSJira => RuleConfiguration' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $Value) {
            throw "invalid value for 'Value', 'Value' cannot be null."
        }

        if (!$Tag -and $Tag.length -gt 255) {
            throw "invalid value for 'Tag', the character length must be smaller than or equal to 255."
        }


        $PSO = [PSCustomObject]@{
            "value" = ${Value}
            "disabled" = ${Disabled}
            "tag" = ${Tag}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to RuleConfiguration<PSCustomObject>

.DESCRIPTION

Convert from JSON to RuleConfiguration<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

RuleConfiguration<PSCustomObject>
#>
function ConvertFrom-JsonToRuleConfiguration {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSJira => RuleConfiguration' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in RuleConfiguration
        $AllProperties = ("value", "disabled", "tag")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'value' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "value"))) {
            throw "Error! JSON cannot be serialized due to the required property 'value' missing."
        } else {
            $Value = $JsonParameters.PSobject.Properties["value"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "disabled"))) { #optional property not found
            $Disabled = $null
        } else {
            $Disabled = $JsonParameters.PSobject.Properties["disabled"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "tag"))) { #optional property not found
            $Tag = $null
        } else {
            $Tag = $JsonParameters.PSobject.Properties["tag"].value
        }

        $PSO = [PSCustomObject]@{
            "value" = ${Value}
            "disabled" = ${Disabled}
            "tag" = ${Tag}
        }

        return $PSO
    }

}

