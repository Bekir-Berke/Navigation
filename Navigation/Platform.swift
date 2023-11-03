//
//  Platform.swift
//  Navigation
//
//  Created by Bekir Berke Yılmaz on 3.11.2023.
//

import Foundation
import SwiftUI

struct Platform: Hashable{
    let name: String
    let imageName: String
    let color: Color
}
struct Game: Hashable{
    let name: String
    let rating: String
}
var platforms: [Platform] = [.init(name: "Xbox", imageName: "xbox.logo", color: .green),
                             .init(name: "Playstation", imageName: "playstation.logo", color: .indigo),
                             .init(name: "PC", imageName: "pc", color: .pink),
                             .init(name: "Mobile", imageName: "iphone", color: .mint)]
var games: [Game] = [.init(name: "Minecraft", rating: "99"),
                     .init(name: "God of War", rating: "98"),
                     .init(name: "Fortnite", rating: "92"),
                     .init(name: "Madden 2023", rating: "88")]

