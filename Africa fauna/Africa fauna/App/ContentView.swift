//
//  ContentView.swift
//  Africa fauna
//
//  Created by Erasmo J.F Da Silva on 10/07/21.
//
//  Copyright @ Erasmo J.F Da Silva
//  All right reserved
//  Better Apps ♡ Less Code


import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    
    let animals: [Animal] = Bundle.main.decode("animals.json")
    let haptics = UIImpactFeedbackGenerator(style: .medium)
    
    @State private var isGridViewAtive: Bool = false
    
    @State private var gridLayout: [GridItem] = [GridItem(.flexible())]
    @State private var gridColumn: Int = 1
    @State private var toolbarIcon: String = "square.grid.2x2"
    
    // MARK: - FUNCTIONS
    
    func gridSwicth() {
        gridLayout = Array(repeating: .init(.flexible()), count: gridLayout.count % 3 + 1)
        gridColumn = gridLayout.count
        print("Grid Numbber: \(gridColumn)")
        
        // TOOLBAR IMAGE
        switch gridColumn {
        case 1:
            toolbarIcon = "square.grid.2x2"
        case 2:
            toolbarIcon = "square.grid.3x2"
        case 3:
            toolbarIcon = "rectangle.grid.1x2"
        default:
            toolbarIcon = "square.grid.2x2"
        }
    }
    
    // MARK: - BODY
    var body: some View {
        NavigationView {
            Group {
                if !isGridViewAtive {
                    List {
                      CoverImageView()
                        .frame(height: 300)
                        .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                        
                        ForEach (animals) { animal in
                            NavigationLink(destination: AnimalDetailView(animal: animal)) {
                                AnimalListItemView(animal: animal)
                            }//: Link
                        }// LOOP
                        CreditsView()
                            .modifier(CenterModifier())
                    }// LIST
                } else {
                    ScrollView(.vertical, showsIndicators: false) {
                        LazyVGrid(columns: gridLayout, alignment: .center, spacing: 10) {
                            ForEach(animals) { animal in
                                NavigationLink(destination: AnimalDetailView(animal: animal)) {
                                    AnimalGridItemView(animal: animal)
                                }//LINK
                            }// LOOP
                        }//Grid
                    }// SCROLL
                    .padding(10)
                    .animation(.easeIn)
                }// CONDITION
            }// GROUP
        
            .navigationBarTitle("Africa", displayMode: .large)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading){
                    HStack(spacing: 16) {
                        //LIST
                        Button(action: {
                            print("List view is activated")
                            isGridViewAtive = false
                            haptics.impactOccurred()
                        }) {
                            Image(systemName: "square.fill.text.grid.1x2")
                                .font(.title2)
                                .foregroundColor(isGridViewAtive ? .primary : .accentColor)
                        }
                        //GRID
                        Button(action: {
                            print("Grid view is activated")
                            isGridViewAtive = true
                            haptics.impactOccurred()
                            gridSwicth()
                            
                        }) {
                            Image(systemName: toolbarIcon)
                                .font(.title2)
                                .foregroundColor(isGridViewAtive ? .accentColor : .primary)
                        }
                            
                        
                    }// HStack
                }// BUTTONS
            }// Tolbar
        }// NAVIGATION
    }
}

// MARK: - PREVIEW

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
