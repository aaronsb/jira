# PSJira.PSJira/Api.FiltersApi

All URIs are relative to *https://your-domain.atlassian.net*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Rename-FilterOwner**](FiltersApi.md#Rename-FilterOwner) | **PUT** /rest/api/3/filter/{id}/owner | Change filter owner
[**New-Filter**](FiltersApi.md#New-Filter) | **POST** /rest/api/3/filter | Create filter
[**Invoke-DeleteFavouriteForFilter**](FiltersApi.md#Invoke-DeleteFavouriteForFilter) | **DELETE** /rest/api/3/filter/{id}/favourite | Remove filter as favorite
[**Invoke-DeleteFilter**](FiltersApi.md#Invoke-DeleteFilter) | **DELETE** /rest/api/3/filter/{id} | Delete filter
[**Get-Columns**](FiltersApi.md#Get-Columns) | **GET** /rest/api/3/filter/{id}/columns | Get columns
[**Get-FavouriteFilters**](FiltersApi.md#Get-FavouriteFilters) | **GET** /rest/api/3/filter/favourite | Get favorite filters
[**Get-Filter**](FiltersApi.md#Get-Filter) | **GET** /rest/api/3/filter/{id} | Get filter
[**Get-Filters**](FiltersApi.md#Get-Filters) | **GET** /rest/api/3/filter | Get filters
[**Get-FiltersPaginated**](FiltersApi.md#Get-FiltersPaginated) | **GET** /rest/api/3/filter/search | Search for filters
[**Get-MyFilters**](FiltersApi.md#Get-MyFilters) | **GET** /rest/api/3/filter/my | Get my filters
[**Reset-Columns**](FiltersApi.md#Reset-Columns) | **DELETE** /rest/api/3/filter/{id}/columns | Reset columns
[**Set-Columns**](FiltersApi.md#Set-Columns) | **PUT** /rest/api/3/filter/{id}/columns | Set columns
[**Set-FavouriteForFilter**](FiltersApi.md#Set-FavouriteForFilter) | **PUT** /rest/api/3/filter/{id}/favourite | Add filter as favorite
[**Update-Filter**](FiltersApi.md#Update-Filter) | **PUT** /rest/api/3/filter/{id} | Update filter


<a name="Rename-FilterOwner"></a>
# **Rename-FilterOwner**
> AnyType Rename-FilterOwner<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int64><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ChangeFilterOwner] <PSCustomObject><br>

Change filter owner

Changes the owner of the filter.  **[Permissions](#permissions) required:** Permission to access Jira. However, the user must own the filter or have the *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$Id = 789 # Int64 | The ID of the filter to update.
$ChangeFilterOwner = Initialize-ChangeFilterOwner -AccountId "MyAccountId" # ChangeFilterOwner | The account ID of the new owner of the filter.

# Change filter owner
try {
    $Result = Rename-FilterOwner -Id $Id -ChangeFilterOwner $ChangeFilterOwner
} catch {
    Write-Host ("Exception occurred when calling Rename-FilterOwner: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int64**| The ID of the filter to update. | 
 **ChangeFilterOwner** | [**ChangeFilterOwner**](ChangeFilterOwner.md)| The account ID of the new owner of the filter. | 

### Return type

[**AnyType**](AnyType.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="New-Filter"></a>
# **New-Filter**
> ModelFilter New-Filter<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ModelFilter] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Expand] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-OverrideSharePermissions] <System.Nullable[Boolean]><br>

Create filter

Creates a filter. The filter is shared according to the [default share scope](#api-rest-api-3-filter-post). The filter is not selected as a favorite.  **[Permissions](#permissions) required:** Permission to access Jira.

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

$FilterOwner = Initialize-FilterOwner -Self "MySelf" -Key "MyKey" -AccountId "MyAccountId" -AccountType "atlassian" -Name "MyName" -EmailAddress "MyEmailAddress" -AvatarUrls $UserAvatarUrls -DisplayName "MyDisplayName" -Active $false -TimeZone "MyTimeZone" -Locale "MyLocale" -Groups $UserGroups -ApplicationRoles $UserApplicationRoles -Expand "MyExpand"

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

$User = Initialize-User -Self "MySelf" -Key "MyKey" -AccountId "MyAccountId" -AccountType "atlassian" -Name "MyName" -EmailAddress "MyEmailAddress" -AvatarUrls $UserAvatarUrls -DisplayName "MyDisplayName" -Active $false -TimeZone "MyTimeZone" -Locale "MyLocale" -Groups $UserGroups -ApplicationRoles $UserApplicationRoles -Expand "MyExpand"

$FilterSharedUsers = Initialize-FilterSharedUsers -Size 0 -Items $User -MaxResults 0 -StartIndex 0 -EndIndex 0

$FilterSubscriptionUser = Initialize-FilterSubscriptionUser -Self "MySelf" -Key "MyKey" -AccountId "MyAccountId" -AccountType "atlassian" -Name "MyName" -EmailAddress "MyEmailAddress" -AvatarUrls $UserAvatarUrls -DisplayName "MyDisplayName" -Active $false -TimeZone "MyTimeZone" -Locale "MyLocale" -Groups $UserGroups -ApplicationRoles $UserApplicationRoles -Expand "MyExpand"

$FilterSubscriptionGroup = Initialize-FilterSubscriptionGroup -Name "MyName" -GroupId "MyGroupId" -Self "MySelf"
$FilterSubscription = Initialize-FilterSubscription -Id 0 -User $FilterSubscriptionUser -Group $FilterSubscriptionGroup

$FilterSubscriptions = Initialize-FilterSubscriptions -Size 0 -Items $FilterSubscription -MaxResults 0 -StartIndex 0 -EndIndex 0

$ModelFilter = Initialize-ModelFilter -Self "MySelf" -Id "MyId" -Name "MyName" -Description "MyDescription" -Owner $FilterOwner -Jql "MyJql" -ViewUrl "MyViewUrl" -SearchUrl "MySearchUrl" -Favourite $false -FavouritedCount 0 -SharePermissions $SharePermission -EditPermissions $SharePermission -SharedUsers $FilterSharedUsers -Subscriptions $FilterSubscriptions # ModelFilter | The filter to create.
$Expand = "MyExpand" # String | Use [expand](#expansion) to include additional information about filter in the response. This parameter accepts a comma-separated list. Expand options include:   *  `sharedUsers` Returns the users that the filter is shared with. This includes users that can browse projects that the filter is shared with. If you don't specify `sharedUsers`, then the `sharedUsers` object is returned but it doesn't list any users. The list of users returned is limited to 1000, to access additional users append `[start-index:end-index]` to the expand request. For example, to access the next 1000 users, use `?expand=sharedUsers[1001:2000]`.  *  `subscriptions` Returns the users that are subscribed to the filter. If you don't specify `subscriptions`, the `subscriptions` object is returned but it doesn't list any subscriptions. The list of subscriptions returned is limited to 1000, to access additional subscriptions append `[start-index:end-index]` to the expand request. For example, to access the next 1000 subscriptions, use `?expand=subscriptions[1001:2000]`. (optional)
$OverrideSharePermissions = $true # Boolean | EXPERIMENTAL: Whether share permissions are overridden to enable filters with any share permissions to be created. Available to users with *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg). (optional) (default to $false)

# Create filter
try {
    $Result = New-Filter -ModelFilter $ModelFilter -Expand $Expand -OverrideSharePermissions $OverrideSharePermissions
} catch {
    Write-Host ("Exception occurred when calling New-Filter: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ModelFilter** | [**ModelFilter**](ModelFilter.md)| The filter to create. | 
 **Expand** | **String**| Use [expand](#expansion) to include additional information about filter in the response. This parameter accepts a comma-separated list. Expand options include:   *  &#x60;sharedUsers&#x60; Returns the users that the filter is shared with. This includes users that can browse projects that the filter is shared with. If you don&#39;t specify &#x60;sharedUsers&#x60;, then the &#x60;sharedUsers&#x60; object is returned but it doesn&#39;t list any users. The list of users returned is limited to 1000, to access additional users append &#x60;[start-index:end-index]&#x60; to the expand request. For example, to access the next 1000 users, use &#x60;?expand&#x3D;sharedUsers[1001:2000]&#x60;.  *  &#x60;subscriptions&#x60; Returns the users that are subscribed to the filter. If you don&#39;t specify &#x60;subscriptions&#x60;, the &#x60;subscriptions&#x60; object is returned but it doesn&#39;t list any subscriptions. The list of subscriptions returned is limited to 1000, to access additional subscriptions append &#x60;[start-index:end-index]&#x60; to the expand request. For example, to access the next 1000 subscriptions, use &#x60;?expand&#x3D;subscriptions[1001:2000]&#x60;. | [optional] 
 **OverrideSharePermissions** | **Boolean**| EXPERIMENTAL: Whether share permissions are overridden to enable filters with any share permissions to be created. Available to users with *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg). | [optional] [default to $false]

### Return type

[**ModelFilter**](ModelFilter.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-DeleteFavouriteForFilter"></a>
# **Invoke-DeleteFavouriteForFilter**
> ModelFilter Invoke-DeleteFavouriteForFilter<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int64><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Expand] <String><br>

Remove filter as favorite

Removes a filter as a favorite for the user. Note that this operation only removes filters visible to the user from the user's favorites list. For example, if the user favorites a public filter that is subsequently made private (and is therefore no longer visible on their favorites list) they cannot remove it from their favorites list.  **[Permissions](#permissions) required:** Permission to access Jira.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$Id = 789 # Int64 | The ID of the filter.
$Expand = "MyExpand" # String | Use [expand](#expansion) to include additional information about filter in the response. This parameter accepts a comma-separated list. Expand options include:   *  `sharedUsers` Returns the users that the filter is shared with. This includes users that can browse projects that the filter is shared with. If you don't specify `sharedUsers`, then the `sharedUsers` object is returned but it doesn't list any users. The list of users returned is limited to 1000, to access additional users append `[start-index:end-index]` to the expand request. For example, to access the next 1000 users, use `?expand=sharedUsers[1001:2000]`.  *  `subscriptions` Returns the users that are subscribed to the filter. If you don't specify `subscriptions`, the `subscriptions` object is returned but it doesn't list any subscriptions. The list of subscriptions returned is limited to 1000, to access additional subscriptions append `[start-index:end-index]` to the expand request. For example, to access the next 1000 subscriptions, use `?expand=subscriptions[1001:2000]`. (optional)

# Remove filter as favorite
try {
    $Result = Invoke-DeleteFavouriteForFilter -Id $Id -Expand $Expand
} catch {
    Write-Host ("Exception occurred when calling Invoke-DeleteFavouriteForFilter: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int64**| The ID of the filter. | 
 **Expand** | **String**| Use [expand](#expansion) to include additional information about filter in the response. This parameter accepts a comma-separated list. Expand options include:   *  &#x60;sharedUsers&#x60; Returns the users that the filter is shared with. This includes users that can browse projects that the filter is shared with. If you don&#39;t specify &#x60;sharedUsers&#x60;, then the &#x60;sharedUsers&#x60; object is returned but it doesn&#39;t list any users. The list of users returned is limited to 1000, to access additional users append &#x60;[start-index:end-index]&#x60; to the expand request. For example, to access the next 1000 users, use &#x60;?expand&#x3D;sharedUsers[1001:2000]&#x60;.  *  &#x60;subscriptions&#x60; Returns the users that are subscribed to the filter. If you don&#39;t specify &#x60;subscriptions&#x60;, the &#x60;subscriptions&#x60; object is returned but it doesn&#39;t list any subscriptions. The list of subscriptions returned is limited to 1000, to access additional subscriptions append &#x60;[start-index:end-index]&#x60; to the expand request. For example, to access the next 1000 subscriptions, use &#x60;?expand&#x3D;subscriptions[1001:2000]&#x60;. | [optional] 

### Return type

[**ModelFilter**](ModelFilter.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-DeleteFilter"></a>
# **Invoke-DeleteFilter**
> void Invoke-DeleteFilter<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int64><br>

Delete filter

Delete a filter.  **[Permissions](#permissions) required:** Permission to access Jira, however filters can only be deleted by the creator of the filter or a user with *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$Id = 789 # Int64 | The ID of the filter to delete.

# Delete filter
try {
    $Result = Invoke-DeleteFilter -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Invoke-DeleteFilter: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int64**| The ID of the filter to delete. | 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-Columns"></a>
# **Get-Columns**
> ColumnItem[] Get-Columns<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int64><br>

Get columns

Returns the columns configured for a filter. The column configuration is used when the filter's results are viewed in *List View* with the *Columns* set to *Filter*.  This operation can be accessed anonymously.  **[Permissions](#permissions) required:** None, however, column details are only returned for:   *  filters owned by the user.  *  filters shared with a group that the user is a member of.  *  filters shared with a private project that the user has *Browse projects* [project permission](https://confluence.atlassian.com/x/yodKLg) for.  *  filters shared with a public project.  *  filters shared with the public.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$Id = 789 # Int64 | The ID of the filter.

# Get columns
try {
    $Result = Get-Columns -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-Columns: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int64**| The ID of the filter. | 

### Return type

[**ColumnItem[]**](ColumnItem.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-FavouriteFilters"></a>
# **Get-FavouriteFilters**
> ModelFilter[] Get-FavouriteFilters<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Expand] <String><br>

Get favorite filters

Returns the visible favorite filters of the user.  This operation can be accessed anonymously.  **[Permissions](#permissions) required:** A favorite filter is only visible to the user where the filter is:   *  owned by the user.  *  shared with a group that the user is a member of.  *  shared with a private project that the user has *Browse projects* [project permission](https://confluence.atlassian.com/x/yodKLg) for.  *  shared with a public project.  *  shared with the public.  For example, if the user favorites a public filter that is subsequently made private that filter is not returned by this operation.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$Expand = "MyExpand" # String | Use [expand](#expansion) to include additional information about filter in the response. This parameter accepts a comma-separated list. Expand options include:   *  `sharedUsers` Returns the users that the filter is shared with. This includes users that can browse projects that the filter is shared with. If you don't specify `sharedUsers`, then the `sharedUsers` object is returned but it doesn't list any users. The list of users returned is limited to 1000, to access additional users append `[start-index:end-index]` to the expand request. For example, to access the next 1000 users, use `?expand=sharedUsers[1001:2000]`.  *  `subscriptions` Returns the users that are subscribed to the filter. If you don't specify `subscriptions`, the `subscriptions` object is returned but it doesn't list any subscriptions. The list of subscriptions returned is limited to 1000, to access additional subscriptions append `[start-index:end-index]` to the expand request. For example, to access the next 1000 subscriptions, use `?expand=subscriptions[1001:2000]`. (optional)

# Get favorite filters
try {
    $Result = Get-FavouriteFilters -Expand $Expand
} catch {
    Write-Host ("Exception occurred when calling Get-FavouriteFilters: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Expand** | **String**| Use [expand](#expansion) to include additional information about filter in the response. This parameter accepts a comma-separated list. Expand options include:   *  &#x60;sharedUsers&#x60; Returns the users that the filter is shared with. This includes users that can browse projects that the filter is shared with. If you don&#39;t specify &#x60;sharedUsers&#x60;, then the &#x60;sharedUsers&#x60; object is returned but it doesn&#39;t list any users. The list of users returned is limited to 1000, to access additional users append &#x60;[start-index:end-index]&#x60; to the expand request. For example, to access the next 1000 users, use &#x60;?expand&#x3D;sharedUsers[1001:2000]&#x60;.  *  &#x60;subscriptions&#x60; Returns the users that are subscribed to the filter. If you don&#39;t specify &#x60;subscriptions&#x60;, the &#x60;subscriptions&#x60; object is returned but it doesn&#39;t list any subscriptions. The list of subscriptions returned is limited to 1000, to access additional subscriptions append &#x60;[start-index:end-index]&#x60; to the expand request. For example, to access the next 1000 subscriptions, use &#x60;?expand&#x3D;subscriptions[1001:2000]&#x60;. | [optional] 

### Return type

[**ModelFilter[]**](ModelFilter.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-Filter"></a>
# **Get-Filter**
> ModelFilter Get-Filter<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int64><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Expand] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-OverrideSharePermissions] <System.Nullable[Boolean]><br>

Get filter

Returns a filter.  This operation can be accessed anonymously.  **[Permissions](#permissions) required:** None, however, the filter is only returned where it is:   *  owned by the user.  *  shared with a group that the user is a member of.  *  shared with a private project that the user has *Browse projects* [project permission](https://confluence.atlassian.com/x/yodKLg) for.  *  shared with a public project.  *  shared with the public.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$Id = 789 # Int64 | The ID of the filter to return.
$Expand = "MyExpand" # String | Use [expand](#expansion) to include additional information about filter in the response. This parameter accepts a comma-separated list. Expand options include:   *  `sharedUsers` Returns the users that the filter is shared with. This includes users that can browse projects that the filter is shared with. If you don't specify `sharedUsers`, then the `sharedUsers` object is returned but it doesn't list any users. The list of users returned is limited to 1000, to access additional users append `[start-index:end-index]` to the expand request. For example, to access the next 1000 users, use `?expand=sharedUsers[1001:2000]`.  *  `subscriptions` Returns the users that are subscribed to the filter. If you don't specify `subscriptions`, the `subscriptions` object is returned but it doesn't list any subscriptions. The list of subscriptions returned is limited to 1000, to access additional subscriptions append `[start-index:end-index]` to the expand request. For example, to access the next 1000 subscriptions, use `?expand=subscriptions[1001:2000]`. (optional)
$OverrideSharePermissions = $true # Boolean | EXPERIMENTAL: Whether share permissions are overridden to enable filters with any share permissions to be returned. Available to users with *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg). (optional) (default to $false)

# Get filter
try {
    $Result = Get-Filter -Id $Id -Expand $Expand -OverrideSharePermissions $OverrideSharePermissions
} catch {
    Write-Host ("Exception occurred when calling Get-Filter: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int64**| The ID of the filter to return. | 
 **Expand** | **String**| Use [expand](#expansion) to include additional information about filter in the response. This parameter accepts a comma-separated list. Expand options include:   *  &#x60;sharedUsers&#x60; Returns the users that the filter is shared with. This includes users that can browse projects that the filter is shared with. If you don&#39;t specify &#x60;sharedUsers&#x60;, then the &#x60;sharedUsers&#x60; object is returned but it doesn&#39;t list any users. The list of users returned is limited to 1000, to access additional users append &#x60;[start-index:end-index]&#x60; to the expand request. For example, to access the next 1000 users, use &#x60;?expand&#x3D;sharedUsers[1001:2000]&#x60;.  *  &#x60;subscriptions&#x60; Returns the users that are subscribed to the filter. If you don&#39;t specify &#x60;subscriptions&#x60;, the &#x60;subscriptions&#x60; object is returned but it doesn&#39;t list any subscriptions. The list of subscriptions returned is limited to 1000, to access additional subscriptions append &#x60;[start-index:end-index]&#x60; to the expand request. For example, to access the next 1000 subscriptions, use &#x60;?expand&#x3D;subscriptions[1001:2000]&#x60;. | [optional] 
 **OverrideSharePermissions** | **Boolean**| EXPERIMENTAL: Whether share permissions are overridden to enable filters with any share permissions to be returned. Available to users with *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg). | [optional] [default to $false]

### Return type

[**ModelFilter**](ModelFilter.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-Filters"></a>
# **Get-Filters**
> ModelFilter[] Get-Filters<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Expand] <String><br>

Get filters

Returns all filters. Deprecated, use [ Search for filters](#api-rest-api-3-filter-search-get) that supports search and pagination.  This operation can be accessed anonymously.  **[Permissions](#permissions) required:** None, however, only the following filters are returned:   *  filters owned by the user.  *  filters shared with a group that the user is a member of.  *  filters shared with a private project that the user has *Browse projects* [project permission](https://confluence.atlassian.com/x/yodKLg) for.  *  filters shared with a public project.  *  filters shared with the public.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$Expand = "MyExpand" # String | Use [expand](#expansion) to include additional information about filter in the response. This parameter accepts a comma-separated list. Expand options include:   *  `sharedUsers` Returns the users that the filter is shared with. This includes users that can browse projects that the filter is shared with. If you don't specify `sharedUsers`, then the `sharedUsers` object is returned but it doesn't list any users. The list of users returned is limited to 1000, to access additional users append `[start-index:end-index]` to the expand request. For example, to access the next 1000 users, use `?expand=sharedUsers[1001:2000]`.  *  `subscriptions` Returns the users that are subscribed to the filter. If you don't specify `subscriptions`, the `subscriptions` object is returned but it doesn't list any subscriptions. The list of subscriptions returned is limited to 1000, to access additional subscriptions append `[start-index:end-index]` to the expand request. For example, to access the next 1000 subscriptions, use `?expand=subscriptions[1001:2000]`. (optional)

# Get filters
try {
    $Result = Get-Filters -Expand $Expand
} catch {
    Write-Host ("Exception occurred when calling Get-Filters: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Expand** | **String**| Use [expand](#expansion) to include additional information about filter in the response. This parameter accepts a comma-separated list. Expand options include:   *  &#x60;sharedUsers&#x60; Returns the users that the filter is shared with. This includes users that can browse projects that the filter is shared with. If you don&#39;t specify &#x60;sharedUsers&#x60;, then the &#x60;sharedUsers&#x60; object is returned but it doesn&#39;t list any users. The list of users returned is limited to 1000, to access additional users append &#x60;[start-index:end-index]&#x60; to the expand request. For example, to access the next 1000 users, use &#x60;?expand&#x3D;sharedUsers[1001:2000]&#x60;.  *  &#x60;subscriptions&#x60; Returns the users that are subscribed to the filter. If you don&#39;t specify &#x60;subscriptions&#x60;, the &#x60;subscriptions&#x60; object is returned but it doesn&#39;t list any subscriptions. The list of subscriptions returned is limited to 1000, to access additional subscriptions append &#x60;[start-index:end-index]&#x60; to the expand request. For example, to access the next 1000 subscriptions, use &#x60;?expand&#x3D;subscriptions[1001:2000]&#x60;. | [optional] 

### Return type

[**ModelFilter[]**](ModelFilter.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-FiltersPaginated"></a>
# **Get-FiltersPaginated**
> PageBeanFilterDetails Get-FiltersPaginated<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FilterName] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AccountId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Owner] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Groupname] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-GroupId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProjectId] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <System.Nullable[Int64][]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-OrderBy] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartAt] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-MaxResults] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Expand] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-OverrideSharePermissions] <System.Nullable[Boolean]><br>

Search for filters

Returns a [paginated](#pagination) list of filters. Use this operation to get:   *  specific filters, by defining `id` only.  *  filters that match all of the specified attributes. For example, all filters for a user with a particular word in their name. When multiple attributes are specified only filters matching all attributes are returned.  This operation can be accessed anonymously.  **[Permissions](#permissions) required:** None, however, only the following filters that match the query parameters are returned:   *  filters owned by the user.  *  filters shared with a group that the user is a member of.  *  filters shared with a private project that the user has *Browse projects* [project permission](https://confluence.atlassian.com/x/yodKLg) for.  *  filters shared with a public project.  *  filters shared with the public.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$FilterName = "MyFilterName" # String | String used to perform a case-insensitive partial match with `name`. (optional)
$AccountId = "MyAccountId" # String | User account ID used to return filters with the matching `owner.accountId`. This parameter cannot be used with `owner`. (optional)
$Owner = "MyOwner" # String | This parameter is deprecated because of privacy changes. Use `accountId` instead. See the [migration guide](https://developer.atlassian.com/cloud/jira/platform/deprecation-notice-user-privacy-api-migration-guide/) for details. User name used to return filters with the matching `owner.name`. This parameter cannot be used with `accountId`. (optional)
$Groupname = "MyGroupname" # String | As a group's name can change, use of `groupId` is recommended to identify a group. Group name used to returns filters that are shared with a group that matches `sharePermissions.group.groupname`. This parameter cannot be used with the `groupId` parameter. (optional)
$GroupId = "MyGroupId" # String | Group ID used to returns filters that are shared with a group that matches `sharePermissions.group.groupId`. This parameter cannot be used with the `groupname` parameter. (optional)
$ProjectId = 789 # Int64 | Project ID used to returns filters that are shared with a project that matches `sharePermissions.project.id`. (optional)
$Id = 0 # Int64[] | The list of filter IDs. To include multiple IDs, provide an ampersand-separated list. For example, `id=10000&id=10001`. Do not exceed 200 filter IDs. (optional)
$OrderBy = "description" # String | [Order](#ordering) the results by a field:   *  `description` Sorts by filter description. Note that this sorting works independently of whether the expand to display the description field is in use.  *  `favourite_count` Sorts by the count of how many users have this filter as a favorite.  *  `is_favourite` Sorts by whether the filter is marked as a favorite.  *  `id` Sorts by filter ID.  *  `name` Sorts by filter name.  *  `owner` Sorts by the ID of the filter owner.  *  `is_shared` Sorts by whether the filter is shared. (optional) (default to "name")
$StartAt = 789 # Int64 | The index of the first item to return in a page of results (page offset). (optional) (default to 0)
$MaxResults = 56 # Int32 | The maximum number of items to return per page. (optional) (default to 50)
$Expand = "MyExpand" # String | Use [expand](#expansion) to include additional information about filter in the response. This parameter accepts a comma-separated list. Expand options include:   *  `description` Returns the description of the filter.  *  `favourite` Returns an indicator of whether the user has set the filter as a favorite.  *  `favouritedCount` Returns a count of how many users have set this filter as a favorite.  *  `jql` Returns the JQL query that the filter uses.  *  `owner` Returns the owner of the filter.  *  `searchUrl` Returns a URL to perform the filter's JQL query.  *  `sharePermissions` Returns the share permissions defined for the filter.  *  `editPermissions` Returns the edit permissions defined for the filter.  *  `isWritable` Returns whether the current user has permission to edit the filter.  *  `subscriptions` Returns the users that are subscribed to the filter.  *  `viewUrl` Returns a URL to view the filter. (optional)
$OverrideSharePermissions = $true # Boolean | EXPERIMENTAL: Whether share permissions are overridden to enable filters with any share permissions to be returned. Available to users with *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg). (optional) (default to $false)

# Search for filters
try {
    $Result = Get-FiltersPaginated -FilterName $FilterName -AccountId $AccountId -Owner $Owner -Groupname $Groupname -GroupId $GroupId -ProjectId $ProjectId -Id $Id -OrderBy $OrderBy -StartAt $StartAt -MaxResults $MaxResults -Expand $Expand -OverrideSharePermissions $OverrideSharePermissions
} catch {
    Write-Host ("Exception occurred when calling Get-FiltersPaginated: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **FilterName** | **String**| String used to perform a case-insensitive partial match with &#x60;name&#x60;. | [optional] 
 **AccountId** | **String**| User account ID used to return filters with the matching &#x60;owner.accountId&#x60;. This parameter cannot be used with &#x60;owner&#x60;. | [optional] 
 **Owner** | **String**| This parameter is deprecated because of privacy changes. Use &#x60;accountId&#x60; instead. See the [migration guide](https://developer.atlassian.com/cloud/jira/platform/deprecation-notice-user-privacy-api-migration-guide/) for details. User name used to return filters with the matching &#x60;owner.name&#x60;. This parameter cannot be used with &#x60;accountId&#x60;. | [optional] 
 **Groupname** | **String**| As a group&#39;s name can change, use of &#x60;groupId&#x60; is recommended to identify a group. Group name used to returns filters that are shared with a group that matches &#x60;sharePermissions.group.groupname&#x60;. This parameter cannot be used with the &#x60;groupId&#x60; parameter. | [optional] 
 **GroupId** | **String**| Group ID used to returns filters that are shared with a group that matches &#x60;sharePermissions.group.groupId&#x60;. This parameter cannot be used with the &#x60;groupname&#x60; parameter. | [optional] 
 **ProjectId** | **Int64**| Project ID used to returns filters that are shared with a project that matches &#x60;sharePermissions.project.id&#x60;. | [optional] 
 **Id** | [**Int64[]**](Int64.md)| The list of filter IDs. To include multiple IDs, provide an ampersand-separated list. For example, &#x60;id&#x3D;10000&amp;id&#x3D;10001&#x60;. Do not exceed 200 filter IDs. | [optional] 
 **OrderBy** | **String**| [Order](#ordering) the results by a field:   *  &#x60;description&#x60; Sorts by filter description. Note that this sorting works independently of whether the expand to display the description field is in use.  *  &#x60;favourite_count&#x60; Sorts by the count of how many users have this filter as a favorite.  *  &#x60;is_favourite&#x60; Sorts by whether the filter is marked as a favorite.  *  &#x60;id&#x60; Sorts by filter ID.  *  &#x60;name&#x60; Sorts by filter name.  *  &#x60;owner&#x60; Sorts by the ID of the filter owner.  *  &#x60;is_shared&#x60; Sorts by whether the filter is shared. | [optional] [default to &quot;name&quot;]
 **StartAt** | **Int64**| The index of the first item to return in a page of results (page offset). | [optional] [default to 0]
 **MaxResults** | **Int32**| The maximum number of items to return per page. | [optional] [default to 50]
 **Expand** | **String**| Use [expand](#expansion) to include additional information about filter in the response. This parameter accepts a comma-separated list. Expand options include:   *  &#x60;description&#x60; Returns the description of the filter.  *  &#x60;favourite&#x60; Returns an indicator of whether the user has set the filter as a favorite.  *  &#x60;favouritedCount&#x60; Returns a count of how many users have set this filter as a favorite.  *  &#x60;jql&#x60; Returns the JQL query that the filter uses.  *  &#x60;owner&#x60; Returns the owner of the filter.  *  &#x60;searchUrl&#x60; Returns a URL to perform the filter&#39;s JQL query.  *  &#x60;sharePermissions&#x60; Returns the share permissions defined for the filter.  *  &#x60;editPermissions&#x60; Returns the edit permissions defined for the filter.  *  &#x60;isWritable&#x60; Returns whether the current user has permission to edit the filter.  *  &#x60;subscriptions&#x60; Returns the users that are subscribed to the filter.  *  &#x60;viewUrl&#x60; Returns a URL to view the filter. | [optional] 
 **OverrideSharePermissions** | **Boolean**| EXPERIMENTAL: Whether share permissions are overridden to enable filters with any share permissions to be returned. Available to users with *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg). | [optional] [default to $false]

### Return type

[**PageBeanFilterDetails**](PageBeanFilterDetails.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-MyFilters"></a>
# **Get-MyFilters**
> ModelFilter[] Get-MyFilters<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Expand] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IncludeFavourites] <System.Nullable[Boolean]><br>

Get my filters

Returns the filters owned by the user. If `includeFavourites` is `true`, the user's visible favorite filters are also returned.  **[Permissions](#permissions) required:** Permission to access Jira, however, a favorite filters is only visible to the user where the filter is:   *  owned by the user.  *  shared with a group that the user is a member of.  *  shared with a private project that the user has *Browse projects* [project permission](https://confluence.atlassian.com/x/yodKLg) for.  *  shared with a public project.  *  shared with the public.  For example, if the user favorites a public filter that is subsequently made private that filter is not returned by this operation.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$Expand = "MyExpand" # String | Use [expand](#expansion) to include additional information about filter in the response. This parameter accepts a comma-separated list. Expand options include:   *  `sharedUsers` Returns the users that the filter is shared with. This includes users that can browse projects that the filter is shared with. If you don't specify `sharedUsers`, then the `sharedUsers` object is returned but it doesn't list any users. The list of users returned is limited to 1000, to access additional users append `[start-index:end-index]` to the expand request. For example, to access the next 1000 users, use `?expand=sharedUsers[1001:2000]`.  *  `subscriptions` Returns the users that are subscribed to the filter. If you don't specify `subscriptions`, the `subscriptions` object is returned but it doesn't list any subscriptions. The list of subscriptions returned is limited to 1000, to access additional subscriptions append `[start-index:end-index]` to the expand request. For example, to access the next 1000 subscriptions, use `?expand=subscriptions[1001:2000]`. (optional)
$IncludeFavourites = $true # Boolean | Include the user's favorite filters in the response. (optional) (default to $false)

# Get my filters
try {
    $Result = Get-MyFilters -Expand $Expand -IncludeFavourites $IncludeFavourites
} catch {
    Write-Host ("Exception occurred when calling Get-MyFilters: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Expand** | **String**| Use [expand](#expansion) to include additional information about filter in the response. This parameter accepts a comma-separated list. Expand options include:   *  &#x60;sharedUsers&#x60; Returns the users that the filter is shared with. This includes users that can browse projects that the filter is shared with. If you don&#39;t specify &#x60;sharedUsers&#x60;, then the &#x60;sharedUsers&#x60; object is returned but it doesn&#39;t list any users. The list of users returned is limited to 1000, to access additional users append &#x60;[start-index:end-index]&#x60; to the expand request. For example, to access the next 1000 users, use &#x60;?expand&#x3D;sharedUsers[1001:2000]&#x60;.  *  &#x60;subscriptions&#x60; Returns the users that are subscribed to the filter. If you don&#39;t specify &#x60;subscriptions&#x60;, the &#x60;subscriptions&#x60; object is returned but it doesn&#39;t list any subscriptions. The list of subscriptions returned is limited to 1000, to access additional subscriptions append &#x60;[start-index:end-index]&#x60; to the expand request. For example, to access the next 1000 subscriptions, use &#x60;?expand&#x3D;subscriptions[1001:2000]&#x60;. | [optional] 
 **IncludeFavourites** | **Boolean**| Include the user&#39;s favorite filters in the response. | [optional] [default to $false]

### Return type

[**ModelFilter[]**](ModelFilter.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Reset-Columns"></a>
# **Reset-Columns**
> void Reset-Columns<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int64><br>

Reset columns

Reset the user's column configuration for the filter to the default.  **[Permissions](#permissions) required:** Permission to access Jira, however, columns are only reset for:   *  filters owned by the user.  *  filters shared with a group that the user is a member of.  *  filters shared with a private project that the user has *Browse projects* [project permission](https://confluence.atlassian.com/x/yodKLg) for.  *  filters shared with a public project.  *  filters shared with the public.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$Id = 789 # Int64 | The ID of the filter.

# Reset columns
try {
    $Result = Reset-Columns -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Reset-Columns: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int64**| The ID of the filter. | 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Set-Columns"></a>
# **Set-Columns**
> AnyType Set-Columns<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int64><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RequestBody] <String[]><br>

Set columns

Sets the columns for a filter. Only navigable fields can be set as columns. Use [Get fields](#api-rest-api-3-field-get) to get the list fields in Jira. A navigable field has `navigable` set to `true`.  The parameters for this resource are expressed as HTML form data. For example, in curl:  `curl -X PUT -d columns=summary -d columns=description https://your-domain.atlassian.net/rest/api/3/filter/10000/columns`  **[Permissions](#permissions) required:** Permission to access Jira, however, columns are only set for:   *  filters owned by the user.  *  filters shared with a group that the user is a member of.  *  filters shared with a private project that the user has *Browse projects* [project permission](https://confluence.atlassian.com/x/yodKLg) for.  *  filters shared with a public project.  *  filters shared with the public.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$Id = 789 # Int64 | The ID of the filter.
$RequestBody = "MyRequestBody" # String[] | The IDs of the fields to set as columns. In the form data, specify each field as `columns=id`, where `id` is the *id* of a field (as seen in the response for [Get fields](#api-rest-api-<ver>-field-get)). For example, `columns=summary`. (optional)

# Set columns
try {
    $Result = Set-Columns -Id $Id -RequestBody $RequestBody
} catch {
    Write-Host ("Exception occurred when calling Set-Columns: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int64**| The ID of the filter. | 
 **RequestBody** | [**String[]**](String.md)| The IDs of the fields to set as columns. In the form data, specify each field as &#x60;columns&#x3D;id&#x60;, where &#x60;id&#x60; is the *id* of a field (as seen in the response for [Get fields](#api-rest-api-&lt;ver&gt;-field-get)). For example, &#x60;columns&#x3D;summary&#x60;. | [optional] 

### Return type

[**AnyType**](AnyType.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Set-FavouriteForFilter"></a>
# **Set-FavouriteForFilter**
> ModelFilter Set-FavouriteForFilter<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int64><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Expand] <String><br>

Add filter as favorite

Add a filter as a favorite for the user.  **[Permissions](#permissions) required:** Permission to access Jira, however, the user can only favorite:   *  filters owned by the user.  *  filters shared with a group that the user is a member of.  *  filters shared with a private project that the user has *Browse projects* [project permission](https://confluence.atlassian.com/x/yodKLg) for.  *  filters shared with a public project.  *  filters shared with the public.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$Id = 789 # Int64 | The ID of the filter.
$Expand = "MyExpand" # String | Use [expand](#expansion) to include additional information about filter in the response. This parameter accepts a comma-separated list. Expand options include:   *  `sharedUsers` Returns the users that the filter is shared with. This includes users that can browse projects that the filter is shared with. If you don't specify `sharedUsers`, then the `sharedUsers` object is returned but it doesn't list any users. The list of users returned is limited to 1000, to access additional users append `[start-index:end-index]` to the expand request. For example, to access the next 1000 users, use `?expand=sharedUsers[1001:2000]`.  *  `subscriptions` Returns the users that are subscribed to the filter. If you don't specify `subscriptions`, the `subscriptions` object is returned but it doesn't list any subscriptions. The list of subscriptions returned is limited to 1000, to access additional subscriptions append `[start-index:end-index]` to the expand request. For example, to access the next 1000 subscriptions, use `?expand=subscriptions[1001:2000]`. (optional)

# Add filter as favorite
try {
    $Result = Set-FavouriteForFilter -Id $Id -Expand $Expand
} catch {
    Write-Host ("Exception occurred when calling Set-FavouriteForFilter: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int64**| The ID of the filter. | 
 **Expand** | **String**| Use [expand](#expansion) to include additional information about filter in the response. This parameter accepts a comma-separated list. Expand options include:   *  &#x60;sharedUsers&#x60; Returns the users that the filter is shared with. This includes users that can browse projects that the filter is shared with. If you don&#39;t specify &#x60;sharedUsers&#x60;, then the &#x60;sharedUsers&#x60; object is returned but it doesn&#39;t list any users. The list of users returned is limited to 1000, to access additional users append &#x60;[start-index:end-index]&#x60; to the expand request. For example, to access the next 1000 users, use &#x60;?expand&#x3D;sharedUsers[1001:2000]&#x60;.  *  &#x60;subscriptions&#x60; Returns the users that are subscribed to the filter. If you don&#39;t specify &#x60;subscriptions&#x60;, the &#x60;subscriptions&#x60; object is returned but it doesn&#39;t list any subscriptions. The list of subscriptions returned is limited to 1000, to access additional subscriptions append &#x60;[start-index:end-index]&#x60; to the expand request. For example, to access the next 1000 subscriptions, use &#x60;?expand&#x3D;subscriptions[1001:2000]&#x60;. | [optional] 

### Return type

[**ModelFilter**](ModelFilter.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Update-Filter"></a>
# **Update-Filter**
> ModelFilter Update-Filter<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Int64><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ModelFilter] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Expand] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-OverrideSharePermissions] <System.Nullable[Boolean]><br>

Update filter

Updates a filter. Use this operation to update a filter's name, description, JQL, or sharing.  **[Permissions](#permissions) required:** Permission to access Jira, however the user must own the filter.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$Id = 789 # Int64 | The ID of the filter to update.
$UserAvatarUrls = Initialize-UserAvatarUrls -Var16x16 "MyVar16x16" -Var24x24 "MyVar24x24" -Var32x32 "MyVar32x32" -Var48x48 "MyVar48x48"

$GroupName = Initialize-GroupName -Name "MyName" -GroupId "MyGroupId" -Self "MySelf"
$UserGroups = Initialize-UserGroups -Size 0 -Items $GroupName -PagingCallback  -Callback  -MaxResults 0

$ApplicationRole = Initialize-ApplicationRole -Key "MyKey" -Groups "MyGroups" -GroupDetails $GroupName -Name "MyName" -DefaultGroups "MyDefaultGroups" -DefaultGroupsDetails $GroupName -SelectedByDefault $false -Defined $false -NumberOfSeats 0 -RemainingSeats 0 -UserCount 0 -UserCountDescription "MyUserCountDescription" -HasUnlimitedSeats $false -Platform $false

$UserApplicationRoles = Initialize-UserApplicationRoles -Size 0 -Items $ApplicationRole -PagingCallback  -Callback  -MaxResults 0

$FilterOwner = Initialize-FilterOwner -Self "MySelf" -Key "MyKey" -AccountId "MyAccountId" -AccountType "atlassian" -Name "MyName" -EmailAddress "MyEmailAddress" -AvatarUrls $UserAvatarUrls -DisplayName "MyDisplayName" -Active $false -TimeZone "MyTimeZone" -Locale "MyLocale" -Groups $UserGroups -ApplicationRoles $UserApplicationRoles -Expand "MyExpand"

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

$User = Initialize-User -Self "MySelf" -Key "MyKey" -AccountId "MyAccountId" -AccountType "atlassian" -Name "MyName" -EmailAddress "MyEmailAddress" -AvatarUrls $UserAvatarUrls -DisplayName "MyDisplayName" -Active $false -TimeZone "MyTimeZone" -Locale "MyLocale" -Groups $UserGroups -ApplicationRoles $UserApplicationRoles -Expand "MyExpand"

$FilterSharedUsers = Initialize-FilterSharedUsers -Size 0 -Items $User -MaxResults 0 -StartIndex 0 -EndIndex 0

$FilterSubscriptionUser = Initialize-FilterSubscriptionUser -Self "MySelf" -Key "MyKey" -AccountId "MyAccountId" -AccountType "atlassian" -Name "MyName" -EmailAddress "MyEmailAddress" -AvatarUrls $UserAvatarUrls -DisplayName "MyDisplayName" -Active $false -TimeZone "MyTimeZone" -Locale "MyLocale" -Groups $UserGroups -ApplicationRoles $UserApplicationRoles -Expand "MyExpand"

$FilterSubscriptionGroup = Initialize-FilterSubscriptionGroup -Name "MyName" -GroupId "MyGroupId" -Self "MySelf"
$FilterSubscription = Initialize-FilterSubscription -Id 0 -User $FilterSubscriptionUser -Group $FilterSubscriptionGroup

$FilterSubscriptions = Initialize-FilterSubscriptions -Size 0 -Items $FilterSubscription -MaxResults 0 -StartIndex 0 -EndIndex 0

$ModelFilter = Initialize-ModelFilter -Self "MySelf" -Id "MyId" -Name "MyName" -Description "MyDescription" -Owner $FilterOwner -Jql "MyJql" -ViewUrl "MyViewUrl" -SearchUrl "MySearchUrl" -Favourite $false -FavouritedCount 0 -SharePermissions $SharePermission -EditPermissions $SharePermission -SharedUsers $FilterSharedUsers -Subscriptions $FilterSubscriptions # ModelFilter | The filter to update.
$Expand = "MyExpand" # String | Use [expand](#expansion) to include additional information about filter in the response. This parameter accepts a comma-separated list. Expand options include:   *  `sharedUsers` Returns the users that the filter is shared with. This includes users that can browse projects that the filter is shared with. If you don't specify `sharedUsers`, then the `sharedUsers` object is returned but it doesn't list any users. The list of users returned is limited to 1000, to access additional users append `[start-index:end-index]` to the expand request. For example, to access the next 1000 users, use `?expand=sharedUsers[1001:2000]`.  *  `subscriptions` Returns the users that are subscribed to the filter. If you don't specify `subscriptions`, the `subscriptions` object is returned but it doesn't list any subscriptions. The list of subscriptions returned is limited to 1000, to access additional subscriptions append `[start-index:end-index]` to the expand request. For example, to access the next 1000 subscriptions, use `?expand=subscriptions[1001:2000]`. (optional)
$OverrideSharePermissions = $true # Boolean | EXPERIMENTAL: Whether share permissions are overridden to enable the addition of any share permissions to filters. Available to users with *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg). (optional) (default to $false)

# Update filter
try {
    $Result = Update-Filter -Id $Id -ModelFilter $ModelFilter -Expand $Expand -OverrideSharePermissions $OverrideSharePermissions
} catch {
    Write-Host ("Exception occurred when calling Update-Filter: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Int64**| The ID of the filter to update. | 
 **ModelFilter** | [**ModelFilter**](ModelFilter.md)| The filter to update. | 
 **Expand** | **String**| Use [expand](#expansion) to include additional information about filter in the response. This parameter accepts a comma-separated list. Expand options include:   *  &#x60;sharedUsers&#x60; Returns the users that the filter is shared with. This includes users that can browse projects that the filter is shared with. If you don&#39;t specify &#x60;sharedUsers&#x60;, then the &#x60;sharedUsers&#x60; object is returned but it doesn&#39;t list any users. The list of users returned is limited to 1000, to access additional users append &#x60;[start-index:end-index]&#x60; to the expand request. For example, to access the next 1000 users, use &#x60;?expand&#x3D;sharedUsers[1001:2000]&#x60;.  *  &#x60;subscriptions&#x60; Returns the users that are subscribed to the filter. If you don&#39;t specify &#x60;subscriptions&#x60;, the &#x60;subscriptions&#x60; object is returned but it doesn&#39;t list any subscriptions. The list of subscriptions returned is limited to 1000, to access additional subscriptions append &#x60;[start-index:end-index]&#x60; to the expand request. For example, to access the next 1000 subscriptions, use &#x60;?expand&#x3D;subscriptions[1001:2000]&#x60;. | [optional] 
 **OverrideSharePermissions** | **Boolean**| EXPERIMENTAL: Whether share permissions are overridden to enable the addition of any share permissions to filters. Available to users with *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg). | [optional] [default to $false]

### Return type

[**ModelFilter**](ModelFilter.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

