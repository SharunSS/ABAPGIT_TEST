@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Test Consumption view'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view entity ZC_TEST_PUR as select from ZI_TEST_PUR
{
    key PurchaseOrder,
    key PurchaseOrderItem,
    Material,
    PurchaseOrderDate,
    Supplier,
    /* Associations */
    _POH
}
