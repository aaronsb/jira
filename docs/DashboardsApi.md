# PSJira.PSJira/Api.DashboardsApi

All URIs are relative to *https://your-domain.atlassian.net*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Add-Gadget**](DashboardsApi.md#Add-Gadget) | **POST** /rest/api/3/dashboard/{dashboardId}/gadget | Add gadget to dashboard
[**Copy-Dashboard**](DashboardsApi.md#Copy-Dashboard) | **POST** /rest/api/3/dashboard/{id}/copy | Copy dashboard
[**New-Dashboard**](DashboardsApi.md#New-Dashboard) | **POST** /rest/api/3/dashboard | Create dashboard
[**Invoke-DeleteDashboard**](DashboardsApi.md#Invoke-DeleteDashboard) | **DELETE** /rest/api/3/dashboard/{id} | Delete dashboard
[**Invoke-DeleteDashboardItemProperty**](DashboardsApi.md#Invoke-DeleteDashboardItemProperty) | **DELETE** /rest/api/3/dashboard/{dashboardId}/items/{itemId}/properties/{propertyKey} | Delete dashboard item property
[**Get-AllAvailableDashboardGadgets**](DashboardsApi.md#Get-AllAvailableDashboardGadgets) | **GET** /rest/api/3/dashboard/gadgets | Get available gadgets
[**Get-AllDashboards**](DashboardsApi.md#Get-AllDashboards) | **GET** /rest/api/3/dashboard | Get all dashboards
[**Get-AllGadgets**](DashboardsApi.md#Get-AllGadgets) | **GET** /rest/api/3/dashboard/{dashboardId}/gadget | Get gadgets
[**Get-Dashboard**](DashboardsApi.md#Get-Dashboard) | **GET** /rest/api/3/dashboard/{id} | Get dashboard
[**Get-DashboardItemProperty**](DashboardsApi.md#Get-DashboardItemProperty) | **GET** /rest/api/3/dashboard/{dashboardId}/items/{itemId}/properties/{propertyKey} | Get dashboard item property
[**Get-DashboardItemPropertyKeys**](DashboardsApi.md#Get-DashboardItemPropertyKeys) | **GET** /rest/api/3/dashboard/{dashboardId}/items/{itemId}/properties | Get dashboard item property keys
[**Get-DashboardsPaginated**](DashboardsApi.md#Get-DashboardsPaginated) | **GET** /rest/api/3/dashboard/search | Search for dashboards
[**Remove-Gadget**](DashboardsApi.md#Remove-Gadget) | **DELETE** /rest/api/3/dashboard/{dashboardId}/gadget/{gadgetId} | Remove gadget from dashboard
[**Set-DashboardItemProperty**](DashboardsApi.md#Set-DashboardItemProperty) | **PUT** /rest/api/3/dashboard/{dashboardId}/items/{itemId}/properties/{propertyKey} | Set dashboard item property
[**Update-Dashboard**](DashboardsApi.md#Update-Dashboard) | **PUT** /rest/api/3/dashboard/{id} | Update dashboard
[**Update-Gadget**](DashboardsApi.md#Update-Gadget) | **PUT** /rest/api/3/dashboard/{dashboardId}/gadget/{gadgetId} | Update gadget on dashboard


<a name="Add-Gadget"></a>
# **Add-Gadget**
> DashboardGadget Add-Gadget<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DashboardId] <Int64><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DashboardGadgetSettings] <PSCustomObject><br>

Add gadget to dashboard

Adds a gadget to a dashboard.  **[Permissions](#permissions) required:** None.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$DashboardId = 789 # Int64 | The ID of the dashboard.
$DashboardGadgetSettingsPosition = Initialize-DashboardGadgetSettingsPosition -TheRowPositionOfTheGadget 0 -TheColumnPositionOfTheGadget 0
$DashboardGadgetSettings = Initialize-DashboardGadgetSettings -ModuleKey "MyModuleKey" -Uri "MyUri" -Color "MyColor" -Position $DashboardGadgetSettingsPosition -Title "MyTitle" -IgnoreUriAndModuleKeyValidation $false # DashboardGadgetSettings | 

# Add gadget to dashboard
try {
    $Result = Add-Gadget -DashboardId $DashboardId -DashboardGadgetSettings $DashboardGadgetSettings
} catch {
    Write-Host ("Exception occurred when calling Add-Gadget: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **DashboardId** | **Int64**| The ID of the dashboard. | 
 **DashboardGadgetSettings** | [**DashboardGadgetSettings**](DashboardGadgetSettings.md)|  | 

### Return type

[**DashboardGadget**](DashboardGadget.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Copy-Dashboard"></a>
# **Copy-Dashboard**
> Dashboard Copy-Dashboard<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DashboardDetails] <PSCustomObject><br>

Copy dashboard

Copies a dashboard. Any values provided in the `dashboard` parameter replace those in the copied dashboard.  **[Permissions](#permissions) required:** None  The dashboard to be copied must be owned by or shared with the user.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$Id = "MyId" # String | 
$UserAvatarUrls = Initialize-UserAvatarUrls -Var16x16 "MyVar16x16" -Var24x24 "MyVar24x24" -Var32x32 "MyVar32x32" -Var48x48 "MyVar48x48"

$GroupName = Initialize-GroupName -Name "MyName" -GroupId "MyGroupId" -Self "MySelf"
$UserGroups = Initialize-UserGroups -Size 0 -Items $GroupName -PagingCallback  -Callback  -MaxResults 0

$ApplicationRole = Initialize-ApplicationRole -Key "MyKey" -Groups "MyGroups" -GroupDetails $GroupName -Name "MyName" -DefaultGroups "MyDefaultGroups" -DefaultGroupsDetails $GroupName -SelectedByDefault $false -Defined $false -NumberOfSeats 0 -RemainingSeats 0 -UserCount 0 -UserCountDescription "MyUserCountDescription" -HasUnlimitedSeats $false -Platform $false

$UserApplicationRoles = Initialize-UserApplicationRoles -Size 0 -Items $ApplicationRole -PagingCallback  -Callback  -MaxResults 0

$ProjectLead = Initialize-ProjectLead -Self "MySelf" -Key "MyKey" -AccountId "MyAccountId" -AccountType "atlassian" -Name "MyName" -EmailAddress "MyEmailAddress" -AvatarUrls $UserAvatarUrls -DisplayName "MyDisplayName" -Active $false -TimeZone "MyTimeZone" -Locale "MyLocale" -Groups $UserGroups -ApplicationRoles $UserApplicationRoles -Expand "MyExpand"

$ProjectComponentLead = Initialize-ProjectComponentLead -Self "MySelf" -Key "MyKey" -AccountId "MyAccountId" -AccountType "atlassian" -Name "MyName" -EmailAddress "MyEmailAddress" -AvatarUrls $UserAvatarUrls -DisplayName "MyDisplayName" -Active $false -TimeZone "MyTimeZone" -Locale "MyLocale" -Groups $UserGroups -ApplicationRoles $UserApplicationRoles -Expand "MyExpand"

$ProjectComponentAssignee = Initialize-ProjectComponentAssignee -Self "MySelf" -Key "MyKey" -AccountId "MyAccountId" -AccountType "atlassian" -Name "MyName" -EmailAddress "MyEmailAddress" -AvatarUrls $UserAvatarUrls -DisplayName "MyDisplayName" -Active $false -TimeZone "MyTimeZone" -Locale "MyLocale" -Groups $UserGroups -ApplicationRoles $UserApplicationRoles -Expand "MyExpand"

$ProjectComponentRealAssignee = Initialize-ProjectComponentRealAssignee -Self "MySelf" -Key "MyKey" -AccountId "MyAccountId" -AccountType "atlassian" -Name "MyName" -EmailAddress "MyEmailAddress" -AvatarUrls $UserAvatarUrls -DisplayName "MyDisplayName" -Active $false -TimeZone "MyTimeZone" -Locale "MyLocale" -Groups $UserGroups -ApplicationRoles $UserApplicationRoles -Expand "MyExpand"

$ProjectComponent = Initialize-ProjectComponent -Self "MySelf" -Id "MyId" -Name "MyName" -Description "MyDescription" -Lead $ProjectComponentLead -LeadUserName "MyLeadUserName" -LeadAccountId "MyLeadAccountId" -AssigneeType "PROJECT_DEFAULT" -Assignee $ProjectComponentAssignee -RealAssigneeType "PROJECT_DEFAULT" -RealAssignee $ProjectComponentRealAssignee -IsAssigneeTypeValid $false -Project "MyProject" -ProjectId 0

$ProjectDetailsAvatarUrls = Initialize-ProjectDetailsAvatarUrls -Var16x16 "MyVar16x16" -Var24x24 "MyVar24x24" -Var32x32 "MyVar32x32" -Var48x48 "MyVar48x48"
$ProjectDetailsProjectCategory = Initialize-ProjectDetailsProjectCategory -Self "MySelf" -Id "MyId" -Description "MyDescription" -Name "MyName"
$ScopeProject = Initialize-ScopeProject -Self "MySelf" -Id "MyId" -Key "MyKey" -Name "MyName" -ProjectTypeKey "software" -Simplified $false -AvatarUrls $ProjectDetailsAvatarUrls -ProjectCategory $ProjectDetailsProjectCategory

$IssueTypeIssueCreateMetadataScope = Initialize-IssueTypeIssueCreateMetadataScope -Type "PROJECT" -Project $ScopeProject

$IssueTypeDetails = Initialize-IssueTypeDetails -Self "MySelf" -Id "MyId" -Description "MyDescription" -IconUrl "MyIconUrl" -Name "MyName" -Subtask $false -AvatarId 0 -EntityId "MyEntityId" -HierarchyLevel 0 -Scope $IssueTypeIssueCreateMetadataScope

$SimpleLink = Initialize-SimpleLink -Id "MyId" -StyleClass "MyStyleClass" -IconClass "MyIconClass" -Label "MyLabel" -Title "MyTitle" -Href "MyHref" -Weight 0
$VersionIssuesStatusForFixVersion = Initialize-VersionIssuesStatusForFixVersion -Unmapped 0 -ToDo 0 -InProgress 0 -Done 0
$Version = Initialize-Version -Expand "MyExpand" -Self "MySelf" -Id "MyId" -Description "MyDescription" -Name "MyName" -Archived $false -Released $false -StartDate (Get-Date) -ReleaseDate (Get-Date) -Overdue $false -UserStartDate "MyUserStartDate" -UserReleaseDate "MyUserReleaseDate" -Project "MyProject" -ProjectId 0 -MoveUnfixedIssuesTo "MyMoveUnfixedIssuesTo" -Operations $SimpleLink -IssuesStatusForFixVersion $VersionIssuesStatusForFixVersion

$ProjectProjectCategory = Initialize-ProjectProjectCategory -Self "MySelf" -Id "MyId" -Name "MyName" -Description "MyDescription"

$SimplifiedHierarchyLevel = Initialize-SimplifiedHierarchyLevel -Id 0 -Name "MyName" -AboveLevelId 0 -BelowLevelId 0 -ProjectConfigurationId 0 -Level 0 -IssueTypeIds 0 -ExternalUuid "MyExternalUuid" -HierarchyLevelNumber 0
$ProjectIssueTypeHierarchy = Initialize-ProjectIssueTypeHierarchy -BaseLevelId 0 -Levels $SimplifiedHierarchyLevel

$ProjectPermissions = Initialize-ProjectPermissions -CanEdit $false
$ProjectInsight = Initialize-ProjectInsight -TotalIssueCount 0 -LastIssueUpdateTime (Get-Date)

$ProjectDeletedBy = Initialize-ProjectDeletedBy -Self "MySelf" -Key "MyKey" -AccountId "MyAccountId" -AccountType "atlassian" -Name "MyName" -EmailAddress "MyEmailAddress" -AvatarUrls $UserAvatarUrls -DisplayName "MyDisplayName" -Active $false -TimeZone "MyTimeZone" -Locale "MyLocale" -Groups $UserGroups -ApplicationRoles $UserApplicationRoles -Expand "MyExpand"

$ProjectArchivedBy = Initialize-ProjectArchivedBy -Self "MySelf" -Key "MyKey" -AccountId "MyAccountId" -AccountType "atlassian" -Name "MyName" -EmailAddress "MyEmailAddress" -AvatarUrls $UserAvatarUrls -DisplayName "MyDisplayName" -Active $false -TimeZone "MyTimeZone" -Locale "MyLocale" -Groups $UserGroups -ApplicationRoles $UserApplicationRoles -Expand "MyExpand"

$ProjectLandingPageInfo = Initialize-ProjectLandingPageInfo -Url "MyUrl" -ProjectKey "MyProjectKey" -ProjectType "MyProjectType" -Attributes @{ key_example = "MyInner" } -Simplified $false -BoardId 0 -BoardName "MyBoardName" -SimpleBoard $false -QueueId 0 -QueueName "MyQueueName" -QueueCategory "MyQueueCategory"
$SharePermissionProject = Initialize-SharePermissionProject -Expand "MyExpand" -Self "MySelf" -Id "MyId" -Key "MyKey" -Description "MyDescription" -Lead $ProjectLead -Components $ProjectComponent -IssueTypes $IssueTypeDetails -Url "MyUrl" -Email "MyEmail" -AssigneeType "PROJECT_LEAD" -Versions $null -Name "MyName" -Roles @{ key_example = "MyInner" } -AvatarUrls $ProjectDetailsAvatarUrls -ProjectCategory $ProjectProjectCategory -ProjectTypeKey "software" -Simplified $false -Style "classic" -Favourite $false -IsPrivate $false -IssueTypeHierarchy $ProjectIssueTypeHierarchy -Permissions $ProjectPermissions -Properties @{ key_example =  } -Uuid "MyUuid" -Insight $ProjectInsight -Deleted $false -RetentionTillDate (Get-Date) -DeletedDate (Get-Date) -DeletedBy $ProjectDeletedBy -Archived $false -ArchivedDate (Get-Date) -ArchivedBy $ProjectArchivedBy -LandingPageInfo $ProjectLandingPageInfo

$ProjectRoleUser = Initialize-ProjectRoleUser -AccountId "MyAccountId"
$ProjectRoleGroup = Initialize-ProjectRoleGroup -DisplayName "MyDisplayName" -Name "MyName" -GroupId "MyGroupId"
$RoleActor = Initialize-RoleActor -Id 0 -DisplayName "MyDisplayName" -Type "atlassian-group-role-actor" -Name "MyName" -AvatarUrl "MyAvatarUrl" -ActorUser $ProjectRoleUser -ActorGroup $ProjectRoleGroup

$ProjectRoleDetailsScope = Initialize-ProjectRoleDetailsScope -Type "PROJECT" -Project $ScopeProject

$SharePermissionRole = Initialize-SharePermissionRole -Self "MySelf" -Name "MyName" -Id 0 -Description "MyDescription" -Actors $RoleActor -Scope $ProjectRoleDetailsScope -TranslatedName "MyTranslatedName" -CurrentUserRole $false -Default $false -Admin $false -RoleConfigurable $false

$SharePermissionGroup = Initialize-SharePermissionGroup -Name "MyName" -GroupId "MyGroupId" -Self "MySelf"

$UserBeanAvatarUrls = Initialize-UserBeanAvatarUrls -Var16x16 "MyVar16x16" -Var24x24 "MyVar24x24" -Var32x32 "MyVar32x32" -Var48x48 "MyVar48x48"
$SharePermissionUser = Initialize-SharePermissionUser -Key "MyKey" -Self "MySelf" -Name "MyName" -DisplayName "MyDisplayName" -Active $false -AccountId "MyAccountId" -AvatarUrls $UserBeanAvatarUrls

$SharePermission = Initialize-SharePermission -Id 0 -Type "user" -Project $SharePermissionProject -Role $SharePermissionRole -Group $SharePermissionGroup -User $SharePermissionUser

$DashboardDetails = Initialize-DashboardDetails -Name "MyName" -Description "MyDescription" -SharePermissions $SharePermission -EditPermissions $SharePermission # DashboardDetails | Dashboard details.

# Copy dashboard
try {
    $Result = Copy-Dashboard -Id $Id -DashboardDetails $DashboardDetails
} catch {
    Write-Host ("Exception occurred when calling Copy-Dashboard: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**|  | 
 **DashboardDetails** | [**DashboardDetails**](DashboardDetails.md)| Dashboard details. | 

### Return type

[**Dashboard**](Dashboard.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="New-Dashboard"></a>
# **New-Dashboard**
> Dashboard New-Dashboard<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DashboardDetails] <PSCustomObject><br>

Create dashboard

Creates a dashboard.  **[Permissions](#permissions) required:** None.

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

$ProjectLead = Initialize-ProjectLead -Self "MySelf" -Key "MyKey" -AccountId "MyAccountId" -AccountType "atlassian" -Name "MyName" -EmailAddress "MyEmailAddress" -AvatarUrls $UserAvatarUrls -DisplayName "MyDisplayName" -Active $false -TimeZone "MyTimeZone" -Locale "MyLocale" -Groups $UserGroups -ApplicationRoles $UserApplicationRoles -Expand "MyExpand"

$ProjectComponentLead = Initialize-ProjectComponentLead -Self "MySelf" -Key "MyKey" -AccountId "MyAccountId" -AccountType "atlassian" -Name "MyName" -EmailAddress "MyEmailAddress" -AvatarUrls $UserAvatarUrls -DisplayName "MyDisplayName" -Active $false -TimeZone "MyTimeZone" -Locale "MyLocale" -Groups $UserGroups -ApplicationRoles $UserApplicationRoles -Expand "MyExpand"

$ProjectComponentAssignee = Initialize-ProjectComponentAssignee -Self "MySelf" -Key "MyKey" -AccountId "MyAccountId" -AccountType "atlassian" -Name "MyName" -EmailAddress "MyEmailAddress" -AvatarUrls $UserAvatarUrls -DisplayName "MyDisplayName" -Active $false -TimeZone "MyTimeZone" -Locale "MyLocale" -Groups $UserGroups -ApplicationRoles $UserApplicationRoles -Expand "MyExpand"

$ProjectComponentRealAssignee = Initialize-ProjectComponentRealAssignee -Self "MySelf" -Key "MyKey" -AccountId "MyAccountId" -AccountType "atlassian" -Name "MyName" -EmailAddress "MyEmailAddress" -AvatarUrls $UserAvatarUrls -DisplayName "MyDisplayName" -Active $false -TimeZone "MyTimeZone" -Locale "MyLocale" -Groups $UserGroups -ApplicationRoles $UserApplicationRoles -Expand "MyExpand"

$ProjectComponent = Initialize-ProjectComponent -Self "MySelf" -Id "MyId" -Name "MyName" -Description "MyDescription" -Lead $ProjectComponentLead -LeadUserName "MyLeadUserName" -LeadAccountId "MyLeadAccountId" -AssigneeType "PROJECT_DEFAULT" -Assignee $ProjectComponentAssignee -RealAssigneeType "PROJECT_DEFAULT" -RealAssignee $ProjectComponentRealAssignee -IsAssigneeTypeValid $false -Project "MyProject" -ProjectId 0

$ProjectDetailsAvatarUrls = Initialize-ProjectDetailsAvatarUrls -Var16x16 "MyVar16x16" -Var24x24 "MyVar24x24" -Var32x32 "MyVar32x32" -Var48x48 "MyVar48x48"
$ProjectDetailsProjectCategory = Initialize-ProjectDetailsProjectCategory -Self "MySelf" -Id "MyId" -Description "MyDescription" -Name "MyName"
$ScopeProject = Initialize-ScopeProject -Self "MySelf" -Id "MyId" -Key "MyKey" -Name "MyName" -ProjectTypeKey "software" -Simplified $false -AvatarUrls $ProjectDetailsAvatarUrls -ProjectCategory $ProjectDetailsProjectCategory

$IssueTypeIssueCreateMetadataScope = Initialize-IssueTypeIssueCreateMetadataScope -Type "PROJECT" -Project $ScopeProject

$IssueTypeDetails = Initialize-IssueTypeDetails -Self "MySelf" -Id "MyId" -Description "MyDescription" -IconUrl "MyIconUrl" -Name "MyName" -Subtask $false -AvatarId 0 -EntityId "MyEntityId" -HierarchyLevel 0 -Scope $IssueTypeIssueCreateMetadataScope

$SimpleLink = Initialize-SimpleLink -Id "MyId" -StyleClass "MyStyleClass" -IconClass "MyIconClass" -Label "MyLabel" -Title "MyTitle" -Href "MyHref" -Weight 0
$VersionIssuesStatusForFixVersion = Initialize-VersionIssuesStatusForFixVersion -Unmapped 0 -ToDo 0 -InProgress 0 -Done 0
$Version = Initialize-Version -Expand "MyExpand" -Self "MySelf" -Id "MyId" -Description "MyDescription" -Name "MyName" -Archived $false -Released $false -StartDate (Get-Date) -ReleaseDate (Get-Date) -Overdue $false -UserStartDate "MyUserStartDate" -UserReleaseDate "MyUserReleaseDate" -Project "MyProject" -ProjectId 0 -MoveUnfixedIssuesTo "MyMoveUnfixedIssuesTo" -Operations $SimpleLink -IssuesStatusForFixVersion $VersionIssuesStatusForFixVersion

$ProjectProjectCategory = Initialize-ProjectProjectCategory -Self "MySelf" -Id "MyId" -Name "MyName" -Description "MyDescription"

$SimplifiedHierarchyLevel = Initialize-SimplifiedHierarchyLevel -Id 0 -Name "MyName" -AboveLevelId 0 -BelowLevelId 0 -ProjectConfigurationId 0 -Level 0 -IssueTypeIds 0 -ExternalUuid "MyExternalUuid" -HierarchyLevelNumber 0
$ProjectIssueTypeHierarchy = Initialize-ProjectIssueTypeHierarchy -BaseLevelId 0 -Levels $SimplifiedHierarchyLevel

$ProjectPermissions = Initialize-ProjectPermissions -CanEdit $false
$ProjectInsight = Initialize-ProjectInsight -TotalIssueCount 0 -LastIssueUpdateTime (Get-Date)

$ProjectDeletedBy = Initialize-ProjectDeletedBy -Self "MySelf" -Key "MyKey" -AccountId "MyAccountId" -AccountType "atlassian" -Name "MyName" -EmailAddress "MyEmailAddress" -AvatarUrls $UserAvatarUrls -DisplayName "MyDisplayName" -Active $false -TimeZone "MyTimeZone" -Locale "MyLocale" -Groups $UserGroups -ApplicationRoles $UserApplicationRoles -Expand "MyExpand"

$ProjectArchivedBy = Initialize-ProjectArchivedBy -Self "MySelf" -Key "MyKey" -AccountId "MyAccountId" -AccountType "atlassian" -Name "MyName" -EmailAddress "MyEmailAddress" -AvatarUrls $UserAvatarUrls -DisplayName "MyDisplayName" -Active $false -TimeZone "MyTimeZone" -Locale "MyLocale" -Groups $UserGroups -ApplicationRoles $UserApplicationRoles -Expand "MyExpand"

$ProjectLandingPageInfo = Initialize-ProjectLandingPageInfo -Url "MyUrl" -ProjectKey "MyProjectKey" -ProjectType "MyProjectType" -Attributes @{ key_example = "MyInner" } -Simplified $false -BoardId 0 -BoardName "MyBoardName" -SimpleBoard $false -QueueId 0 -QueueName "MyQueueName" -QueueCategory "MyQueueCategory"
$SharePermissionProject = Initialize-SharePermissionProject -Expand "MyExpand" -Self "MySelf" -Id "MyId" -Key "MyKey" -Description "MyDescription" -Lead $ProjectLead -Components $ProjectComponent -IssueTypes $IssueTypeDetails -Url "MyUrl" -Email "MyEmail" -AssigneeType "PROJECT_LEAD" -Versions $null -Name "MyName" -Roles @{ key_example = "MyInner" } -AvatarUrls $ProjectDetailsAvatarUrls -ProjectCategory $ProjectProjectCategory -ProjectTypeKey "software" -Simplified $false -Style "classic" -Favourite $false -IsPrivate $false -IssueTypeHierarchy $ProjectIssueTypeHierarchy -Permissions $ProjectPermissions -Properties @{ key_example =  } -Uuid "MyUuid" -Insight $ProjectInsight -Deleted $false -RetentionTillDate (Get-Date) -DeletedDate (Get-Date) -DeletedBy $ProjectDeletedBy -Archived $false -ArchivedDate (Get-Date) -ArchivedBy $ProjectArchivedBy -LandingPageInfo $ProjectLandingPageInfo

$ProjectRoleUser = Initialize-ProjectRoleUser -AccountId "MyAccountId"
$ProjectRoleGroup = Initialize-ProjectRoleGroup -DisplayName "MyDisplayName" -Name "MyName" -GroupId "MyGroupId"
$RoleActor = Initialize-RoleActor -Id 0 -DisplayName "MyDisplayName" -Type "atlassian-group-role-actor" -Name "MyName" -AvatarUrl "MyAvatarUrl" -ActorUser $ProjectRoleUser -ActorGroup $ProjectRoleGroup

$ProjectRoleDetailsScope = Initialize-ProjectRoleDetailsScope -Type "PROJECT" -Project $ScopeProject

$SharePermissionRole = Initialize-SharePermissionRole -Self "MySelf" -Name "MyName" -Id 0 -Description "MyDescription" -Actors $RoleActor -Scope $ProjectRoleDetailsScope -TranslatedName "MyTranslatedName" -CurrentUserRole $false -Default $false -Admin $false -RoleConfigurable $false

$SharePermissionGroup = Initialize-SharePermissionGroup -Name "MyName" -GroupId "MyGroupId" -Self "MySelf"

$UserBeanAvatarUrls = Initialize-UserBeanAvatarUrls -Var16x16 "MyVar16x16" -Var24x24 "MyVar24x24" -Var32x32 "MyVar32x32" -Var48x48 "MyVar48x48"
$SharePermissionUser = Initialize-SharePermissionUser -Key "MyKey" -Self "MySelf" -Name "MyName" -DisplayName "MyDisplayName" -Active $false -AccountId "MyAccountId" -AvatarUrls $UserBeanAvatarUrls

$SharePermission = Initialize-SharePermission -Id 0 -Type "user" -Project $SharePermissionProject -Role $SharePermissionRole -Group $SharePermissionGroup -User $SharePermissionUser

$DashboardDetails = Initialize-DashboardDetails -Name "MyName" -Description "MyDescription" -SharePermissions $SharePermission -EditPermissions $SharePermission # DashboardDetails | Dashboard details.

# Create dashboard
try {
    $Result = New-Dashboard -DashboardDetails $DashboardDetails
} catch {
    Write-Host ("Exception occurred when calling New-Dashboard: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **DashboardDetails** | [**DashboardDetails**](DashboardDetails.md)| Dashboard details. | 

### Return type

[**Dashboard**](Dashboard.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-DeleteDashboard"></a>
# **Invoke-DeleteDashboard**
> void Invoke-DeleteDashboard<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Delete dashboard

Deletes a dashboard.  **[Permissions](#permissions) required:** None  The dashboard to be deleted must be owned by the user.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$Id = "MyId" # String | The ID of the dashboard.

# Delete dashboard
try {
    $Result = Invoke-DeleteDashboard -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Invoke-DeleteDashboard: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The ID of the dashboard. | 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-DeleteDashboardItemProperty"></a>
# **Invoke-DeleteDashboardItemProperty**
> void Invoke-DeleteDashboardItemProperty<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DashboardId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ItemId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PropertyKey] <String><br>

Delete dashboard item property

Deletes a dashboard item property.  This operation can be accessed anonymously.  **[Permissions](#permissions) required:** The user must be the owner of the dashboard. Note, users with the *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg) are considered owners of the System dashboard.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$DashboardId = "MyDashboardId" # String | The ID of the dashboard.
$ItemId = "MyItemId" # String | The ID of the dashboard item.
$PropertyKey = "MyPropertyKey" # String | The key of the dashboard item property.

# Delete dashboard item property
try {
    $Result = Invoke-DeleteDashboardItemProperty -DashboardId $DashboardId -ItemId $ItemId -PropertyKey $PropertyKey
} catch {
    Write-Host ("Exception occurred when calling Invoke-DeleteDashboardItemProperty: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **DashboardId** | **String**| The ID of the dashboard. | 
 **ItemId** | **String**| The ID of the dashboard item. | 
 **PropertyKey** | **String**| The key of the dashboard item property. | 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-AllAvailableDashboardGadgets"></a>
# **Get-AllAvailableDashboardGadgets**
> AvailableDashboardGadgetsResponse Get-AllAvailableDashboardGadgets<br>

Get available gadgets

Gets a list of all available gadgets that can be added to all dashboards.  **[Permissions](#permissions) required:** None.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"


# Get available gadgets
try {
    $Result = Get-AllAvailableDashboardGadgets
} catch {
    Write-Host ("Exception occurred when calling Get-AllAvailableDashboardGadgets: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**AvailableDashboardGadgetsResponse**](AvailableDashboardGadgetsResponse.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-AllDashboards"></a>
# **Get-AllDashboards**
> PageOfDashboards Get-AllDashboards<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filter] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartAt] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-MaxResults] <System.Nullable[Int32]><br>

Get all dashboards

Returns a list of dashboards owned by or shared with the user. The list may be filtered to include only favorite or owned dashboards.  This operation can be accessed anonymously.  **[Permissions](#permissions) required:** None.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$Filter = "my" # String | The filter applied to the list of dashboards. Valid values are:   *  `favourite` Returns dashboards the user has marked as favorite.  *  `my` Returns dashboards owned by the user. (optional)
$StartAt = 56 # Int32 | The index of the first item to return in a page of results (page offset). (optional) (default to 0)
$MaxResults = 56 # Int32 | The maximum number of items to return per page. (optional) (default to 20)

# Get all dashboards
try {
    $Result = Get-AllDashboards -Filter $Filter -StartAt $StartAt -MaxResults $MaxResults
} catch {
    Write-Host ("Exception occurred when calling Get-AllDashboards: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Filter** | **String**| The filter applied to the list of dashboards. Valid values are:   *  &#x60;favourite&#x60; Returns dashboards the user has marked as favorite.  *  &#x60;my&#x60; Returns dashboards owned by the user. | [optional] 
 **StartAt** | **Int32**| The index of the first item to return in a page of results (page offset). | [optional] [default to 0]
 **MaxResults** | **Int32**| The maximum number of items to return per page. | [optional] [default to 20]

### Return type

[**PageOfDashboards**](PageOfDashboards.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-AllGadgets"></a>
# **Get-AllGadgets**
> DashboardGadgetResponse Get-AllGadgets<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DashboardId] <Int64><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ModuleKey] <String[]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Uri] <String[]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-GadgetId] <System.Nullable[Int64][]><br>

Get gadgets

Returns a list of dashboard gadgets on a dashboard.  This operation returns:   *  Gadgets from a list of IDs, when `id` is set.  *  Gadgets with a module key, when `moduleKey` is set.  *  Gadgets from a list of URIs, when `uri` is set.  *  All gadgets, when no other parameters are set.  This operation can be accessed anonymously.  **[Permissions](#permissions) required:** None.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$DashboardId = 789 # Int64 | The ID of the dashboard.
$ModuleKey = "MyModuleKey" # String[] | The list of gadgets module keys. To include multiple module keys, separate module keys with ampersand: `moduleKey=key:one&moduleKey=key:two`. (optional)
$Uri = "MyUri" # String[] | The list of gadgets URIs. To include multiple URIs, separate URIs with ampersand: `uri=/rest/example/uri/1&uri=/rest/example/uri/2`. (optional)
$GadgetId = 0 # Int64[] | The list of gadgets IDs. To include multiple IDs, separate IDs with ampersand: `gadgetId=10000&gadgetId=10001`. (optional)

# Get gadgets
try {
    $Result = Get-AllGadgets -DashboardId $DashboardId -ModuleKey $ModuleKey -Uri $Uri -GadgetId $GadgetId
} catch {
    Write-Host ("Exception occurred when calling Get-AllGadgets: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **DashboardId** | **Int64**| The ID of the dashboard. | 
 **ModuleKey** | [**String[]**](String.md)| The list of gadgets module keys. To include multiple module keys, separate module keys with ampersand: &#x60;moduleKey&#x3D;key:one&amp;moduleKey&#x3D;key:two&#x60;. | [optional] 
 **Uri** | [**String[]**](String.md)| The list of gadgets URIs. To include multiple URIs, separate URIs with ampersand: &#x60;uri&#x3D;/rest/example/uri/1&amp;uri&#x3D;/rest/example/uri/2&#x60;. | [optional] 
 **GadgetId** | [**Int64[]**](Int64.md)| The list of gadgets IDs. To include multiple IDs, separate IDs with ampersand: &#x60;gadgetId&#x3D;10000&amp;gadgetId&#x3D;10001&#x60;. | [optional] 

### Return type

[**DashboardGadgetResponse**](DashboardGadgetResponse.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-Dashboard"></a>
# **Get-Dashboard**
> Dashboard Get-Dashboard<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Get dashboard

Returns a dashboard.  This operation can be accessed anonymously.  **[Permissions](#permissions) required:** None.  However, to get a dashboard, the dashboard must be shared with the user or the user must own it. Note, users with the *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg) are considered owners of the System dashboard. The System dashboard is considered to be shared with all other users.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$Id = "MyId" # String | The ID of the dashboard.

# Get dashboard
try {
    $Result = Get-Dashboard -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-Dashboard: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The ID of the dashboard. | 

### Return type

[**Dashboard**](Dashboard.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-DashboardItemProperty"></a>
# **Get-DashboardItemProperty**
> EntityProperty Get-DashboardItemProperty<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DashboardId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ItemId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PropertyKey] <String><br>

Get dashboard item property

Returns the key and value of a dashboard item property.  A dashboard item enables an app to add user-specific information to a user dashboard. Dashboard items are exposed to users as gadgets that users can add to their dashboards. For more information on how users do this, see [Adding and customizing gadgets](https://confluence.atlassian.com/x/7AeiLQ).  When an app creates a dashboard item it registers a callback to receive the dashboard item ID. The callback fires whenever the item is rendered or, where the item is configurable, the user edits the item. The app then uses this resource to store the item's content or configuration details. For more information on working with dashboard items, see [ Building a dashboard item for a JIRA Connect add-on](https://developer.atlassian.com/server/jira/platform/guide-building-a-dashboard-item-for-a-jira-connect-add-on-33746254/) and the [Dashboard Item](https://developer.atlassian.com/cloud/jira/platform/modules/dashboard-item/) documentation.  There is no resource to set or get dashboard items.  This operation can be accessed anonymously.  **[Permissions](#permissions) required:** The user must be the owner of the dashboard or have the dashboard shared with them. Note, users with the *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg) are considered owners of the System dashboard. The System dashboard is considered to be shared with all other users, and is accessible to anonymous users when Jira’s anonymous access is permitted.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$DashboardId = "MyDashboardId" # String | The ID of the dashboard.
$ItemId = "MyItemId" # String | The ID of the dashboard item.
$PropertyKey = "MyPropertyKey" # String | The key of the dashboard item property.

# Get dashboard item property
try {
    $Result = Get-DashboardItemProperty -DashboardId $DashboardId -ItemId $ItemId -PropertyKey $PropertyKey
} catch {
    Write-Host ("Exception occurred when calling Get-DashboardItemProperty: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **DashboardId** | **String**| The ID of the dashboard. | 
 **ItemId** | **String**| The ID of the dashboard item. | 
 **PropertyKey** | **String**| The key of the dashboard item property. | 

### Return type

[**EntityProperty**](EntityProperty.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-DashboardItemPropertyKeys"></a>
# **Get-DashboardItemPropertyKeys**
> PropertyKeys Get-DashboardItemPropertyKeys<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DashboardId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ItemId] <String><br>

Get dashboard item property keys

Returns the keys of all properties for a dashboard item.  This operation can be accessed anonymously.  **[Permissions](#permissions) required:** The user must be the owner of the dashboard or have the dashboard shared with them. Note, users with the *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg) are considered owners of the System dashboard. The System dashboard is considered to be shared with all other users, and is accessible to anonymous users when Jira’s anonymous access is permitted.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$DashboardId = "MyDashboardId" # String | The ID of the dashboard.
$ItemId = "MyItemId" # String | The ID of the dashboard item.

# Get dashboard item property keys
try {
    $Result = Get-DashboardItemPropertyKeys -DashboardId $DashboardId -ItemId $ItemId
} catch {
    Write-Host ("Exception occurred when calling Get-DashboardItemPropertyKeys: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **DashboardId** | **String**| The ID of the dashboard. | 
 **ItemId** | **String**| The ID of the dashboard item. | 

### Return type

[**PropertyKeys**](PropertyKeys.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-DashboardsPaginated"></a>
# **Get-DashboardsPaginated**
> PageBeanDashboard Get-DashboardsPaginated<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DashboardName] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AccountId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Owner] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Groupname] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-GroupId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProjectId] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-OrderBy] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartAt] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-MaxResults] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Status] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Expand] <String><br>

Search for dashboards

Returns a [paginated](#pagination) list of dashboards. This operation is similar to [Get dashboards](#api-rest-api-3-dashboard-get) except that the results can be refined to include dashboards that have specific attributes. For example, dashboards with a particular name. When multiple attributes are specified only filters matching all attributes are returned.  This operation can be accessed anonymously.  **[Permissions](#permissions) required:** The following dashboards that match the query parameters are returned:   *  Dashboards owned by the user. Not returned for anonymous users.  *  Dashboards shared with a group that the user is a member of. Not returned for anonymous users.  *  Dashboards shared with a private project that the user can browse. Not returned for anonymous users.  *  Dashboards shared with a public project.  *  Dashboards shared with the public.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$DashboardName = "MyDashboardName" # String | String used to perform a case-insensitive partial match with `name`. (optional)
$AccountId = "MyAccountId" # String | User account ID used to return dashboards with the matching `owner.accountId`. This parameter cannot be used with the `owner` parameter. (optional)
$Owner = "MyOwner" # String | This parameter is deprecated because of privacy changes. Use `accountId` instead. See the [migration guide](https://developer.atlassian.com/cloud/jira/platform/deprecation-notice-user-privacy-api-migration-guide/) for details. User name used to return dashboards with the matching `owner.name`. This parameter cannot be used with the `accountId` parameter. (optional)
$Groupname = "MyGroupname" # String | As a group's name can change, use of `groupId` is recommended. Group name used to return dashboards that are shared with a group that matches `sharePermissions.group.name`. This parameter cannot be used with the `groupId` parameter. (optional)
$GroupId = "MyGroupId" # String | Group ID used to return dashboards that are shared with a group that matches `sharePermissions.group.groupId`. This parameter cannot be used with the `groupname` parameter. (optional)
$ProjectId = 789 # Int64 | Project ID used to returns dashboards that are shared with a project that matches `sharePermissions.project.id`. (optional)
$OrderBy = "description" # String | [Order](#ordering) the results by a field:   *  `description` Sorts by dashboard description. Note that this sort works independently of whether the expand to display the description field is in use.  *  `favourite_count` Sorts by dashboard popularity.  *  `id` Sorts by dashboard ID.  *  `is_favourite` Sorts by whether the dashboard is marked as a favorite.  *  `name` Sorts by dashboard name.  *  `owner` Sorts by dashboard owner name. (optional) (default to "name")
$StartAt = 789 # Int64 | The index of the first item to return in a page of results (page offset). (optional) (default to 0)
$MaxResults = 56 # Int32 | The maximum number of items to return per page. (optional) (default to 50)
$Status = "active" # String | The status to filter by. It may be active, archived or deleted. (optional) (default to "active")
$Expand = "MyExpand" # String | Use [expand](#expansion) to include additional information about dashboard in the response. This parameter accepts a comma-separated list. Expand options include:   *  `description` Returns the description of the dashboard.  *  `owner` Returns the owner of the dashboard.  *  `viewUrl` Returns the URL that is used to view the dashboard.  *  `favourite` Returns `isFavourite`, an indicator of whether the user has set the dashboard as a favorite.  *  `favouritedCount` Returns `popularity`, a count of how many users have set this dashboard as a favorite.  *  `sharePermissions` Returns details of the share permissions defined for the dashboard.  *  `editPermissions` Returns details of the edit permissions defined for the dashboard.  *  `isWritable` Returns whether the current user has permission to edit the dashboard. (optional)

# Search for dashboards
try {
    $Result = Get-DashboardsPaginated -DashboardName $DashboardName -AccountId $AccountId -Owner $Owner -Groupname $Groupname -GroupId $GroupId -ProjectId $ProjectId -OrderBy $OrderBy -StartAt $StartAt -MaxResults $MaxResults -Status $Status -Expand $Expand
} catch {
    Write-Host ("Exception occurred when calling Get-DashboardsPaginated: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **DashboardName** | **String**| String used to perform a case-insensitive partial match with &#x60;name&#x60;. | [optional] 
 **AccountId** | **String**| User account ID used to return dashboards with the matching &#x60;owner.accountId&#x60;. This parameter cannot be used with the &#x60;owner&#x60; parameter. | [optional] 
 **Owner** | **String**| This parameter is deprecated because of privacy changes. Use &#x60;accountId&#x60; instead. See the [migration guide](https://developer.atlassian.com/cloud/jira/platform/deprecation-notice-user-privacy-api-migration-guide/) for details. User name used to return dashboards with the matching &#x60;owner.name&#x60;. This parameter cannot be used with the &#x60;accountId&#x60; parameter. | [optional] 
 **Groupname** | **String**| As a group&#39;s name can change, use of &#x60;groupId&#x60; is recommended. Group name used to return dashboards that are shared with a group that matches &#x60;sharePermissions.group.name&#x60;. This parameter cannot be used with the &#x60;groupId&#x60; parameter. | [optional] 
 **GroupId** | **String**| Group ID used to return dashboards that are shared with a group that matches &#x60;sharePermissions.group.groupId&#x60;. This parameter cannot be used with the &#x60;groupname&#x60; parameter. | [optional] 
 **ProjectId** | **Int64**| Project ID used to returns dashboards that are shared with a project that matches &#x60;sharePermissions.project.id&#x60;. | [optional] 
 **OrderBy** | **String**| [Order](#ordering) the results by a field:   *  &#x60;description&#x60; Sorts by dashboard description. Note that this sort works independently of whether the expand to display the description field is in use.  *  &#x60;favourite_count&#x60; Sorts by dashboard popularity.  *  &#x60;id&#x60; Sorts by dashboard ID.  *  &#x60;is_favourite&#x60; Sorts by whether the dashboard is marked as a favorite.  *  &#x60;name&#x60; Sorts by dashboard name.  *  &#x60;owner&#x60; Sorts by dashboard owner name. | [optional] [default to &quot;name&quot;]
 **StartAt** | **Int64**| The index of the first item to return in a page of results (page offset). | [optional] [default to 0]
 **MaxResults** | **Int32**| The maximum number of items to return per page. | [optional] [default to 50]
 **Status** | **String**| The status to filter by. It may be active, archived or deleted. | [optional] [default to &quot;active&quot;]
 **Expand** | **String**| Use [expand](#expansion) to include additional information about dashboard in the response. This parameter accepts a comma-separated list. Expand options include:   *  &#x60;description&#x60; Returns the description of the dashboard.  *  &#x60;owner&#x60; Returns the owner of the dashboard.  *  &#x60;viewUrl&#x60; Returns the URL that is used to view the dashboard.  *  &#x60;favourite&#x60; Returns &#x60;isFavourite&#x60;, an indicator of whether the user has set the dashboard as a favorite.  *  &#x60;favouritedCount&#x60; Returns &#x60;popularity&#x60;, a count of how many users have set this dashboard as a favorite.  *  &#x60;sharePermissions&#x60; Returns details of the share permissions defined for the dashboard.  *  &#x60;editPermissions&#x60; Returns details of the edit permissions defined for the dashboard.  *  &#x60;isWritable&#x60; Returns whether the current user has permission to edit the dashboard. | [optional] 

### Return type

[**PageBeanDashboard**](PageBeanDashboard.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Remove-Gadget"></a>
# **Remove-Gadget**
> AnyType Remove-Gadget<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DashboardId] <Int64><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-GadgetId] <Int64><br>

Remove gadget from dashboard

Removes a dashboard gadget from a dashboard.  When a gadget is removed from a dashboard, other gadgets in the same column are moved up to fill the emptied position.  **[Permissions](#permissions) required:** None.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$DashboardId = 789 # Int64 | The ID of the dashboard.
$GadgetId = 789 # Int64 | The ID of the gadget.

# Remove gadget from dashboard
try {
    $Result = Remove-Gadget -DashboardId $DashboardId -GadgetId $GadgetId
} catch {
    Write-Host ("Exception occurred when calling Remove-Gadget: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **DashboardId** | **Int64**| The ID of the dashboard. | 
 **GadgetId** | **Int64**| The ID of the gadget. | 

### Return type

[**AnyType**](AnyType.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Set-DashboardItemProperty"></a>
# **Set-DashboardItemProperty**
> AnyType Set-DashboardItemProperty<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DashboardId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ItemId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PropertyKey] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Body] <System.Nullable[AnyType]><br>

Set dashboard item property

Sets the value of a dashboard item property. Use this resource in apps to store custom data against a dashboard item.  A dashboard item enables an app to add user-specific information to a user dashboard. Dashboard items are exposed to users as gadgets that users can add to their dashboards. For more information on how users do this, see [Adding and customizing gadgets](https://confluence.atlassian.com/x/7AeiLQ).  When an app creates a dashboard item it registers a callback to receive the dashboard item ID. The callback fires whenever the item is rendered or, where the item is configurable, the user edits the item. The app then uses this resource to store the item's content or configuration details. For more information on working with dashboard items, see [ Building a dashboard item for a JIRA Connect add-on](https://developer.atlassian.com/server/jira/platform/guide-building-a-dashboard-item-for-a-jira-connect-add-on-33746254/) and the [Dashboard Item](https://developer.atlassian.com/cloud/jira/platform/modules/dashboard-item/) documentation.  There is no resource to set or get dashboard items.  The value of the request body must be a [valid](http://tools.ietf.org/html/rfc4627), non-empty JSON blob. The maximum length is 32768 characters.  This operation can be accessed anonymously.  **[Permissions](#permissions) required:** The user must be the owner of the dashboard. Note, users with the *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg) are considered owners of the System dashboard.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$DashboardId = "MyDashboardId" # String | The ID of the dashboard.
$ItemId = "MyItemId" # String | The ID of the dashboard item.
$PropertyKey = "MyPropertyKey" # String | The key of the dashboard item property. The maximum length is 255 characters. For dashboard items with a spec URI and no complete module key, if the provided propertyKey is equal to ""config"", the request body's JSON must be an object with all keys and values as strings.
$Body =  # AnyType | 

# Set dashboard item property
try {
    $Result = Set-DashboardItemProperty -DashboardId $DashboardId -ItemId $ItemId -PropertyKey $PropertyKey -Body $Body
} catch {
    Write-Host ("Exception occurred when calling Set-DashboardItemProperty: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **DashboardId** | **String**| The ID of the dashboard. | 
 **ItemId** | **String**| The ID of the dashboard item. | 
 **PropertyKey** | **String**| The key of the dashboard item property. The maximum length is 255 characters. For dashboard items with a spec URI and no complete module key, if the provided propertyKey is equal to &quot;&quot;config&quot;&quot;, the request body&#39;s JSON must be an object with all keys and values as strings. | 
 **Body** | **AnyType**|  | 

### Return type

[**AnyType**](AnyType.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Update-Dashboard"></a>
# **Update-Dashboard**
> Dashboard Update-Dashboard<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DashboardDetails] <PSCustomObject><br>

Update dashboard

Updates a dashboard, replacing all the dashboard details with those provided.  **[Permissions](#permissions) required:** None  The dashboard to be updated must be owned by the user.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$Id = "MyId" # String | The ID of the dashboard to update.
$UserAvatarUrls = Initialize-UserAvatarUrls -Var16x16 "MyVar16x16" -Var24x24 "MyVar24x24" -Var32x32 "MyVar32x32" -Var48x48 "MyVar48x48"

$GroupName = Initialize-GroupName -Name "MyName" -GroupId "MyGroupId" -Self "MySelf"
$UserGroups = Initialize-UserGroups -Size 0 -Items $GroupName -PagingCallback  -Callback  -MaxResults 0

$ApplicationRole = Initialize-ApplicationRole -Key "MyKey" -Groups "MyGroups" -GroupDetails $GroupName -Name "MyName" -DefaultGroups "MyDefaultGroups" -DefaultGroupsDetails $GroupName -SelectedByDefault $false -Defined $false -NumberOfSeats 0 -RemainingSeats 0 -UserCount 0 -UserCountDescription "MyUserCountDescription" -HasUnlimitedSeats $false -Platform $false

$UserApplicationRoles = Initialize-UserApplicationRoles -Size 0 -Items $ApplicationRole -PagingCallback  -Callback  -MaxResults 0

$ProjectLead = Initialize-ProjectLead -Self "MySelf" -Key "MyKey" -AccountId "MyAccountId" -AccountType "atlassian" -Name "MyName" -EmailAddress "MyEmailAddress" -AvatarUrls $UserAvatarUrls -DisplayName "MyDisplayName" -Active $false -TimeZone "MyTimeZone" -Locale "MyLocale" -Groups $UserGroups -ApplicationRoles $UserApplicationRoles -Expand "MyExpand"

$ProjectComponentLead = Initialize-ProjectComponentLead -Self "MySelf" -Key "MyKey" -AccountId "MyAccountId" -AccountType "atlassian" -Name "MyName" -EmailAddress "MyEmailAddress" -AvatarUrls $UserAvatarUrls -DisplayName "MyDisplayName" -Active $false -TimeZone "MyTimeZone" -Locale "MyLocale" -Groups $UserGroups -ApplicationRoles $UserApplicationRoles -Expand "MyExpand"

$ProjectComponentAssignee = Initialize-ProjectComponentAssignee -Self "MySelf" -Key "MyKey" -AccountId "MyAccountId" -AccountType "atlassian" -Name "MyName" -EmailAddress "MyEmailAddress" -AvatarUrls $UserAvatarUrls -DisplayName "MyDisplayName" -Active $false -TimeZone "MyTimeZone" -Locale "MyLocale" -Groups $UserGroups -ApplicationRoles $UserApplicationRoles -Expand "MyExpand"

$ProjectComponentRealAssignee = Initialize-ProjectComponentRealAssignee -Self "MySelf" -Key "MyKey" -AccountId "MyAccountId" -AccountType "atlassian" -Name "MyName" -EmailAddress "MyEmailAddress" -AvatarUrls $UserAvatarUrls -DisplayName "MyDisplayName" -Active $false -TimeZone "MyTimeZone" -Locale "MyLocale" -Groups $UserGroups -ApplicationRoles $UserApplicationRoles -Expand "MyExpand"

$ProjectComponent = Initialize-ProjectComponent -Self "MySelf" -Id "MyId" -Name "MyName" -Description "MyDescription" -Lead $ProjectComponentLead -LeadUserName "MyLeadUserName" -LeadAccountId "MyLeadAccountId" -AssigneeType "PROJECT_DEFAULT" -Assignee $ProjectComponentAssignee -RealAssigneeType "PROJECT_DEFAULT" -RealAssignee $ProjectComponentRealAssignee -IsAssigneeTypeValid $false -Project "MyProject" -ProjectId 0

$ProjectDetailsAvatarUrls = Initialize-ProjectDetailsAvatarUrls -Var16x16 "MyVar16x16" -Var24x24 "MyVar24x24" -Var32x32 "MyVar32x32" -Var48x48 "MyVar48x48"
$ProjectDetailsProjectCategory = Initialize-ProjectDetailsProjectCategory -Self "MySelf" -Id "MyId" -Description "MyDescription" -Name "MyName"
$ScopeProject = Initialize-ScopeProject -Self "MySelf" -Id "MyId" -Key "MyKey" -Name "MyName" -ProjectTypeKey "software" -Simplified $false -AvatarUrls $ProjectDetailsAvatarUrls -ProjectCategory $ProjectDetailsProjectCategory

$IssueTypeIssueCreateMetadataScope = Initialize-IssueTypeIssueCreateMetadataScope -Type "PROJECT" -Project $ScopeProject

$IssueTypeDetails = Initialize-IssueTypeDetails -Self "MySelf" -Id "MyId" -Description "MyDescription" -IconUrl "MyIconUrl" -Name "MyName" -Subtask $false -AvatarId 0 -EntityId "MyEntityId" -HierarchyLevel 0 -Scope $IssueTypeIssueCreateMetadataScope

$SimpleLink = Initialize-SimpleLink -Id "MyId" -StyleClass "MyStyleClass" -IconClass "MyIconClass" -Label "MyLabel" -Title "MyTitle" -Href "MyHref" -Weight 0
$VersionIssuesStatusForFixVersion = Initialize-VersionIssuesStatusForFixVersion -Unmapped 0 -ToDo 0 -InProgress 0 -Done 0
$Version = Initialize-Version -Expand "MyExpand" -Self "MySelf" -Id "MyId" -Description "MyDescription" -Name "MyName" -Archived $false -Released $false -StartDate (Get-Date) -ReleaseDate (Get-Date) -Overdue $false -UserStartDate "MyUserStartDate" -UserReleaseDate "MyUserReleaseDate" -Project "MyProject" -ProjectId 0 -MoveUnfixedIssuesTo "MyMoveUnfixedIssuesTo" -Operations $SimpleLink -IssuesStatusForFixVersion $VersionIssuesStatusForFixVersion

$ProjectProjectCategory = Initialize-ProjectProjectCategory -Self "MySelf" -Id "MyId" -Name "MyName" -Description "MyDescription"

$SimplifiedHierarchyLevel = Initialize-SimplifiedHierarchyLevel -Id 0 -Name "MyName" -AboveLevelId 0 -BelowLevelId 0 -ProjectConfigurationId 0 -Level 0 -IssueTypeIds 0 -ExternalUuid "MyExternalUuid" -HierarchyLevelNumber 0
$ProjectIssueTypeHierarchy = Initialize-ProjectIssueTypeHierarchy -BaseLevelId 0 -Levels $SimplifiedHierarchyLevel

$ProjectPermissions = Initialize-ProjectPermissions -CanEdit $false
$ProjectInsight = Initialize-ProjectInsight -TotalIssueCount 0 -LastIssueUpdateTime (Get-Date)

$ProjectDeletedBy = Initialize-ProjectDeletedBy -Self "MySelf" -Key "MyKey" -AccountId "MyAccountId" -AccountType "atlassian" -Name "MyName" -EmailAddress "MyEmailAddress" -AvatarUrls $UserAvatarUrls -DisplayName "MyDisplayName" -Active $false -TimeZone "MyTimeZone" -Locale "MyLocale" -Groups $UserGroups -ApplicationRoles $UserApplicationRoles -Expand "MyExpand"

$ProjectArchivedBy = Initialize-ProjectArchivedBy -Self "MySelf" -Key "MyKey" -AccountId "MyAccountId" -AccountType "atlassian" -Name "MyName" -EmailAddress "MyEmailAddress" -AvatarUrls $UserAvatarUrls -DisplayName "MyDisplayName" -Active $false -TimeZone "MyTimeZone" -Locale "MyLocale" -Groups $UserGroups -ApplicationRoles $UserApplicationRoles -Expand "MyExpand"

$ProjectLandingPageInfo = Initialize-ProjectLandingPageInfo -Url "MyUrl" -ProjectKey "MyProjectKey" -ProjectType "MyProjectType" -Attributes @{ key_example = "MyInner" } -Simplified $false -BoardId 0 -BoardName "MyBoardName" -SimpleBoard $false -QueueId 0 -QueueName "MyQueueName" -QueueCategory "MyQueueCategory"
$SharePermissionProject = Initialize-SharePermissionProject -Expand "MyExpand" -Self "MySelf" -Id "MyId" -Key "MyKey" -Description "MyDescription" -Lead $ProjectLead -Components $ProjectComponent -IssueTypes $IssueTypeDetails -Url "MyUrl" -Email "MyEmail" -AssigneeType "PROJECT_LEAD" -Versions $null -Name "MyName" -Roles @{ key_example = "MyInner" } -AvatarUrls $ProjectDetailsAvatarUrls -ProjectCategory $ProjectProjectCategory -ProjectTypeKey "software" -Simplified $false -Style "classic" -Favourite $false -IsPrivate $false -IssueTypeHierarchy $ProjectIssueTypeHierarchy -Permissions $ProjectPermissions -Properties @{ key_example =  } -Uuid "MyUuid" -Insight $ProjectInsight -Deleted $false -RetentionTillDate (Get-Date) -DeletedDate (Get-Date) -DeletedBy $ProjectDeletedBy -Archived $false -ArchivedDate (Get-Date) -ArchivedBy $ProjectArchivedBy -LandingPageInfo $ProjectLandingPageInfo

$ProjectRoleUser = Initialize-ProjectRoleUser -AccountId "MyAccountId"
$ProjectRoleGroup = Initialize-ProjectRoleGroup -DisplayName "MyDisplayName" -Name "MyName" -GroupId "MyGroupId"
$RoleActor = Initialize-RoleActor -Id 0 -DisplayName "MyDisplayName" -Type "atlassian-group-role-actor" -Name "MyName" -AvatarUrl "MyAvatarUrl" -ActorUser $ProjectRoleUser -ActorGroup $ProjectRoleGroup

$ProjectRoleDetailsScope = Initialize-ProjectRoleDetailsScope -Type "PROJECT" -Project $ScopeProject

$SharePermissionRole = Initialize-SharePermissionRole -Self "MySelf" -Name "MyName" -Id 0 -Description "MyDescription" -Actors $RoleActor -Scope $ProjectRoleDetailsScope -TranslatedName "MyTranslatedName" -CurrentUserRole $false -Default $false -Admin $false -RoleConfigurable $false

$SharePermissionGroup = Initialize-SharePermissionGroup -Name "MyName" -GroupId "MyGroupId" -Self "MySelf"

$UserBeanAvatarUrls = Initialize-UserBeanAvatarUrls -Var16x16 "MyVar16x16" -Var24x24 "MyVar24x24" -Var32x32 "MyVar32x32" -Var48x48 "MyVar48x48"
$SharePermissionUser = Initialize-SharePermissionUser -Key "MyKey" -Self "MySelf" -Name "MyName" -DisplayName "MyDisplayName" -Active $false -AccountId "MyAccountId" -AvatarUrls $UserBeanAvatarUrls

$SharePermission = Initialize-SharePermission -Id 0 -Type "user" -Project $SharePermissionProject -Role $SharePermissionRole -Group $SharePermissionGroup -User $SharePermissionUser

$DashboardDetails = Initialize-DashboardDetails -Name "MyName" -Description "MyDescription" -SharePermissions $SharePermission -EditPermissions $SharePermission # DashboardDetails | Replacement dashboard details.

# Update dashboard
try {
    $Result = Update-Dashboard -Id $Id -DashboardDetails $DashboardDetails
} catch {
    Write-Host ("Exception occurred when calling Update-Dashboard: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The ID of the dashboard to update. | 
 **DashboardDetails** | [**DashboardDetails**](DashboardDetails.md)| Replacement dashboard details. | 

### Return type

[**Dashboard**](Dashboard.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Update-Gadget"></a>
# **Update-Gadget**
> AnyType Update-Gadget<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DashboardId] <Int64><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-GadgetId] <Int64><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DashboardGadgetUpdateRequest] <PSCustomObject><br>

Update gadget on dashboard

Changes the title, position, and color of the gadget on a dashboard.  **[Permissions](#permissions) required:** None.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$DashboardId = 789 # Int64 | The ID of the dashboard.
$GadgetId = 789 # Int64 | The ID of the gadget.
$DashboardGadgetUpdateRequestPosition = Initialize-DashboardGadgetUpdateRequestPosition -TheRowPositionOfTheGadget 0 -TheColumnPositionOfTheGadget 0
$DashboardGadgetUpdateRequest = Initialize-DashboardGadgetUpdateRequest -Title "MyTitle" -Color "MyColor" -Position $DashboardGadgetUpdateRequestPosition # DashboardGadgetUpdateRequest | 

# Update gadget on dashboard
try {
    $Result = Update-Gadget -DashboardId $DashboardId -GadgetId $GadgetId -DashboardGadgetUpdateRequest $DashboardGadgetUpdateRequest
} catch {
    Write-Host ("Exception occurred when calling Update-Gadget: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **DashboardId** | **Int64**| The ID of the dashboard. | 
 **GadgetId** | **Int64**| The ID of the gadget. | 
 **DashboardGadgetUpdateRequest** | [**DashboardGadgetUpdateRequest**](DashboardGadgetUpdateRequest.md)|  | 

### Return type

[**AnyType**](AnyType.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

