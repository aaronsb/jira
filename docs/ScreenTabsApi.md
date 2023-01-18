# PSJira.PSJira/Api.ScreenTabsApi

All URIs are relative to *https://your-domain.atlassian.net*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Add-ScreenTab**](ScreenTabsApi.md#Add-ScreenTab) | **POST** /rest/api/3/screens/{screenId}/tabs | Create screen tab
[**Invoke-DeleteScreenTab**](ScreenTabsApi.md#Invoke-DeleteScreenTab) | **DELETE** /rest/api/3/screens/{screenId}/tabs/{tabId} | Delete screen tab
[**Get-AllScreenTabs**](ScreenTabsApi.md#Get-AllScreenTabs) | **GET** /rest/api/3/screens/{screenId}/tabs | Get all screen tabs
[**Move-ScreenTab**](ScreenTabsApi.md#Move-ScreenTab) | **POST** /rest/api/3/screens/{screenId}/tabs/{tabId}/move/{pos} | Move screen tab
[**Rename-ScreenTab**](ScreenTabsApi.md#Rename-ScreenTab) | **PUT** /rest/api/3/screens/{screenId}/tabs/{tabId} | Update screen tab


<a name="Add-ScreenTab"></a>
# **Add-ScreenTab**
> ScreenableTab Add-ScreenTab<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ScreenId] <Int64><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ScreenableTab] <PSCustomObject><br>

Create screen tab

Creates a tab for a screen.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$ScreenId = 789 # Int64 | The ID of the screen.
$ScreenableTab = Initialize-ScreenableTab -Id 0 -Name "MyName" # ScreenableTab | 

# Create screen tab
try {
    $Result = Add-ScreenTab -ScreenId $ScreenId -ScreenableTab $ScreenableTab
} catch {
    Write-Host ("Exception occurred when calling Add-ScreenTab: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ScreenId** | **Int64**| The ID of the screen. | 
 **ScreenableTab** | [**ScreenableTab**](ScreenableTab.md)|  | 

### Return type

[**ScreenableTab**](ScreenableTab.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-DeleteScreenTab"></a>
# **Invoke-DeleteScreenTab**
> void Invoke-DeleteScreenTab<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ScreenId] <Int64><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TabId] <Int64><br>

Delete screen tab

Deletes a screen tab.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$ScreenId = 789 # Int64 | The ID of the screen.
$TabId = 789 # Int64 | The ID of the screen tab.

# Delete screen tab
try {
    $Result = Invoke-DeleteScreenTab -ScreenId $ScreenId -TabId $TabId
} catch {
    Write-Host ("Exception occurred when calling Invoke-DeleteScreenTab: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ScreenId** | **Int64**| The ID of the screen. | 
 **TabId** | **Int64**| The ID of the screen tab. | 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-AllScreenTabs"></a>
# **Get-AllScreenTabs**
> ScreenableTab[] Get-AllScreenTabs<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ScreenId] <Int64><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProjectKey] <String><br>

Get all screen tabs

Returns the list of tabs for a screen.  **[Permissions](#permissions) required:**   *  *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).  *  *Administer projects* [project permission](https://confluence.atlassian.com/x/yodKLg) when the project key is specified, providing that the screen is associated with the project through a Screen Scheme and Issue Type Screen Scheme.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$ScreenId = 789 # Int64 | The ID of the screen.
$ProjectKey = "MyProjectKey" # String | The key of the project. (optional)

# Get all screen tabs
try {
    $Result = Get-AllScreenTabs -ScreenId $ScreenId -ProjectKey $ProjectKey
} catch {
    Write-Host ("Exception occurred when calling Get-AllScreenTabs: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ScreenId** | **Int64**| The ID of the screen. | 
 **ProjectKey** | **String**| The key of the project. | [optional] 

### Return type

[**ScreenableTab[]**](ScreenableTab.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Move-ScreenTab"></a>
# **Move-ScreenTab**
> AnyType Move-ScreenTab<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ScreenId] <Int64><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TabId] <Int64><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Pos] <Int32><br>

Move screen tab

Moves a screen tab.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$ScreenId = 789 # Int64 | The ID of the screen.
$TabId = 789 # Int64 | The ID of the screen tab.
$Pos = 56 # Int32 | The position of tab. The base index is 0.

# Move screen tab
try {
    $Result = Move-ScreenTab -ScreenId $ScreenId -TabId $TabId -Pos $Pos
} catch {
    Write-Host ("Exception occurred when calling Move-ScreenTab: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ScreenId** | **Int64**| The ID of the screen. | 
 **TabId** | **Int64**| The ID of the screen tab. | 
 **Pos** | **Int32**| The position of tab. The base index is 0. | 

### Return type

[**AnyType**](AnyType.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Rename-ScreenTab"></a>
# **Rename-ScreenTab**
> ScreenableTab Rename-ScreenTab<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ScreenId] <Int64><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TabId] <Int64><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ScreenableTab] <PSCustomObject><br>

Update screen tab

Updates the name of a screen tab.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$ScreenId = 789 # Int64 | The ID of the screen.
$TabId = 789 # Int64 | The ID of the screen tab.
$ScreenableTab = Initialize-ScreenableTab -Id 0 -Name "MyName" # ScreenableTab | 

# Update screen tab
try {
    $Result = Rename-ScreenTab -ScreenId $ScreenId -TabId $TabId -ScreenableTab $ScreenableTab
} catch {
    Write-Host ("Exception occurred when calling Rename-ScreenTab: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ScreenId** | **Int64**| The ID of the screen. | 
 **TabId** | **Int64**| The ID of the screen tab. | 
 **ScreenableTab** | [**ScreenableTab**](ScreenableTab.md)|  | 

### Return type

[**ScreenableTab**](ScreenableTab.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

