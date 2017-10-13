//
//  Data+Authorization.swift
//  Twread
//
//  Created by Bas Thomas Broek on 13/10/2017.
//  Copyright © 2017 Bas Thomas Broek. All rights reserved.
//

import Foundation

extension Data {
  static var nonce: Data {
    return Data((0...32).map { _ -> UInt8 in .random })
  }
}
