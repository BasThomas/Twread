//
//  Authorization.swift
//  Twread
//
//  Created by Bas Thomas Broek on 12/10/2017.
//  Copyright © 2017 Bas Thomas Broek. All rights reserved.
//

import Foundation

struct Authorization {
  let consumerKey: String
  let oAuthToken: String
  
  private var nonce: String {
    return .nonce
  }
  
  private var signature: String {
    // https://developer.twitter.com/en/docs/basics/authentication/guides/creating-a-signature.html
    return ""
  }
  
  private var signatureMethod: String {
    return "HMAC-SHA1"
  }
  
  private var timestamp: String {
    return String(Date().timeIntervalSince1970)
  }
  
  private var version: String {
    return "1.0"
  }
  
  var authorizationHeader: String {
    let encodedDictionary = [
      "oauth_consumer_key": consumerKey,
      "oauth_nonce": nonce,
      "oauth_signature": signature,
      "oauth_signature_method": signatureMethod,
      "oauth_timestamp": timestamp,
      "oauth_token": oAuthToken,
      "oauth_version": version
      ].encoded
    
    return "OAuth \(encodedDictionary)"
  }
}
