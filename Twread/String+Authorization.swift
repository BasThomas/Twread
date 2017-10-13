//
//  String+Authorization.swift
//  Twread
//
//  Created by Bas Thomas Broek on 13/10/2017.
//  Copyright © 2017 Bas Thomas Broek. All rights reserved.
//

import Foundation

extension String {
  var percentEncoded: String {
    return addingPercentEncoding(withAllowedCharacters: .alphanumerics) ?? ""
  }
  
  static var nonce: String {
    return Data.nonce.base64EncodedString().trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
  }
}
