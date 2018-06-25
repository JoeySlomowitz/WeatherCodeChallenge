//
//  Weather.swift
//  OptusCodeChallenge
//
//  Created by Joey Slomowitz on 26/6/18.
//  Copyright © 2018 Joey Slomowitz. All rights reserved.
//

import Foundation

struct Result: Decodable {
    let main: Main
}

struct Main: Decodable {
    let temp: Double
    let name: String
}
