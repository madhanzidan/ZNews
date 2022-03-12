//
//  ContentView.swift
//  ZNews
//
//  Created by Zidan Ramadhan on 11/03/22.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager() //Make this property as listener
    
    var body: some View {
        
        NavigationView {
            List(networkManager.posts) { post in
                NavigationLink(destination: NewsDetailView(url: post.url)) {
                    HStack {
                        //Use the points & title property from PostData
                        Text(String(post.points))
                            .font(Font.custom("BebasNeue-Regular", size: 21))
                            .bold()
                            .foregroundColor(Color(red: 0.46, green: 0.64, blue: 0.47))
                        
                        Text(post.title)
                    }
                }
                
            }
            .navigationTitle("#ZNews")
           
        }
        .onAppear {
            self.networkManager.fetchData()
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
