@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Purchase Order'

@UI: {
    headerInfo: { typeName: 'Purchase Order', typeNamePlural: 'Purchase Orders', title: { type: #STANDARD, value: 'PurchasingDocument' } } }

@Search.searchable: true
define root view entity ZC_PurchasingDocument 
  provider contract transactional_query
  as projection on ZI_PurchasingDocument   
{
    
  @UI: {
    lineItem: [ { position: 10, importance: #HIGH, label: 'Purchase Order' } ],
    identification: [ { position: 10, label: 'Purchase Order' } ] 
  }      
  @Search.defaultSearchElement: true
  @ObjectModel: { text.element: [ 'PurchaseOrderTypeName' ] }
  key PurchasingDocument,
  PurchaseOrderTypeName,
  
  @UI.selectionField: [{ position: 20 }]
  @Consumption.valueHelpDefinition: [{ entity: { name: 'ZI_Supplier', element: 'Supplier' } }]
  Supplier,
  
  @UI.lineItem: [ { position: 20, importance: #HIGH, label: 'Supplier' } ]
  @ObjectModel: { text.element: [ 'SupplierName' ] }
  SupplierName,
  
  @UI.selectionField: [{ position: 30 }]
  @Consumption.valueHelpDefinition: [{ entity: { name: 'ZI_CompanyCode', element: 'CompanyCode' } }]  
  CompanyCode,
  
  @UI.lineItem: [ { position: 30, importance: #HIGH, label: 'Company Code' } ]
  @ObjectModel: { text.element: [ 'CompanyCodeName' ] }
  CompanyCodeName
    
}