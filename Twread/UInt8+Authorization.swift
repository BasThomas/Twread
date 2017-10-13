//
//  UInt8+Authorization.swift
//  Twread
//
//  Created by Bas Thomas Broek on 13/10/2017.
//  Copyright © 2017 Bas Thomas Broek. All rights reserved.
//

import Foundation

extension UInt8 {
  static var random: UInt8 {
    return UInt8(arc4random_uniform(UInt32(255 + 1)))
  }
}
