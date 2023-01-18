# ServerInformation
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**BaseUrl** | **String** | The base URL of the Jira instance. | [optional] 
**Version** | **String** | The version of Jira. | [optional] 
**VersionNumbers** | **Int32[]** | The major, minor, and revision version numbers of the Jira version. | [optional] 
**DeploymentType** | **String** | The type of server deployment. This is always returned as *Cloud*. | [optional] 
**BuildNumber** | **Int32** | The build number of the Jira version. | [optional] 
**BuildDate** | **System.DateTime** | The timestamp when the Jira version was built. | [optional] 
**ServerTime** | **System.DateTime** | The time in Jira when this request was responded to. | [optional] 
**ScmInfo** | **String** | The unique identifier of the Jira version. | [optional] 
**ServerTitle** | **String** | The name of the Jira instance. | [optional] 
**HealthChecks** | [**HealthCheckResult[]**](HealthCheckResult.md) | Jira instance health check results. Deprecated and no longer returned. | [optional] 

## Examples

- Prepare the resource
```powershell
$ServerInformation = Initialize-PSJiraServerInformation  -BaseUrl null `
 -Version null `
 -VersionNumbers null `
 -DeploymentType null `
 -BuildNumber null `
 -BuildDate null `
 -ServerTime null `
 -ScmInfo null `
 -ServerTitle null `
 -HealthChecks null
```

- Convert the resource to JSON
```powershell
$ServerInformation | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

