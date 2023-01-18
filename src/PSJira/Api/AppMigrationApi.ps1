#
# The Jira Cloud platform REST API
# Jira Cloud platform REST API documentation
# Version: 1001.0.0-SNAPSHOT
# Contact: ecosystem@atlassian.com
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

Bulk update custom field value

.DESCRIPTION

No description available.

.PARAMETER AtlassianTransferId
The ID of the transfer.

.PARAMETER ConnectCustomFieldValues
No description available.

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

AnyType
#>
function Invoke-AppIssueFieldValueUpdateResourceUpdateIssueFieldsPut {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${AtlassianTransferId},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [PSCustomObject]
        ${ConnectCustomFieldValues},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Invoke-AppIssueFieldValueUpdateResourceUpdateIssueFieldsPut' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $LocalVarAccepts = @()
        $LocalVarContentTypes = @()
        $LocalVarQueryParameters = @{}
        $LocalVarHeaderParameters = @{}
        $LocalVarFormParameters = @{}
        $LocalVarPathParameters = @{}
        $LocalVarCookieParameters = @{}
        $LocalVarBodyParameter = $null

        $Configuration = Get-Configuration
        # HTTP header 'Accept' (if needed)
        $LocalVarAccepts = @('application/json')

        # HTTP header 'Content-Type'
        $LocalVarContentTypes = @('application/json')

        $LocalVarUri = '/rest/atlassian-connect/1/migration/field'

        if (!$AtlassianTransferId) {
            throw "Error! The required parameter `AtlassianTransferId` missing when calling appIssueFieldValueUpdateResource_updateIssueFieldsPut."
        }
        $LocalVarHeaderParameters['Atlassian-Transfer-Id'] = $AtlassianTransferId

        if (!$ConnectCustomFieldValues) {
            throw "Error! The required parameter `ConnectCustomFieldValues` missing when calling appIssueFieldValueUpdateResource_updateIssueFieldsPut."
        }

        $LocalVarBodyParameter = $ConnectCustomFieldValues | ConvertTo-Json -Depth 100

        $LocalVarResult = Invoke-ApiClient -Method 'PUT' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "AnyType" `
                                -IsBodyNullable $false

        if ($WithHttpInfo.IsPresent) {
            return $LocalVarResult
        } else {
            return $LocalVarResult["Response"]
        }
    }
}

<#
.SYNOPSIS

Bulk update entity properties

.DESCRIPTION

No description available.

.PARAMETER AtlassianTransferId
The app migration transfer ID.

.PARAMETER EntityType
The type indicating the object that contains the entity properties.

.PARAMETER EntityPropertyDetails
No description available.

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

None
#>
function Invoke-MigrationResourceUpdateEntityPropertiesValuePut {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${AtlassianTransferId},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [ValidateSet("IssueProperty", "CommentProperty", "DashboardItemProperty", "IssueTypeProperty", "ProjectProperty", "UserProperty", "WorklogProperty", "BoardProperty", "SprintProperty")]
        [String]
        ${EntityType},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [PSCustomObject[]]
        ${EntityPropertyDetails},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Invoke-MigrationResourceUpdateEntityPropertiesValuePut' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $LocalVarAccepts = @()
        $LocalVarContentTypes = @()
        $LocalVarQueryParameters = @{}
        $LocalVarHeaderParameters = @{}
        $LocalVarFormParameters = @{}
        $LocalVarPathParameters = @{}
        $LocalVarCookieParameters = @{}
        $LocalVarBodyParameter = $null

        $Configuration = Get-Configuration
        # HTTP header 'Content-Type'
        $LocalVarContentTypes = @('application/json')

        $LocalVarUri = '/rest/atlassian-connect/1/migration/properties/{entityType}'
        if (!$EntityType) {
            throw "Error! The required parameter `EntityType` missing when calling migrationResource_updateEntityPropertiesValuePut."
        }
        $LocalVarUri = $LocalVarUri.replace('{entityType}', [System.Web.HTTPUtility]::UrlEncode($EntityType))

        if (!$AtlassianTransferId) {
            throw "Error! The required parameter `AtlassianTransferId` missing when calling migrationResource_updateEntityPropertiesValuePut."
        }
        $LocalVarHeaderParameters['Atlassian-Transfer-Id'] = $AtlassianTransferId

        if (!$EntityPropertyDetails) {
            throw "Error! The required parameter `EntityPropertyDetails` missing when calling migrationResource_updateEntityPropertiesValuePut."
        }

        $LocalVarBodyParameter = $EntityPropertyDetails | ConvertTo-Json -Depth 100

        $LocalVarResult = Invoke-ApiClient -Method 'PUT' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "" `
                                -IsBodyNullable $false

        if ($WithHttpInfo.IsPresent) {
            return $LocalVarResult
        } else {
            return $LocalVarResult["Response"]
        }
    }
}

<#
.SYNOPSIS

Get workflow transition rule configurations

.DESCRIPTION

No description available.

.PARAMETER AtlassianTransferId
The app migration transfer ID.

.PARAMETER WorkflowRulesSearch
No description available.

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

WorkflowRulesSearchDetails
#>
function Invoke-MigrationResourceWorkflowRuleSearchPost {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${AtlassianTransferId},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [PSCustomObject]
        ${WorkflowRulesSearch},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Invoke-MigrationResourceWorkflowRuleSearchPost' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $LocalVarAccepts = @()
        $LocalVarContentTypes = @()
        $LocalVarQueryParameters = @{}
        $LocalVarHeaderParameters = @{}
        $LocalVarFormParameters = @{}
        $LocalVarPathParameters = @{}
        $LocalVarCookieParameters = @{}
        $LocalVarBodyParameter = $null

        $Configuration = Get-Configuration
        # HTTP header 'Accept' (if needed)
        $LocalVarAccepts = @('application/json')

        # HTTP header 'Content-Type'
        $LocalVarContentTypes = @('application/json')

        $LocalVarUri = '/rest/atlassian-connect/1/migration/workflow/rule/search'

        if (!$AtlassianTransferId) {
            throw "Error! The required parameter `AtlassianTransferId` missing when calling migrationResource_workflowRuleSearchPost."
        }
        $LocalVarHeaderParameters['Atlassian-Transfer-Id'] = $AtlassianTransferId

        if (!$WorkflowRulesSearch) {
            throw "Error! The required parameter `WorkflowRulesSearch` missing when calling migrationResource_workflowRuleSearchPost."
        }

        $LocalVarBodyParameter = $WorkflowRulesSearch | ConvertTo-Json -Depth 100

        $LocalVarResult = Invoke-ApiClient -Method 'POST' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "WorkflowRulesSearchDetails" `
                                -IsBodyNullable $false

        if ($WithHttpInfo.IsPresent) {
            return $LocalVarResult
        } else {
            return $LocalVarResult["Response"]
        }
    }
}

