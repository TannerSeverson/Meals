//
//  URLProtocolStub.swift
//
//
//  Created by Tanner Severson on 6/23/24.
//

import Foundation

public final class URLProtocolStub: URLProtocol {
    
    public struct Response {
        
        public init(
            urlResponse: URLResponse = URLResponse(),
            data: Data = .init()
        ) {
            self.urlResponse = urlResponse
            self.data = data
        }
        
        var urlResponse: URLResponse
        let data: Data
    }
    
    public static var error: Error?
    public static var response: Response?
    
    public override class func canInit(
        with task: URLSessionTask
    ) -> Bool {
        return true
    }
    
    public override class func canonicalRequest(
        for request: URLRequest
    ) -> URLRequest {
        return request
    }
    
    public override func startLoading() {
        if let error = URLProtocolStub.error {
            self.client?.urlProtocol(self, didFailWithError: URLError(.unknown, userInfo: ["Error": error]))
        } else if let response = URLProtocolStub.response {
            self.client?.urlProtocol(self, didReceive: response.urlResponse, cacheStoragePolicy: .notAllowed)
            self.client?.urlProtocol(self, didLoad: response.data)
        }
        self.client?.urlProtocolDidFinishLoading(self)
    }
    
    public override func stopLoading() {}
}
