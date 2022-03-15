//
//  ContentView.swift
//  JoshanRai-Moonshot
//
//  Created by Joshan Rai on 3/14/22.
//

import SwiftUI

struct ContentView: View {
    let astronauts: [String: Astronaut] = Bundle.main.decode("astronauts.json")
    let missions: [Mission] = Bundle.main.decode("missions.json")
    
    let columns = [
        GridItem(.adaptive(minimum: 150))
    ]
    
    @State private var showingGrid = true
    
    var body: some View {
        NavigationView {
            Group {
                if showingGrid {
                    GridLayoutView(astronauts: astronauts, missions: missions)
                } else {
                    ListLayoutView(astronauts: astronauts, missions: missions)
                }
            }
            .navigationTitle("Moonshot")
            .toolbar {
                Button(action: {
                    showingGrid.toggle()
                }) {
                    Image(systemName: (showingGrid ? "list.bullet.circle" : "grid.circle"))
                }
            }
            .background(.darkBackground)
            .preferredColorScheme(.dark)
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
