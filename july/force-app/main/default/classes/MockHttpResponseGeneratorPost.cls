@isTest
global class MockHttpResponseGeneratorPost implements HttpCalloutMock {
	 global HTTPResponse respond(HTTPRequest request) {
         
        // Optionally, only send a mock response for a specific endpoint
        // and method.
        System.assertEquals('POST', request.getMethod());
        
        // Create a fake response
        HttpResponse response = new HttpResponse();
        response.setHeader('Content-Type', 'application/json');
        response.setBody('{"requests" : {"message" : "S","detail" : "Success"}, "entityInfo": { "entities": null, "privilege": { "sso": null, "applicationName": null, "applicationCode": null, "screen": null, "employeeName": null, "vCrud": null } }, "status": { "message": "S", "detail": "Success" } }');
        response.setStatusCode(200);
        return response;
    }
    
    
}