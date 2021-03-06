@Istest
private class Data_Access_WOS_IST_SP_PQ_IncomeFee_Test {
	@Istest
    static void getIncome_FeeByPQTest(){
        Opportunity opp = Data_Factory_Opportunity_Test.createNewOpportunityTypeWK();
        TBO021_Takedowns_forecast__c forecast = Data_Factory_EasyForecast_Test.createForecast(opp.Id);
        IST__SuperTRUMP_Template__c template = TestDataFactory_tst.createSTPricingTemplate();
        IST__SuperTRUMP_Pricing_Quote__c pq = TestDataFactory_tst.createSTPricingQuote(opp,template);
        Data_Factory_SupTRUMPPQIncomeFee_Test.createIncomeFee(pq.Id);
        Data_Access_WOS_IST_SP_PQ_Income_Fee.getIncome_FeeByPQ(pq.Id);
    }
}