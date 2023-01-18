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

Operations allowed on a workflow

.PARAMETER CanEdit
Whether the workflow can be updated.
.PARAMETER CanDelete
Whether the workflow can be deleted.
.OUTPUTS

WorkflowOperations<PSCustomObject>
#>

function Initialize-WorkflowOperations {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [Boolean]
        ${CanEdit},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [Boolean]
        ${CanDelete}
    )

    Process {
        'Creating PSCustomObject: PSJira => WorkflowOperations' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $CanEdit) {
            throw "invalid value for 'CanEdit', 'CanEdit' cannot be null."
        }

        if ($null -eq $CanDelete) {
            throw "invalid value for 'CanDelete', 'CanDelete' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "canEdit" = ${CanEdit}
            "canDelete" = ${CanDelete}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to WorkflowOperations<PSCustomObject>

.DESCRIPTION

Convert from JSON to WorkflowOperations<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

WorkflowOperations<PSCustomObject>
#>
function ConvertFrom-JsonToWorkflowOperations {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSJira => WorkflowOperations' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in WorkflowOperations
        $AllProperties = ("canEdit", "canDelete")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'canEdit' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "canEdit"))) {
            throw "Error! JSON cannot be serialized due to the required property 'canEdit' missing."
        } else {
            $CanEdit = $JsonParameters.PSobject.Properties["canEdit"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "canDelete"))) {
            throw "Error! JSON cannot be serialized due to the required property 'canDelete' missing."
        } else {
            $CanDelete = $JsonParameters.PSobject.Properties["canDelete"].value
        }

        $PSO = [PSCustomObject]@{
            "canEdit" = ${CanEdit}
            "canDelete" = ${CanDelete}
        }

        return $PSO
    }

}

