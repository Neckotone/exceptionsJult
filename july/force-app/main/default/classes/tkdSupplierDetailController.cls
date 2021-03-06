/**
 * @description       : 
 * @author            : eduardo.amiens@outlook.com
 * @group             : 
 * @last modified on  : 09-10-2020
 * @last modified by  : eduardo.amiens@outlook.com
 * Modifications Log 
 * Ver   Date         Author                       Modification
 * 1.0   08-07-2020   eduardo.amiens@outlook.com   Initial Version
**/
public with sharing class tkdSupplierDetailController {

    @AuraEnabled(cacheable=true)
    public static Supplier__c getSupplierWithSites(id supplierId){
        return [SELECT Id, Name, TKD_tx_Vendor_name_alternative__c, TKD_tx_Vat_Registration_Num__c, 
        (SELECT id, name, TKD_Vat_code__c, TKD_Vendor_ID__c, TKD_Vendor_Site_ID__c, TKD_ls_State__c, 
        TKD_tx_Country__c, Tkd_at_Address_line_1__c, Tkd_at_Address_line_2__c, Tkd_ls_Country__c, 
        Tkd_ls_Org_Name__c, Tkd_tx_City__c, Tkd_tx_State__c, Tkd_tx_Zip__c, tkd_tf_phone__c, 
        Pay_Site_Flag__c, primaryPaySiteFlag__c, SR_ls_Custom_Currency__c, SR_ls_Currency__c FROM Sites__r) 
        FROM Supplier__c where id =:supplierId];
    }

    @AuraEnabled(cacheable=true)
    public static Id getSupplierInApprovalId(id takedownId){
        return [SELECT Id, Name, TKD_rb_SupplierInApproval__c 
        FROM Supplier_in_approval__c 
        where TKD_rb_SupplierInApproval__c = :takedownId limit 1].Id;
    }
    @AuraEnabled(cacheable=false)
    public static void cloneSite(id siteId){
        TKD_Site__c TKD_Site = [SELECT Id, IsDeleted, Name, CurrencyIsoCode, CreatedDate, CreatedById, LastModifiedDate, LastModifiedById, 
        SystemModstamp, Supplier__c, Supplier__r.TKD_pd_Supplier_in_approval__r.TKD_rb_SupplierInApproval__r.CPL_ls_Operation_Unit__c, TKD_Vat_code__c, TKD_Vendor_ID__c, TKD_Vendor_Site_ID__c, TKD_ls_State__c, 
        TKD_tx_Country__c, Tkd_at_Address_line_1__c, Tkd_at_Address_line_2__c, Tkd_ls_Country__c, Tkd_ls_Org_Name__c, 
        Tkd_tx_City__c, Tkd_tx_State__c, Tkd_tx_Zip__c, tkd_tf_phone__c, Pay_Site_Flag__c, primaryPaySiteFlag__c, 
        SR_ls_Custom_Currency__c, SR_ls_Currency__c,
        (SELECT Id, OwnerId, IsDeleted, Name, CurrencyIsoCode, RecordTypeId, CreatedDate, CreatedById, 
        LastModifiedDate, LastModifiedById, SystemModstamp, Entity_Name__c, Bank_Account_Currency__c, 
        Bank_Name__c, Bank_Account_Name__c, Bank_Country__c, Mexican_Swift__c, ABA_Swift__c, 
        Intermediary_Bnak_Name__c, Intermediary_Bank_Swift__c, Intermediary_Bank_Account_CLABE_IBAN__c, 
        FFC_Name__c, FFC_Ref__c, Virtual_Account__c, Cuenta__c, ABAswift__c, TKD_Vendor_Site_ID__c, 
        TKD_rb_Site__c, Codigo_BIC__c, Codigo__c, Contexto__c, Nombre_Banco_intermediadio__c, 
        Pago_a_Cta_Concentradora_RN__c, Pago_a_Cuenta_Concentradora__c, Tipo_BIC__c, Tipo__c,
        SR_tx_Bank_Name__c,SR_tx_Country__c 
        FROM Bank_Accounts__r), 
        (SELECT Id, Name, FirstName, LastName, Phone, Email, RecordTypeId, TKD_rb_Site__c
         FROM Contacts__r) 
         FROM TKD_Site__c where id =:siteId];
        TKD_Site.Id = null;
        insert TKD_Site;
        list<Bank_Account__c> listBank_Account = new list<Bank_Account__c>();
        for(Bank_Account__c Bank_Account : TKD_Site.Bank_Accounts__r){
            Bank_Account.Id = null;
            Bank_Account.TKD_rb_Site__c = TKD_Site.Id;
            listBank_Account.add(Bank_Account);
        }
        insert listBank_Account;
        List<Contact> listContact = new List<Contact>();
        for(Contact contacto : TKD_Site.Contacts__r){
            contacto.Id = null;
            contacto.TKD_rb_Site__c = TKD_Site.Id;
            listContact.add(contacto);
        }
        insert listContact;
    }
}