@isTest 
public class ES2_controller_NDATest {
    
    @isTest private static void runTest(){
        ES2_controller_NDA inst = new ES2_controller_NDA();
        inst.sSSO='765765';
        inst.sendbtn=true;
        inst.aceptbtn=false;
        inst.onhdbtn=true;
        inst.reworkbtn=false;
        inst.docId='43e2234';
        inst.doctiposString='rtlgrfdm';
        inst.docUrl='hgbfrvd';
        inst.cddate='hgbfrvd';
        inst.urlflag=true;
        inst.backUrl='hgbfrvd';
        inst.rejbtn=true;
        inst.preaprbtn=false;
        inst.aprbtn=true;
        inst.Aaprbtn=false;
        inst.cancelbtn=true;
        inst.btentitybtn=false;
        inst.editbtn=true;
        inst.Ncombtn=false;
        inst.Ndocbtn=true;
        inst.nameDoc='gbvf';
        inst.idDoc='gbvf';
        inst.requestIdDoc='gbvf';
        inst.partyIdDoc='gbvf';
        inst.oraId='gbvf';
        inst.docType='gbvf';
        inst.detail = new EIV_DetailWrapClass();
        inst.detail.errorCode = 'S';
        inst.detail.description ='success';
        inst.detail.message =  'bgknfdmvbcnbnxcb';
        inst.accept();
        inst.approve();
        inst.cancel();
        inst.saveNDA();
        inst.rework();
        inst.onHold();
        inst.reject();
        inst.preApprove();
        inst.doctypesList();
        inst.editNDA();
        inst.newcoment();
        inst.recarga();
        
        inst.yesnobtn();
        
        
    }
    @isTest
    static void TestReqIdNulo(){
        PageReference pr = Page.ES2_EditPage_NDA;
        pr.getParameters().put('requestId','Id321');
        pr.getParameters().put('PartyId','9873hIUH');
        Test.setCurrentPage(pr);
        ES2_controller_NDA inst = new ES2_controller_NDA();
        inst.req.DocTypesObj = new List<ES2_Wraper_Doctype>();
        inst.send();
        
    }
    
    @isTest
    static void backToEntityTest(){
        ES2_controller_NDA inst = new ES2_controller_NDA();
        TBO002_SIC_code__c sic = new TBO002_SIC_code__c();
        sic.Name = '999';
        sic.TBO002_tx_SIC_industry_description__c = 'Description';
        insert sic;
        sic.id = [Select id from TBO002_SIC_code__c where name =:'999'][0].id;
        inst.backToEntity();
    }
    static void editNDAtest(){
        ES2_controller_NDA inst = new ES2_controller_NDA();
        TBO002_SIC_code__c sic = new TBO002_SIC_code__c();                                                  
        sic.Name = '999';
        sic.TBO002_tx_SIC_industry_description__c = 'Description';
        insert sic;
        sic.id = [Select id from TBO002_SIC_code__c where name =:'999'][0].id;
        PageReference pr = Page.ES2_EditPage_NDA;
        pr.getParameters().put('sSSO','Id321');
        Test.setCurrentPage(pr);
        inst.editNDA();
    }
   public static testMethod void aftIns()
   {
       
       ES2_controller_NDA.newdocument('hhgf', 'hhgf', 'hhgf', 'hhgf', 'hhgf');
       ES2_controller_NDA.downloadDoctos('1234','87654');
       ES2_controller_NDA.deleteDocument('87654', '87654','87654','87654','87654','87654', '87654');
      
   }
    
}