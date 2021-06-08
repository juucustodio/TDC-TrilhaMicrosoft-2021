param prefixName string
param currentDate string = utcNow('yyyy-MM-dd')

var tagValues = {
  CreatedBy: 'DeploymentBicep'
  deploymentDate: currentDate
}

module sta 'Modules/storageAccount.bicep' = {
  name: 'sta'
  params: {
    storageAccountPrefix: prefixName
    tagValues: tagValues
  }
}
