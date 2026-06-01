using '../main.bicep'

param config = {
  // 共通
  namePrefix: 'dev'

  // VNet専用
  vnet: {
    addressSpace: '10.1.0.0/16'

    subnet: {
      default: '10.1.0.0/24'
      app: '10.1.1.0/24'
    }
  }
}
