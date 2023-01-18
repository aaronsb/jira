#
# The Jira Cloud platform REST API
# Jira Cloud platform REST API documentation
# Version: 1001.0.0-SNAPSHOT
# Contact: ecosystem@atlassian.com
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

Delete issue type property

.DESCRIPTION

No description available.

.PARAMETER IssueTypeId
The ID of the issue type.

.PARAMETER PropertyKey
The key of the property. Use [Get issue type property keys](#api-rest-api-3-issuetype-issueTypeId-properties-get) to get a list of all issue type property keys.

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

None
#>
function Invoke-DeleteIssueTypeProperty {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${IssueTypeId},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${PropertyKey},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Invoke-DeleteIssueTypeProperty' | Write-Debug
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
        $LocalVarUri = '/rest/api/3/issuetype/{issueTypeId}/properties/{propertyKey}'
        if (!$IssueTypeId) {
            throw "Error! The required parameter `IssueTypeId` missing when calling deleteIssueTypeProperty."
        }
        $LocalVarUri = $LocalVarUri.replace('{issueTypeId}', [System.Web.HTTPUtility]::UrlEncode($IssueTypeId))
        if (!$PropertyKey) {
            throw "Error! The required parameter `PropertyKey` missing when calling deleteIssueTypeProperty."
        }
        $LocalVarUri = $LocalVarUri.replace('{propertyKey}', [System.Web.HTTPUtility]::UrlEncode($PropertyKey))


        if ($Configuration["Username"] -and $Configuration["Password"]) {
            $LocalVarBytes = [System.Text.Encoding]::UTF8.GetBytes($Configuration["Username"] + ":" + $Configuration["Password"])
            $LocalVarBase64Text =[Convert]::ToBase64String($LocalVarBytes)
            $LocalVarHeaderParameters['Authorization'] = "Basic " + $LocalVarBase64Text
            Write-Verbose ("Using HTTP basic authentication in {0}" -f $MyInvocation.MyCommand)
        }

        $LocalVarResult = Invoke-ApiClient -Method 'DELETE' `
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

Get issue type property

.DESCRIPTION

No description available.

.PARAMETER IssueTypeId
The ID of the issue type.

.PARAMETER PropertyKey
The key of the property. Use [Get issue type property keys](#api-rest-api-3-issuetype-issueTypeId-properties-get) to get a list of all issue type property keys.

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

EntityProperty
#>
function Get-IssueTypeProperty {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${IssueTypeId},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${PropertyKey},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Get-IssueTypeProperty' | Write-Debug
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

        $LocalVarUri = '/rest/api/3/issuetype/{issueTypeId}/properties/{propertyKey}'
        if (!$IssueTypeId) {
            throw "Error! The required parameter `IssueTypeId` missing when calling getIssueTypeProperty."
        }
        $LocalVarUri = $LocalVarUri.replace('{issueTypeId}', [System.Web.HTTPUtility]::UrlEncode($IssueTypeId))
        if (!$PropertyKey) {
            throw "Error! The required parameter `PropertyKey` missing when calling getIssueTypeProperty."
        }
        $LocalVarUri = $LocalVarUri.replace('{propertyKey}', [System.Web.HTTPUtility]::UrlEncode($PropertyKey))


        if ($Configuration["Username"] -and $Configuration["Password"]) {
            $LocalVarBytes = [System.Text.Encoding]::UTF8.GetBytes($Configuration["Username"] + ":" + $Configuration["Password"])
            $LocalVarBase64Text =[Convert]::ToBase64String($LocalVarBytes)
            $LocalVarHeaderParameters['Authorization'] = "Basic " + $LocalVarBase64Text
            Write-Verbose ("Using HTTP basic authentication in {0}" -f $MyInvocation.MyCommand)
        }

        $LocalVarResult = Invoke-ApiClient -Method 'GET' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "EntityProperty" `
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

Get issue type property keys

.DESCRIPTION

No description available.

.PARAMETER IssueTypeId
The ID of the issue type.

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

PropertyKeys
#>
function Get-IssueTypePropertyKeys {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${IssueTypeId},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Get-IssueTypePropertyKeys' | Write-Debug
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

        $LocalVarUri = '/rest/api/3/issuetype/{issueTypeId}/properties'
        if (!$IssueTypeId) {
            throw "Error! The required parameter `IssueTypeId` missing when calling getIssueTypePropertyKeys."
        }
        $LocalVarUri = $LocalVarUri.replace('{issueTypeId}', [System.Web.HTTPUtility]::UrlEncode($IssueTypeId))


        if ($Configuration["Username"] -and $Configuration["Password"]) {
            $LocalVarBytes = [System.Text.Encoding]::UTF8.GetBytes($Configuration["Username"] + ":" + $Configuration["Password"])
            $LocalVarBase64Text =[Convert]::ToBase64String($LocalVarBytes)
            $LocalVarHeaderParameters['Authorization'] = "Basic " + $LocalVarBase64Text
            Write-Verbose ("Using HTTP basic authentication in {0}" -f $MyInvocation.MyCommand)
        }

        $LocalVarResult = Invoke-ApiClient -Method 'GET' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "PropertyKeys" `
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

Set issue type property

.DESCRIPTION

No description available.

.PARAMETER IssueTypeId
The ID of the issue type.

.PARAMETER PropertyKey
The key of the issue type property. The maximum length is 255 characters.

.PARAMETER Body
No description available.

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

AnyType
#>
function Set-IssueTypeProperty {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${IssueTypeId},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${PropertyKey},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [System.Nullable[AnyType]]
        ${Body},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Set-IssueTypeProperty' | Write-Debug
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

        $LocalVarUri = '/rest/api/3/issuetype/{issueTypeId}/properties/{propertyKey}'
        if (!$IssueTypeId) {
            throw "Error! The required parameter `IssueTypeId` missing when calling setIssueTypeProperty."
        }
        $LocalVarUri = $LocalVarUri.replace('{issueTypeId}', [System.Web.HTTPUtility]::UrlEncode($IssueTypeId))
        if (!$PropertyKey) {
            throw "Error! The required parameter `PropertyKey` missing when calling setIssueTypeProperty."
        }
        $LocalVarUri = $LocalVarUri.replace('{propertyKey}', [System.Web.HTTPUtility]::UrlEncode($PropertyKey))

        $LocalVarBodyParameter = $Body | ConvertTo-Json -Depth 100


        if ($Configuration["Username"] -and $Configuration["Password"]) {
            $LocalVarBytes = [System.Text.Encoding]::UTF8.GetBytes($Configuration["Username"] + ":" + $Configuration["Password"])
            $LocalVarBase64Text =[Convert]::ToBase64String($LocalVarBytes)
            $LocalVarHeaderParameters['Authorization'] = "Basic " + $LocalVarBase64Text
            Write-Verbose ("Using HTTP basic authentication in {0}" -f $MyInvocation.MyCommand)
        }

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
                                -IsBodyNullable $true

        if ($WithHttpInfo.IsPresent) {
            return $LocalVarResult
        } else {
            return $LocalVarResult["Response"]
        }
    }
}

