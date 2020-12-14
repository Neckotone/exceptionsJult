const COLUMS = [
    { label: 'Name', fieldName: 'Name', type: 'text', editable: true, initialWidth: 150, wrapText: true },
    { label: 'Model', fieldName: 'TKD_tx_Model__c', type: 'text', editable: true, initialWidth: 150, wrapText: true },
    { label: 'Serial Number', fieldName: 'SerialNumber', type: 'text', editable: true, initialWidth: 150, wrapText: true },
    { label: 'Description', fieldName: 'Description', type: 'text', editable: true, initialWidth: 150, wrapText: true },
    { label: 'Model year', fieldName: 'TKD_tx_model_year__c', type: 'text', editable: true, initialWidth: 150, wrapText: true },
    { label: 'Engine number', fieldName: 'TKD_tl_engine_number__c', type: 'text', editable: true, initialWidth: 150, wrapText: true },
    { label: 'Brand', fieldName: 'TKD_tx_brand__c', type: 'text', editable: true, initialWidth: 150, wrapText: true },
    { label: 'Status', fieldName: 'Status', type: 'text', editable: true, initialWidth: 150, wrapText: true },
    { label: 'Active', fieldName: 'TKD_ck_active__c', type: 'boolean', editable: true, initialWidth: 150, wrapText: true },
    { label: 'Insurance policy', fieldName: 'TKD_tx_Insurance_policy__c', type: 'text', editable: true, initialWidth: 150, wrapText: true },
    { label: 'EC policy', fieldName: 'TKD_tl_ec_policy__c', type: 'text', editable: true, initialWidth: 150, wrapText: true },
    { label: 'Insurance company', fieldName: 'TKD_tx_Insurance_company__c', type: 'text', editable: true, initialWidth: 150, wrapText: true },
    { label: 'Inciso insurance', fieldName: 'TKD_tx_inciso_insurance__c', type: 'text', editable: true, initialWidth: 150, wrapText: true },
    { label: 'Insurance expiration date', fieldName: 'TKD_fh_insurance_expiration_date__c', type: 'date', editable: true, initialWidth: 150, wrapText: true },
    { label: 'Aseguradora', fieldName: 'TKD_tx_aseguradora__c', type: 'text', editable: true, initialWidth: 150, wrapText: true },
    { label: 'Annex A number', fieldName: 'TKD_tx_annex_a_number__c', type: 'text', editable: true, initialWidth: 150, wrapText: true },
    { label: 'Annex A created date', fieldName: 'TKD_fh_annex_a_created_Date__c', type: 'date', editable: true, initialWidth: 150, wrapText: true },
    { label: 'Annex A approved date', fieldName: 'TKD_fh_annex_a_approved_Date__c', type: 'date', editable: true, initialWidth: 150, wrapText: true },
    { label: 'Quote number', fieldName: 'TKD_tx_quote_number__c', type: 'text', editable: true, initialWidth: 150, wrapText: true },
    { label: 'Annex a status', fieldName: 'TKD_ls_annex_a_status__c', type: 'text', editable: true, initialWidth: 150, wrapText: true },
    { label: 'Quote date', fieldName: 'TKD_fh_quote_date__c', type: 'date', editable: true, initialWidth: 150, wrapText: true },
    { label: 'EC or customer supplier', fieldName: 'TKD_ls_ec_or_customer_supplier__c', type: 'text', editable: true, initialWidth: 150, wrapText: true },
    { label: 'Unit availability (days)', fieldName: 'TKD_nu_unit_availability_days__c', type: 'number', editable: true, initialWidth: 150, wrapText: true },
    { label: 'Supplier name', fieldName: 'TKD_tx_supplier_name__c', type: 'text', editable: true, initialWidth: 150, wrapText: true },
    { label: 'Purchase Status', fieldName: 'TKD_ls_purchase_Status__c', type: 'text', editable: true, initialWidth: 150, wrapText: true },
    { label: 'Delivery status', fieldName: 'TKD_ls_delivery_status__c', type: 'text', editable: true, initialWidth: 150, wrapText: true },
    { label: 'Customer agreed delivery date', fieldName: 'TKD_fh_customer_agreed_delivery_date__c', type: 'date', editable: true, initialWidth: 150, wrapText: true },
    { label: 'Real delivery date', fieldName: 'TKD_fh_real_delivery_date__c', type: 'date', editable: true, initialWidth: 150, wrapText: true },
    { label: 'Welcome kit sent', fieldName: 'TKD_ca_welcome_kit_sent__c', type: 'boolean', editable: true, initialWidth: 150, wrapText: true },
    { label: 'Forcasted delivery date', fieldName: 'TKD_fh_forcasted_delivery_date__c', type: 'date', editable: true, initialWidth: 150, wrapText: true },
    { label: 'Welcome kit sent date', fieldName: 'TKD_fh_welcome_kit_sent_date__c', type: 'date', editable: true, initialWidth: 150, wrapText: true },
    { label: 'Annex B status', fieldName: 'TKD_ls_annex_b_status__c', type: 'text', editable: true, initialWidth: 150, wrapText: true },
    { label: 'Annex B sent date', fieldName: 'TKD_fh_annex_b_sent_date__c', type: 'Date', editable: true, initialWidth: 150, wrapText: true },
    
    { label: 'Quantity', fieldName: 'Quantity', type: 'number', editable: true, initialWidth: 150, wrapText: true },
    { label: 'Payment type', fieldName: 'TKD_tx_payment_type__c', type: 'text', editable: true, initialWidth: 150, wrapText: true },
    { label: 'Payment order', fieldName: 'TKD_tx_payment_order__c', type: 'text', editable: true, initialWidth: 150, wrapText: true },
    { label: 'Payment frecuency', fieldName: 'TKD_tx_payment_frecuency__c', type: 'text', editable: true, initialWidth: 150, wrapText: true },    
    { label: 'Payment amount', fieldName: 'TKD_dv_payment_amount__c', type: 'currency', editable: true, initialWidth: 150, wrapText: true, typeAttributes: { currencyCode: { fieldName: 'CurrencyIsoCode' }} },
    { label: 'Soft cost', fieldName: 'TKD_dv_soft_cost__c', type: 'currency', editable: true, initialWidth: 150, wrapText: true, typeAttributes: { currencyCode: { fieldName: 'CurrencyIsoCode' }} },
    { label: 'Total cost', fieldName: 'TKD_dv_total_cost__c', type: 'currency', editable: true, initialWidth: 150, wrapText: true, typeAttributes: { currencyCode: { fieldName: 'CurrencyIsoCode' }} },
    { label: 'CurrencyIsoCode', fieldName: 'CurrencyIsoCode', type: 'text', editable: false, initialWidth: 150, wrapText: true },
    //{ label: 'Collateral Description', fieldName: 'TKD_tl_op_collateral_description__c', type: 'text', editable: false, initialWidth: 150 },
   //{ label: 'Collateral Type', fieldName: 'TKD_tl_op_collateral_type__c', type: 'text', editable: false, initialWidth: 150 },
    //TKD_rb_Takedown_CP__c 
    { label: 'Collateral', fieldName:'Id', type: 'customlookup', editable: false, initialWidth: 250,
                typeAttributes: { customSearch: 'collateral', lookUpLabel: 'Collaterals', lookUpPlaceholder:'search collaterals', initialFieldToShow:['Catalogo_Colaterals__c.COLATERAL_DESCRIPTION__c']},           
                wrapText: true},
    { label: 'Takedown invoice', fieldName: 'Tkd_fm_invoice_name__c', type: 'text', editable: false, initialWidth: 150, wrapText: true },
    /*{ label: 'Takedown invoice', fieldName:'Id', type: 'customlookupinvoice', editable: false, initialWidth: 250,
                typeAttributes: { customSearch: 'invoice', lookUpLabel: 'Takedown invoices', lookUpPlaceholder:'search takedown invoice', initialFieldToShow:['Takedown_Invoice__c.Name']},          
                wrapText: true},*/
    /*{ type: 'action', typeAttributes: { rowActions: [
        { label: 'Advanced collateral lookup ', name: 'advancedlookup' },
        { label: 'Show collateral detail', name: 'showcollateraldetail' },,
    ] } },*/
    //fieldName: 'TKD_rb_collateral__c'
];


export default { COLUMS };