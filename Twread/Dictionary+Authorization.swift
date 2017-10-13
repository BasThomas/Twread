//
//  Dictionary+Authorization.swift
//  Twread
//
//  Created by Bas Thomas Broek on 13/10/2017.
//  Copyright © 2017 Bas Thomas Broek. All rights reserved.
//

import Foundation

extension Dictionary where Key == String, Value == String {
  var encoded: String {
    return map { "\($0.key)=\"\($0.value.percentEncoded)\"" }.joined(separator: ", ")
  }
}
