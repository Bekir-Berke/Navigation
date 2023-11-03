//
//  ContentView.swift
//  Navigation
//
//  Created by Bekir Berke Yılmaz on 3.11.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var path = NavigationPath()
    var body: some View {
        NavigationStack(path: $path){
            List{
                Section("Platform"){
                    ForEach(platforms, id: \.name){platform in
                        NavigationLink(value: platform){
                            Label(platform.name, systemImage: platform.imageName)
                                .foregroundStyle(platform.color)
                        }
                    }
                }
                Section("Games"){
                    ForEach(games, id:\.name){game in
                        NavigationLink(value: game){
                            Text(game.name)
                        }
                    }
                }
            }.navigationTitle("Gaming")
            .navigationDestination(for: Platform.self){platform in
                ZStack{
                    platform.color.ignoresSafeArea()
                    VStack{
                        Label(platform.name, systemImage: platform.imageName)
                            .font(.largeTitle).bold()
                        List{
                            ForEach(games, id:\.name){game in
                                NavigationLink(value: game){
                                    Text(game.name)
                                }
                            }
                        }
                    }
                }
            }
            .navigationDestination(for: Game.self){game in
                VStack(spacing: 20){
                    Text("\(game.name) - \(game.rating)")
                        .font(.largeTitle.bold())
                    Button("Recommended game"){
                        path.append(games.randomElement()!)
                    }
                    Button("Go to  anohter platform"){
                        path.append(platforms.randomElement()!)
                    }
                    Button("Go home"){
                        path.removeLast(path.count)
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
