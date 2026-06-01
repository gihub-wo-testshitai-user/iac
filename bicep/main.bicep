param config object

var namePrefix = config.namePrefix
var location = 'japaneast'

// optional参照
var nsgId = config.nsgId ?? ''

module vnet 'modules/vnet.bicep' = {
  name: 'vnet'
  params: {
    name: '${namePrefix}-vnet'
    location: location

    addressSpace: config.vnet.addressSpace
    subnetDefaultPrefix: config.vnet.subnet.default
    subnetAppPrefix: config.vnet.subnet.app

    nsgId: nsgId
  }
}
