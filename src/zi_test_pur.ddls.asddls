@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Test Interface view'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZI_TEST_PUR as select from I_PurchaseOrderItemAPI01 as POI

  association [0..1] to I_PurchaseOrderAPI01 as _POH on $projection.PurchaseOrder = _POH.PurchaseOrder


{
  key POI.PurchaseOrder,
  key POI.PurchaseOrderItem,
      POI.Material,
      _POH.PurchaseOrderDate,
      _POH.Supplier,
      _POH
}
