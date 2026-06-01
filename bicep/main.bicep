// 1つの設定オブジェクト
param config object

// 共通
var namePrefix = config.namePrefix
var location = 'japaneast'

// VNet用
var vnetAddressSpace = config.vnet.addressSpace
var subnetDefaultPrefix = config.vnet.subnet.default
var subnetAppPrefix = config.vnet.subnet.app

module vnet 'modules/vnet.bicep' = {
  name: 'vnet'
  params: {
    name: '${namePrefix}-vnet'
    location: location
    addressSpace: vnetAddressSpace
    subnetDefaultPrefix: subnetDefaultPrefix
    subnetAppPrefix: subnetAppPrefix
  }
}
