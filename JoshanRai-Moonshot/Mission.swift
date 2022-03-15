//
//  Mission.swift
//  JoshanRai-Moonshot
//
//  Created by Joshan Rai on 3/14/22.
//

import Foundation

struct Mission: Codable, Identifiable {
    struct CrewRole: Codable {
        let name: String
        let role: String
    }
    
    let id: Int
    let launchDate: String?
    let crew: [CrewRole]
    let description: String
}
