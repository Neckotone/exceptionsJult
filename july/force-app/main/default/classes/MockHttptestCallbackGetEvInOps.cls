global class MockHttptestCallbackGetEvInOps implements HttpCalloutMock {
	  global HTTPResponse respond(HTTPRequest request) {
         
        // Optionally, only send a mock response for a specific endpoint
        // and method.
        System.assertEquals('http://160.34.7.97:70/EcRequestSbDat/SFRequestTypeDetailsRs/sfRequestTypeDetails?requestId=123&sourceOpId=44', request.getEndpoint());
        System.assertEquals('GET', request.getMethod());
        
        // Create a fake response
        HttpResponse response = new HttpResponse();
        response.setHeader('Content-Type', 'application/json');
        response.setBody('{"entityInfo" : {"entities" : null,"privilege" : {"sso" : null,"applicationName" : null,"applicationCode" : null,"screen" : null,"employeeName" : null,"vCrud" : null}},"status" : {"message" : "S","detail" : "Success"}}');
        response.setStatusCode(200);
        return response;
    }

    
    
}