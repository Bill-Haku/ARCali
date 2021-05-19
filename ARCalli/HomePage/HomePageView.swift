//
//  HomePageView.swift
//  ARCalli
//
//  Created by Bill Haku on 2021/5/19.
//

import SwiftUI

struct HomePageView: View {
    init() {
        UITableView.appearance().backgroundColor = .clear
        UITableViewCell.appearance().backgroundColor = .clear
        UITableView.appearance().separatorStyle = .none
    }

    var body: some View {
        NavigationView {
            List {
                CardUnitView(cardUnit: HomePageCardDemo1)
                    .listRowBackground(Color(red: 233/255, green: 227/255, blue: 216/255).edgesIgnoringSafeArea(.all))
                    .shadow(radius: 30)

                CardUnitView(cardUnit: HomePageCardDemo2)
                    .listRowBackground(Color(red: 233/255, green: 227/255, blue: 216/255).edgesIgnoringSafeArea(.all))
                    .shadow(radius: 30)
            }
            
            .navigationBarTitle(Text("今日推荐"), displayMode: .large)
            .background(Color(red: 233/255, green: 227/255, blue: 216/255).edgesIgnoringSafeArea(.all))
        }
        
        .navigationViewStyle(StackNavigationViewStyle())
    }
    
}

struct HomePageView_Previews: PreviewProvider {
    static var previews: some View {
        HomePageView()
    }
}
