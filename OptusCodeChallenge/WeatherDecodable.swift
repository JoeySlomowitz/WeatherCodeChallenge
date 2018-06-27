//
//  Weather.swift
//  OptusCodeChallenge
//
//  Created by Joey Slomowitz on 26/6/18.
//  Copyright © 2018 Joey Slomowitz. All rights reserved.
//

import Foundation

struct Results: Decodable {
    let main: Main
    
    let id: Int
    let name: String
}

struct Main: Decodable {
    let temp: Double
    let tempMin: Double
    let tempMax: Double
    
}
