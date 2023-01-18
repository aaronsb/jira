# PSJira.PSJira/Api.ProjectComponentsApi

All URIs are relative to *https://your-domain.atlassian.net*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-Component**](ProjectComponentsApi.md#New-Component) | **POST** /rest/api/3/component | Create component
[**Invoke-DeleteComponent**](ProjectComponentsApi.md#Invoke-DeleteComponent) | **DELETE** /rest/api/3/component/{id} | Delete component
[**Get-Component**](ProjectComponentsApi.md#Get-Component) | **GET** /rest/api/3/component/{id} | Get component
[**Get-ComponentRelatedIssues**](ProjectComponentsApi.md#Get-ComponentRelatedIssues) | **GET** /rest/api/3/component/{id}/relatedIssueCounts | Get component issues count
[**Get-ProjectComponents**](ProjectComponentsApi.md#Get-ProjectComponents) | **GET** /rest/api/3/project/{projectIdOrKey}/components | Get project components
[**Get-ProjectComponentsPaginated**](ProjectComponentsApi.md#Get-ProjectComponentsPaginated) | **GET** /rest/api/3/project/{projectIdOrKey}/component | Get project components paginated
[**Update-Component**](ProjectComponentsApi.md#Update-Component) | **PUT** /rest/api/3/component/{id} | Update component


<a name="New-Component"></a>
# **New-Component**
> ProjectComponent New-Component<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProjectComponent] <PSCustomObject><br>

Create component

Creates a component. Use components to provide containers for issues within a project.  This operation can be accessed anonymously.  **[Permissions](#permissions) required:** *Administer projects* [project permission](https://confluence.atlassian.com/x/yodKLg) for the project in which the component is created or *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$UserAvatarUrls = Initialize-UserAvatarUrls -Var16x16 "MyVar16x16" -Var24x24 "MyVar24x24" -Var32x32 "MyVar32x32" -Var48x48 "MyVar48x48"

$GroupName = Initialize-GroupName -Name "MyName" -GroupId "MyGroupId" -Self "MySelf"
$UserGroups = Initialize-UserGroups -Size 0 -Items $GroupName -PagingCallback  -Callback  -MaxResults 0

$ApplicationRole = Initialize-ApplicationRole -Key "MyKey" -Groups "MyGroups" -GroupDetails $GroupName -Name "MyName" -DefaultGroups "MyDefaultGroups" -DefaultGroupsDetails $GroupName -SelectedByDefault $false -Defined $false -NumberOfSeats 0 -RemainingSeats 0 -UserCount 0 -UserCountDescription "MyUserCountDescription" -HasUnlimitedSeats $false -Platform $false

$UserApplicationRoles = Initialize-UserApplicationRoles -Size 0 -Items $ApplicationRole -PagingCallback  -Callback  -MaxResults 0

$ProjectComponentLead = Initialize-ProjectComponentLead -Self "MySelf" -Key "MyKey" -AccountId "MyAccountId" -AccountType "atlassian" -Name "MyName" -EmailAddress "MyEmailAddress" -AvatarUrls $UserAvatarUrls -DisplayName "MyDisplayName" -Active $false -TimeZone "MyTimeZone" -Locale "MyLocale" -Groups $UserGroups -ApplicationRoles $UserApplicationRoles -Expand "MyExpand"

$ProjectComponentAssignee = Initialize-ProjectComponentAssignee -Self "MySelf" -Key "MyKey" -AccountId "MyAccountId" -AccountType "atlassian" -Name "MyName" -EmailAddress "MyEmailAddress" -AvatarUrls $UserAvatarUrls -DisplayName "MyDisplayName" -Active $false -TimeZone "MyTimeZone" -Locale "MyLocale" -Groups $UserGroups -ApplicationRoles $UserApplicationRoles -Expand "MyExpand"

$ProjectComponentRealAssignee = Initialize-ProjectComponentRealAssignee -Self "MySelf" -Key "MyKey" -AccountId "MyAccountId" -AccountType "atlassian" -Name "MyName" -EmailAddress "MyEmailAddress" -AvatarUrls $UserAvatarUrls -DisplayName "MyDisplayName" -Active $false -TimeZone "MyTimeZone" -Locale "MyLocale" -Groups $UserGroups -ApplicationRoles $UserApplicationRoles -Expand "MyExpand"

$ProjectComponent = Initialize-ProjectComponent -Self "MySelf" -Id "MyId" -Name "MyName" -Description "MyDescription" -Lead $ProjectComponentLead -LeadUserName "MyLeadUserName" -LeadAccountId "MyLeadAccountId" -AssigneeType "PROJECT_DEFAULT" -Assignee $ProjectComponentAssignee -RealAssigneeType "PROJECT_DEFAULT" -RealAssignee $ProjectComponentRealAssignee -IsAssigneeTypeValid $false -Project "MyProject" -ProjectId 0 # ProjectComponent | 

# Create component
try {
    $Result = New-Component -ProjectComponent $ProjectComponent
} catch {
    Write-Host ("Exception occurred when calling New-Component: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ProjectComponent** | [**ProjectComponent**](ProjectComponent.md)|  | 

### Return type

[**ProjectComponent**](ProjectComponent.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-DeleteComponent"></a>
# **Invoke-DeleteComponent**
> void Invoke-DeleteComponent<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-MoveIssuesTo] <String><br>

Delete component

Deletes a component.  This operation can be accessed anonymously.  **[Permissions](#permissions) required:** *Administer projects* [project permission](https://confluence.atlassian.com/x/yodKLg) for the project containing the component or *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$Id = "MyId" # String | The ID of the component.
$MoveIssuesTo = "MyMoveIssuesTo" # String | The ID of the component to replace the deleted component. If this value is null no replacement is made. (optional)

# Delete component
try {
    $Result = Invoke-DeleteComponent -Id $Id -MoveIssuesTo $MoveIssuesTo
} catch {
    Write-Host ("Exception occurred when calling Invoke-DeleteComponent: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The ID of the component. | 
 **MoveIssuesTo** | **String**| The ID of the component to replace the deleted component. If this value is null no replacement is made. | [optional] 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-Component"></a>
# **Get-Component**
> ProjectComponent Get-Component<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Get component

Returns a component.  This operation can be accessed anonymously.  **[Permissions](#permissions) required:** *Browse projects* [project permission](https://confluence.atlassian.com/x/yodKLg) for project containing the component.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$Id = "MyId" # String | The ID of the component.

# Get component
try {
    $Result = Get-Component -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-Component: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The ID of the component. | 

### Return type

[**ProjectComponent**](ProjectComponent.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-ComponentRelatedIssues"></a>
# **Get-ComponentRelatedIssues**
> ComponentIssuesCount Get-ComponentRelatedIssues<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Get component issues count

Returns the counts of issues assigned to the component.  This operation can be accessed anonymously.  **[Permissions](#permissions) required:** None.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$Id = "MyId" # String | The ID of the component.

# Get component issues count
try {
    $Result = Get-ComponentRelatedIssues -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-ComponentRelatedIssues: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The ID of the component. | 

### Return type

[**ComponentIssuesCount**](ComponentIssuesCount.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-ProjectComponents"></a>
# **Get-ProjectComponents**
> ProjectComponent[] Get-ProjectComponents<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProjectIdOrKey] <String><br>

Get project components

Returns all components in a project. See the [Get project components paginated](#api-rest-api-3-project-projectIdOrKey-component-get) resource if you want to get a full list of components with pagination.  This operation can be accessed anonymously.  **[Permissions](#permissions) required:** *Browse Projects* [project permission](https://confluence.atlassian.com/x/yodKLg) for the project.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$ProjectIdOrKey = "MyProjectIdOrKey" # String | The project ID or project key (case sensitive).

# Get project components
try {
    $Result = Get-ProjectComponents -ProjectIdOrKey $ProjectIdOrKey
} catch {
    Write-Host ("Exception occurred when calling Get-ProjectComponents: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ProjectIdOrKey** | **String**| The project ID or project key (case sensitive). | 

### Return type

[**ProjectComponent[]**](ProjectComponent.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-ProjectComponentsPaginated"></a>
# **Get-ProjectComponentsPaginated**
> PageBeanComponentWithIssueCount Get-ProjectComponentsPaginated<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProjectIdOrKey] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartAt] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-MaxResults] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-OrderBy] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Query] <String><br>

Get project components paginated

Returns a [paginated](#pagination) list of all components in a project. See the [Get project components](#api-rest-api-3-project-projectIdOrKey-components-get) resource if you want to get a full list of versions without pagination.  This operation can be accessed anonymously.  **[Permissions](#permissions) required:** *Browse Projects* [project permission](https://confluence.atlassian.com/x/yodKLg) for the project.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$ProjectIdOrKey = "MyProjectIdOrKey" # String | The project ID or project key (case sensitive).
$StartAt = 789 # Int64 | The index of the first item to return in a page of results (page offset). (optional) (default to 0)
$MaxResults = 56 # Int32 | The maximum number of items to return per page. (optional) (default to 50)
$OrderBy = "description" # String | [Order](#ordering) the results by a field:   *  `description` Sorts by the component description.  *  `issueCount` Sorts by the count of issues associated with the component.  *  `lead` Sorts by the user key of the component's project lead.  *  `name` Sorts by component name. (optional)
$Query = "MyQuery" # String | Filter the results using a literal string. Components with a matching `name` or `description` are returned (case insensitive). (optional)

# Get project components paginated
try {
    $Result = Get-ProjectComponentsPaginated -ProjectIdOrKey $ProjectIdOrKey -StartAt $StartAt -MaxResults $MaxResults -OrderBy $OrderBy -Query $Query
} catch {
    Write-Host ("Exception occurred when calling Get-ProjectComponentsPaginated: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ProjectIdOrKey** | **String**| The project ID or project key (case sensitive). | 
 **StartAt** | **Int64**| The index of the first item to return in a page of results (page offset). | [optional] [default to 0]
 **MaxResults** | **Int32**| The maximum number of items to return per page. | [optional] [default to 50]
 **OrderBy** | **String**| [Order](#ordering) the results by a field:   *  &#x60;description&#x60; Sorts by the component description.  *  &#x60;issueCount&#x60; Sorts by the count of issues associated with the component.  *  &#x60;lead&#x60; Sorts by the user key of the component&#39;s project lead.  *  &#x60;name&#x60; Sorts by component name. | [optional] 
 **Query** | **String**| Filter the results using a literal string. Components with a matching &#x60;name&#x60; or &#x60;description&#x60; are returned (case insensitive). | [optional] 

### Return type

[**PageBeanComponentWithIssueCount**](PageBeanComponentWithIssueCount.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Update-Component"></a>
# **Update-Component**
> ProjectComponent Update-Component<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProjectComponent] <PSCustomObject><br>

Update component

Updates a component. Any fields included in the request are overwritten. If `leadAccountId` is an empty string ("""") the component lead is removed.  This operation can be accessed anonymously.  **[Permissions](#permissions) required:** *Administer projects* [project permission](https://confluence.atlassian.com/x/yodKLg) for the project containing the component or *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$Id = "MyId" # String | The ID of the component.
$UserAvatarUrls = Initialize-UserAvatarUrls -Var16x16 "MyVar16x16" -Var24x24 "MyVar24x24" -Var32x32 "MyVar32x32" -Var48x48 "MyVar48x48"

$GroupName = Initialize-GroupName -Name "MyName" -GroupId "MyGroupId" -Self "MySelf"
$UserGroups = Initialize-UserGroups -Size 0 -Items $GroupName -PagingCallback  -Callback  -MaxResults 0

$ApplicationRole = Initialize-ApplicationRole -Key "MyKey" -Groups "MyGroups" -GroupDetails $GroupName -Name "MyName" -DefaultGroups "MyDefaultGroups" -DefaultGroupsDetails $GroupName -SelectedByDefault $false -Defined $false -NumberOfSeats 0 -RemainingSeats 0 -UserCount 0 -UserCountDescription "MyUserCountDescription" -HasUnlimitedSeats $false -Platform $false

$UserApplicationRoles = Initialize-UserApplicationRoles -Size 0 -Items $ApplicationRole -PagingCallback  -Callback  -MaxResults 0

$ProjectComponentLead = Initialize-ProjectComponentLead -Self "MySelf" -Key "MyKey" -AccountId "MyAccountId" -AccountType "atlassian" -Name "MyName" -EmailAddress "MyEmailAddress" -AvatarUrls $UserAvatarUrls -DisplayName "MyDisplayName" -Active $false -TimeZone "MyTimeZone" -Locale "MyLocale" -Groups $UserGroups -ApplicationRoles $UserApplicationRoles -Expand "MyExpand"

$ProjectComponentAssignee = Initialize-ProjectComponentAssignee -Self "MySelf" -Key "MyKey" -AccountId "MyAccountId" -AccountType "atlassian" -Name "MyName" -EmailAddress "MyEmailAddress" -AvatarUrls $UserAvatarUrls -DisplayName "MyDisplayName" -Active $false -TimeZone "MyTimeZone" -Locale "MyLocale" -Groups $UserGroups -ApplicationRoles $UserApplicationRoles -Expand "MyExpand"

$ProjectComponentRealAssignee = Initialize-ProjectComponentRealAssignee -Self "MySelf" -Key "MyKey" -AccountId "MyAccountId" -AccountType "atlassian" -Name "MyName" -EmailAddress "MyEmailAddress" -AvatarUrls $UserAvatarUrls -DisplayName "MyDisplayName" -Active $false -TimeZone "MyTimeZone" -Locale "MyLocale" -Groups $UserGroups -ApplicationRoles $UserApplicationRoles -Expand "MyExpand"

$ProjectComponent = Initialize-ProjectComponent -Self "MySelf" -Id "MyId" -Name "MyName" -Description "MyDescription" -Lead $ProjectComponentLead -LeadUserName "MyLeadUserName" -LeadAccountId "MyLeadAccountId" -AssigneeType "PROJECT_DEFAULT" -Assignee $ProjectComponentAssignee -RealAssigneeType "PROJECT_DEFAULT" -RealAssignee $ProjectComponentRealAssignee -IsAssigneeTypeValid $false -Project "MyProject" -ProjectId 0 # ProjectComponent | 

# Update component
try {
    $Result = Update-Component -Id $Id -ProjectComponent $ProjectComponent
} catch {
    Write-Host ("Exception occurred when calling Update-Component: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The ID of the component. | 
 **ProjectComponent** | [**ProjectComponent**](ProjectComponent.md)|  | 

### Return type

[**ProjectComponent**](ProjectComponent.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

