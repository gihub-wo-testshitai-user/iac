param name string
param location string
param addressSpace string

param subnetDefaultPrefix string
param subnetAppPrefix string

resource vnet 'Microsoft.Network/virtualNetworks@2023-11-01' = {
  name: name
  location: location
  properties: {
    addressSpace: {
      addressPrefixes: [
        addressSpace
      ]
    }
    subnets: [
      {
        name: 'default'
        properties: {
          addressPrefixes: [
            subnetDefaultPrefix
          ]
        }
      }
      {
        name: 'app'
        properties: {
          addressPrefixes: [
            subnetAppPrefix
          ]
          delegations: [
            {
              name: 'webapp'
              properties: {
                serviceName: 'Microsoft.Web/serverFarms'
              }
            }
          ]
        }
      }
    ]
  }
}
