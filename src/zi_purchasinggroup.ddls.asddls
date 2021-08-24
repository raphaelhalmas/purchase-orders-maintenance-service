@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AbapCatalog.sqlViewName: 'ZIMMPURCHGROUP'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Purchasing Group'
@ObjectModel.resultSet.sizeCategory: #XS -- drop down menu for value help
define view ZI_PurchasingGroup 
  as select from zdt_t024 {
  
  @EndUserText.label: 'Purchasing Group'
  @ObjectModel.text.element: ['PurchasingGroupName']  
  key ekgrp as PurchasingGroup,
    
  @EndUserText.label: 'Purchasing Group'
  eknam as PurchasingGroupName  
}
