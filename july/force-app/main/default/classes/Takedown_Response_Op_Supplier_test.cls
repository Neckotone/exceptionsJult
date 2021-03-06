@isTest
public class Takedown_Response_Op_Supplier_test {
     @testSetup static void setup(){
        //creation of EIV parameters
        list<EIV_Parameter__c> parameters = Test.loadData(EIV_Parameter__c.sobjectType, 'parametrosTest');
        System.assert(parameters.size()>0);
    }
    
    @Istest
    static void takedownTableInvoicesController() {
        Takedown_Wrapper_DetSearchKnownSuppliers.responseDetSearchKnownSupplier responseDetSearchKnownSupplier = new Takedown_Wrapper_DetSearchKnownSuppliers.responseDetSearchKnownSupplier();
    	Takedown_Wrapper_DetSearchKnownSuppliers.Suppliers suppliers = new Takedown_Wrapper_DetSearchKnownSuppliers.Suppliers();
    	Takedown_Wrapper_DetSearchKnownSuppliers.Supplier Supplier = new Takedown_Wrapper_DetSearchKnownSuppliers.Supplier();
        
    }
    
    
    @Istest
    static void upsertSupplierTest(){
        
         Takedowns_Contingency_plan__c  tkd = Data_Factory_Takedown_Test.createTakedownNowkopp('OPERFIN-FIJA', 'entityCPName', 'entityCPRFCTIN');
        Supplier_in_approval__c suppInapp = Data_Factory_SupplierInApproval_Test.createNewSupplierInApprovalNoTKD(tkd.Id);
        Supplier_in_approval__c supInapp2 = [SELECT Id from Supplier_in_approval__c][0];
        delete supInapp2;
        string jsonResp ='{'+
		'  "suppliers" : {'+
		'    "supplier" : [ {'+
		'      "vendorId" : 5003,'+
		'      "segment1" : "10230",'+
		'      "vendorName" : "DELL MEXICO SA DE CV",'+
		'      "vendorNameAlt" : "DELL MEXICO SA DE CV",'+
		'      "vendorTypeLookupCode" : "BIENES",'+
		'      "vatRegistrationNum" : "DME9204099R6",'+
		'      "federalReportableFlag" : "N",'+
		'      "startDateActive" : "04-AUG-17",'+
		'      "endDateActive" : "20-JUN-31",'+
		'      "allowAwtFlag" : "N",'+
		'      "jgzzFiscalCode" : "DME9204099R6",'+
		'      "taxReference" : "DME9204099R6",'+
		'      "organizationTypeLookupCode" : "PERSONA MORAL",'+
		'      "partyId" : 21082,'+
		'      "summaryFlag" : "N",'+
		'      "enabledFlag" : "Y",'+
		'      "oneTimeFlag" : "N",'+
		'      "invoiceCurrencyCode" : "MXN",'+
		'      "paymentCurrencyCode" : "MXN",'+
		'      "attributeCategory" : "DIOT",'+
		'      "attribute1" : "04",'+
		'      "attribute2" : "MEX",'+
		'      "attribute3" : "Mexicano",'+
		'      "activeFlag" : "Y",'+
		'      "sites" : {'+
		'        "site" : [ {'+
		'          "vendorId" : 5003,'+
		'          "vendorSiteId" : 62551,'+
		'          "vendorSiteCode" : "DMX16-002-0177",'+
		'          "shipToLocationId" : 245,'+
		'          "shipToLocationName" : "SAMARA",'+
		'          "termsDateBasis" : "Invoice",'+
		'          "acctsPayCodeCombinationId" : 6000,'+
		'          "acctsPayCodeCombination" : "397-00000-307101002-000-000000-0000",'+
		'          "prepayCodeCombinationId" : 6001,'+
		'          "prepayCodeCombination" : "397-00000-122101001-000-000000-0000",'+
		'          "payGroupLookupCode" : "ORIGINATION",'+
		'          "paymentPriority" : 99,'+
		'          "termId" : 10011,'+
		'          "termName" : "Inmediato",'+
		'          "payDateBasisLookupCode" : "DUE",'+
		'          "paymentCurrencyCode" : "MXN",'+
		'          "orgId" : 223,'+
		'          "organizationName" : "UO_397 HOLDING",'+
		'          "allowAwtFlag" : "N",'+
		'          "primaryPaySiteFlag" : "N",'+
		'          "vatCode" : "AP_IVA_16",'+
		'          "offsetTaxFlag" : "Y",'+
		'          "autoTaxCalcFlag" : "Y",'+
		'          "inactiveDate" : "4712-12-31",'+
		'          "purchasingSiteFlag" : "Y",'+
		'          "rfqOnlySiteFlag" : "N",'+
		'          "paySiteFlag" : "Y",'+
		'          "partySiteId" : 10026,'+
		'          "province" : "MIGUEL HIDALGO",'+
		'          "country" : "MX",'+
		'          "addressLine1" : "AV PASEO DE LA REFORMA NO 2620 PISO 11",'+
		'          "addressLine2" : "LOMAS ALTAS",'+
		'          "city" : "CDMX",'+
		'          "state" : "DF",'+
		'          "zip" : "11950",'+
		'          "attributeCategory" : "TIPO DE PROVEEDOR",'+
		'          "attribute1" : "DIRECTOS",'+
		'          "attribute14" : "300000004347042",'+
		'          "activeFlag" : "Y",'+
		'          "accounts" : {'+
		'            "account" : [ {'+
		'              "vendorId" : 5003,'+
		'              "vendorSiteId" : 62551,'+
		'              "bankName" : "CITIBANAMEX",'+
		'              "countryCode" : "MX",'+
		'              "branchName" : "NA",'+
		'              "branchType" : "ABA",'+
		'              "bankAccountId" : 15117,'+
		'              "branchId" : 483410,'+
		'              "bankId" : 483407,'+
		'              "acctOwnerPartyId" : 21082,'+
		'              "bankAccountNum" : "002180002260330177",'+
		'              "currency" : "MXN",'+
		'              "startDate" : "2010-01-01",'+
		'              "endDate" : "4712-12-31",'+
		'              "attributeCategory" : "BANCO INTERMEDIARIO",'+
		'              "attribute1" : "SWIFT",'+
		'              "attribute2" : "BNMXMXMM",'+
		'              "objectVersionNumber" : 4,'+
		'              "activeFlag" : "Y"'+
		'            }, {'+
		'              "vendorId" : 5003,'+
		'              "vendorSiteId" : 62551,'+
		'              "countryCode" : "MX",'+
		'              "bankAccountId" : 604,'+
		'              "acctOwnerPartyId" : 21082,'+
		'              "bankAccountNum" : "002180002260330177",'+
		'              "currency" : "MXN",'+
		'              "startDate" : "2010-01-01",'+
		'              "endDate" : "4712-12-31",'+
		'              "attributeCategory" : "BANCO INTERMEDIARIO",'+
		'              "attribute1" : "SWIFT",'+
		'              "attribute2" : "BNMXMXMM",'+
		'              "objectVersionNumber" : 22,'+
		'              "activeFlag" : "Y"'+
		'            } ]'+
		'          },'+
		'          "contacts" : null'+
		'        }, {'+
		'          "vendorId" : 5003,'+
		'          "vendorSiteId" : 160549,'+
		'          "vendorSiteCode" : "DMX16-002-0177",'+
		'          "shipToLocationId" : 245,'+
		'          "shipToLocationName" : "SAMARA",'+
		'          "termsDateBasis" : "Invoice",'+
		'          "acctsPayCodeCombinationId" : 6008,'+
		'          "acctsPayCodeCombination" : "XA7-00000-307101002-000-000000-0000",'+
		'          "prepayCodeCombinationId" : 6009,'+
		'          "prepayCodeCombination" : "XA7-00000-122101001-000-000000-0000",'+
		'          "payGroupLookupCode" : "ORIGINATION",'+
		'          "paymentPriority" : 99,'+
		'          "termId" : 10011,'+
		'          "termName" : "Inmediato",'+
		'          "payDateBasisLookupCode" : "DUE",'+
		'          "paymentCurrencyCode" : "MXN",'+
		'          "orgId" : 225,'+
		'          "organizationName" : "UO_XA7 ENGENCAP",'+
		'          "allowAwtFlag" : "N",'+
		'          "primaryPaySiteFlag" : "N",'+
		'          "vatCode" : "AP_IVA_16",'+
		'          "offsetTaxFlag" : "Y",'+
		'          "autoTaxCalcFlag" : "Y",'+
		'          "inactiveDate" : "4712-12-31",'+
		'          "purchasingSiteFlag" : "Y",'+
		'          "rfqOnlySiteFlag" : "N",'+
		'          "paySiteFlag" : "Y",'+
		'          "partySiteId" : 10026,'+
		'          "province" : "MIGUEL HIDALGO",'+
		'          "country" : "MX",'+
		'          "addressLine1" : "AV PASEO DE LA REFORMA NO 2620 PISO 11",'+
		'          "addressLine2" : "LOMAS ALTAS",'+
		'          "city" : "CDMX",'+
		'          "state" : "DF",'+
		'          "zip" : "11950",'+
		'          "attributeCategory" : "TIPO DE PROVEEDOR",'+
		'          "attribute1" : "DIRECTOS",'+
		'          "attribute14" : "300000006206376",'+
		'          "activeFlag" : "Y",'+
		'          "accounts" : {'+
		'            "account" : [ {'+
		'              "vendorId" : 5003,'+
		'              "vendorSiteId" : 160549,'+
		'              "bankName" : "CITIBANAMEX",'+
		'              "countryCode" : "MX",'+
		'              "branchName" : "NA",'+
		'              "branchType" : "ABA",'+
		'              "bankAccountId" : 15117,'+
		'              "branchId" : 483410,'+
		'              "bankId" : 483407,'+
		'              "acctOwnerPartyId" : 21082,'+
		'              "bankAccountNum" : "002180002260330177",'+
		'              "currency" : "MXN",'+
		'              "startDate" : "2010-01-01",'+
		'              "endDate" : "4712-12-31",'+
		'              "attributeCategory" : "BANCO INTERMEDIARIO",'+
		'              "attribute1" : "SWIFT",'+
		'              "attribute2" : "BNMXMXMM",'+
		'              "objectVersionNumber" : 4,'+
		'              "activeFlag" : "Y"'+
		'            }, {'+
		'              "vendorId" : 5003,'+
		'              "vendorSiteId" : 160549,'+
		'              "countryCode" : "MX",'+
		'              "bankAccountId" : 604,'+
		'              "acctOwnerPartyId" : 21082,'+
		'              "bankAccountNum" : "002180002260330177",'+
		'              "currency" : "MXN",'+
		'              "startDate" : "2010-01-01",'+
		'              "endDate" : "4712-12-31",'+
		'              "attributeCategory" : "BANCO INTERMEDIARIO",'+
		'              "attribute1" : "SWIFT",'+
		'              "attribute2" : "BNMXMXMM",'+
		'              "objectVersionNumber" : 22,'+
		'              "activeFlag" : "Y"'+
		'            } ]'+
		'          },'+
		'          "contacts" : null'+
		'        }, {'+
		'          "vendorId" : 5003,'+
		'          "vendorSiteId" : 62552,'+
		'          "vendorSiteCode" : "DUS16-002-8234",'+
		'          "termsDateBasis" : "Invoice",'+
		'          "acctsPayCodeCombinationId" : 6000,'+
		'          "acctsPayCodeCombination" : "397-00000-307101002-000-000000-0000",'+
		'          "prepayCodeCombinationId" : 6001,'+
		'          "prepayCodeCombination" : "397-00000-122101001-000-000000-0000",'+
		'          "payGroupLookupCode" : "ORIGINATION",'+
		'          "paymentPriority" : 99,'+
		'          "termId" : 10011,'+
		'          "termName" : "Inmediato",'+
		'          "payDateBasisLookupCode" : "DUE",'+
		'          "paymentCurrencyCode" : "USD",'+
		'          "orgId" : 223,'+
		'          "organizationName" : "UO_397 HOLDING",'+
		'          "allowAwtFlag" : "N",'+
		'          "primaryPaySiteFlag" : "N",'+
		'          "vatCode" : "AP_IVA_16",'+
		'          "offsetTaxFlag" : "Y",'+
		'          "autoTaxCalcFlag" : "Y",'+
		'          "inactiveDate" : "4712-12-31",'+
		'          "purchasingSiteFlag" : "Y",'+
		'          "rfqOnlySiteFlag" : "N",'+
		'          "paySiteFlag" : "Y",'+
		'          "partySiteId" : 10026,'+
		'          "province" : "MIGUEL HIDALGO",'+
		'          "country" : "MX",'+
		'          "addressLine1" : "AV PASEO DE LA REFORMA NO 2620 PISO 11",'+
		'          "addressLine2" : "LOMAS ALTAS",'+
		'          "city" : "CDMX",'+
		'          "state" : "DF",'+
		'          "zip" : "11950",'+
		'          "attributeCategory" : "TIPO DE PROVEEDOR",'+
		'          "attribute1" : "DIRECTOS",'+
		'          "attribute14" : "300000004347046",'+
		'          "activeFlag" : "Y",'+
		'          "accounts" : {'+
		'            "account" : [ {'+
		'              "vendorId" : 5003,'+
		'              "vendorSiteId" : 62552,'+
		'              "bankName" : "CITIBANAMEX",'+
		'              "countryCode" : "MX",'+
		'              "branchName" : "NA",'+
		'              "branchType" : "ABA",'+
		'              "bankAccountId" : 15118,'+
		'              "branchId" : 483410,'+
		'              "bankId" : 483407,'+
		'              "acctOwnerPartyId" : 21082,'+
		'              "bankAccountNum" : "002180002260338234",'+
		'              "currency" : "USD",'+
		'              "startDate" : "2017-03-29",'+
		'              "endDate" : "4712-12-31",'+
		'              "attributeCategory" : "BANCO INTERMEDIARIO",'+
		'              "attribute1" : "SWIFT",'+
		'              "attribute2" : "BNMXMXMM",'+
		'              "attribute3" : "CITIBANK NY",'+
		'              "attribute4" : "SWIFT",'+
		'              "attribute5" : "CITIUS33",'+
		'              "objectVersionNumber" : 6,'+
		'              "activeFlag" : "Y"'+
		'            }, {'+
		'              "vendorId" : 5003,'+
		'              "vendorSiteId" : 62552,'+
		'              "countryCode" : "MX",'+
		'              "bankAccountId" : 605,'+
		'              "acctOwnerPartyId" : 21082,'+
		'              "bankAccountNum" : "002180002260338234",'+
		'              "currency" : "USD",'+
		'              "startDate" : "2017-03-29",'+
		'              "endDate" : "4712-12-31",'+
		'              "attributeCategory" : "BANCO INTERMEDIARIO",'+
		'              "attribute1" : "SWIFT",'+
		'              "attribute2" : "BNMXMXMM",'+
		'              "attribute3" : "CITIBANK NY",'+
		'              "attribute4" : "SWIFT",'+
		'              "attribute5" : "CITIUS33",'+
		'              "objectVersionNumber" : 43,'+
		'              "activeFlag" : "Y"'+
		'            } ]'+
		'          },'+
		'          "contacts" : null'+
		'        }, {'+
		'          "vendorId" : 5003,'+
		'          "vendorSiteId" : 160548,'+
		'          "vendorSiteCode" : "DUS16-002-8234",'+
		'          "shipToLocationId" : 245,'+
		'          "shipToLocationName" : "SAMARA",'+
		'          "termsDateBasis" : "Invoice",'+
		'          "acctsPayCodeCombinationId" : 6008,'+
		'          "acctsPayCodeCombination" : "XA7-00000-307101002-000-000000-0000",'+
		'          "prepayCodeCombinationId" : 6009,'+
		'          "prepayCodeCombination" : "XA7-00000-122101001-000-000000-0000",'+
		'          "payGroupLookupCode" : "ORIGINATION",'+
		'          "paymentPriority" : 99,'+
		'          "termId" : 10011,'+
		'          "termName" : "Inmediato",'+
		'          "payDateBasisLookupCode" : "DUE",'+
		'          "paymentCurrencyCode" : "USD",'+
		'          "orgId" : 225,'+
		'          "organizationName" : "UO_XA7 ENGENCAP",'+
		'          "allowAwtFlag" : "N",'+
		'          "primaryPaySiteFlag" : "N",'+
		'          "vatCode" : "AP_IVA_16",'+
		'          "offsetTaxFlag" : "Y",'+
		'          "autoTaxCalcFlag" : "Y",'+
		'          "inactiveDate" : "4712-12-31",'+
		'          "purchasingSiteFlag" : "Y",'+
		'          "rfqOnlySiteFlag" : "N",'+
		'          "paySiteFlag" : "Y",'+
		'          "partySiteId" : 10026,'+
		'          "province" : "MIGUEL HIDALGO",'+
		'          "country" : "MX",'+
		'          "addressLine1" : "AV PASEO DE LA REFORMA NO 2620 PISO 11",'+
		'          "addressLine2" : "LOMAS ALTAS",'+
		'          "city" : "CDMX",'+
		'          "state" : "DF",'+
		'          "zip" : "11950",'+
		'          "attributeCategory" : "TIPO DE PROVEEDOR",'+
		'          "attribute1" : "DIRECTOS",'+
		'          "attribute14" : "300000006206384",'+
		'          "activeFlag" : "Y",'+
		'          "accounts" : {'+
		'            "account" : [ {'+
		'              "vendorId" : 5003,'+
		'              "vendorSiteId" : 160548,'+
		'              "bankName" : "CITIBANAMEX",'+
		'              "countryCode" : "MX",'+
		'              "branchName" : "NA",'+
		'              "branchType" : "ABA",'+
		'              "bankAccountId" : 15118,'+
		'              "branchId" : 483410,'+
		'              "bankId" : 483407,'+
		'              "acctOwnerPartyId" : 21082,'+
		'              "bankAccountNum" : "002180002260338234",'+
		'              "currency" : "USD",'+
		'              "startDate" : "2017-03-29",'+
		'              "endDate" : "4712-12-31",'+
		'              "attributeCategory" : "BANCO INTERMEDIARIO",'+
		'              "attribute1" : "SWIFT",'+
		'              "attribute2" : "BNMXMXMM",'+
		'              "attribute3" : "CITIBANK NY",'+
		'              "attribute4" : "SWIFT",'+
		'              "attribute5" : "CITIUS33",'+
		'              "objectVersionNumber" : 6,'+
		'              "activeFlag" : "Y"'+
		'            }, {'+
		'              "vendorId" : 5003,'+
		'              "vendorSiteId" : 160548,'+
		'              "countryCode" : "MX",'+
		'              "bankAccountId" : 605,'+
		'              "acctOwnerPartyId" : 21082,'+
		'              "bankAccountNum" : "002180002260338234",'+
		'              "currency" : "USD",'+
		'              "startDate" : "2017-03-29",'+
		'              "endDate" : "4712-12-31",'+
		'              "attributeCategory" : "BANCO INTERMEDIARIO",'+
		'              "attribute1" : "SWIFT",'+
		'              "attribute2" : "BNMXMXMM",'+
		'              "attribute3" : "CITIBANK NY",'+
		'              "attribute4" : "SWIFT",'+
		'              "attribute5" : "CITIUS33",'+
		'              "objectVersionNumber" : 43,'+
		'              "activeFlag" : "Y"'+
		'            } ]'+
		'          },'+
		'          "contacts" : null'+
		'        } ]'+
		'      }'+
		'    }, {'+
		'      "vendorId" : 107244,'+
		'      "segment1" : "13126",'+
		'      "vendorName" : "OPERADORA DE ALIMENTOS MEDELLIN SA DE CV",'+
		'      "vendorTypeLookupCode" : "GASTOS DE VIAJE",'+
		'      "vatRegistrationNum" : "OAM040911HLA",'+
		'      "federalReportableFlag" : "N",'+
		'      "startDateActive" : "26-MAR-18",'+
		'      "allowAwtFlag" : "N",'+
		'      "jgzzFiscalCode" : "OAM040911HLA",'+
		'      "taxReference" : "OAM040911HLA",'+
		'      "organizationTypeLookupCode" : "PERSONA MORAL",'+
		'      "partyId" : 140463,'+
		'      "summaryFlag" : "N",'+
		'      "enabledFlag" : "Y",'+
		'      "oneTimeFlag" : "N",'+
		'      "invoiceCurrencyCode" : "MXN",'+
		'      "paymentCurrencyCode" : "MXN",'+
		'      "attributeCategory" : "DIOT",'+
		'      "attribute1" : "04",'+
		'      "attribute2" : "MEX",'+
		'      "attribute3" : "Mexicano",'+
		'      "activeFlag" : "Y",'+
		'      "sites" : {'+
		'        "site" : [ {'+
		'          "vendorId" : 107244,'+
		'          "vendorSiteId" : 122603,'+
		'          "vendorSiteCode" : "MXN-CONCUR",'+
		'          "shipToLocationId" : 245,'+
		'          "shipToLocationName" : "SAMARA",'+
		'          "termsDateBasis" : "Invoice",'+
		'          "acctsPayCodeCombinationId" : 28821,'+
		'          "acctsPayCodeCombination" : "S1U-00000-307109001-000-000000-0000",'+
		'          "prepayCodeCombinationId" : 6013,'+
		'          "prepayCodeCombination" : "S1U-00000-122101001-000-000000-0000",'+
		'          "payGroupLookupCode" : "GASTOS DE VIAJE",'+
		'          "paymentPriority" : 99,'+
		'          "termId" : 10011,'+
		'          "termName" : "Inmediato",'+
		'          "payDateBasisLookupCode" : "DUE",'+
		'          "paymentCurrencyCode" : "MXN",'+
		'          "orgId" : 226,'+
		'          "organizationName" : "UO_S1U LP",'+
		'          "allowAwtFlag" : "N",'+
		'          "primaryPaySiteFlag" : "Y",'+
		'          "vatCode" : "AP_IVA_16",'+
		'          "offsetTaxFlag" : "Y",'+
		'          "autoTaxCalcFlag" : "Y",'+
		'          "inactiveDate" : "4712-12-31",'+
		'          "purchasingSiteFlag" : "Y",'+
		'          "rfqOnlySiteFlag" : "N",'+
		'          "paySiteFlag" : "Y",'+
		'          "partySiteId" : 126223,'+
		'          "country" : "MX",'+
		'          "addressLine1" : "ANTONIO DOVALI JAIME",'+
		'          "addressLine2" : "70",'+
		'          "addressLine3" : "PISO 4",'+
		'          "addressLine4" : "SANTA FE",'+
		'          "state" : "DF",'+
		'          "zip" : "01210",'+
		'          "attributeCategory" : "TIPO DE PROVEEDOR",'+
		'          "attribute1" : "INDIRECTOS",'+
		'          "attribute14" : "300000006098682",'+
		'          "activeFlag" : "Y",'+
		'          "accounts" : null,'+
		'          "contacts" : null'+
		'        } ]'+
		'      }'+
		'    } ]'+
		'  },'+
		'  "status" : {'+
		'    "code" : null,'+
		'    "message" : "Success",'+
		'    "detail" : "S"'+
		'  }'+
		'}';
        
        string messaje = jsonResp.replaceAll('418|419|420|421', '');
        system.debug('messaje: ' + messaje);
        Takedown_Wrapper_DetSearchKnownSuppliers.responseDetSearchKnownSupplier tw = (Takedown_Wrapper_DetSearchKnownSuppliers.responseDetSearchKnownSupplier)JSON.deserialize(messaje, Takedown_Wrapper_DetSearchKnownSuppliers.responseDetSearchKnownSupplier.class);
        Takedown_Response_Op_Supplier.upsertSupplier(tw, tkd.Id);
    }
    
    @Istest
    static void InsertNonOrasupplierTest(){
         Takedowns_Contingency_plan__c  tkd = Data_Factory_Takedown_Test.createTakedownNowkopp('OPERFIN-FIJA', 'entityCPName', 'entityCPRFCTIN');
        Supplier_in_approval__c suppInapp = Data_Factory_SupplierInApproval_Test.createNewSupplierInApprovalNoTKD(tkd.Id);
        Supplier_in_approval__c supInapp2 = [SELECT Id from Supplier_in_approval__c][0];
        delete supInapp2;
        Supplier__c supp = Data_Factory_SupplierTest.createSupplier('vendorName', 'rfc', suppInapp.id);
        Takedown_Response_Op_Supplier.insertNonOracleSuppleir('vendorName', 'rfc', tkd.Id);
    }

}