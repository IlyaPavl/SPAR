//
//  MainTabView.swift
//  Spar
//
//  Created by ily.pavlov on 31.01.2024.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            ContentView()
                .tabItem {
                    Image(systemName: "house")
                    
                    Text("Главная")
                }
            
            CatalogView()
                .tabItem {
                    Image(systemName: "square.grid.2x2")
                    Text("Каталог")
                }
            
            CartView()
                .tabItem {
                    Image(systemName: "cart")
                    Text("Корзина")
                }
            
            ProfileView()
                .tabItem {
                    Image(systemName: "person")
                    Text("Профиль")
                }
        }
        .accentColor(Constants.baseColor)
    }
}

struct CatalogView: View {
    var body: some View {
        Text("Здесь будет каталог продуктов")
    }
}

struct CartView: View {
    var body: some View {
        Text("Здесь будет Ваша корзина")
    }
}

struct ProfileView: View {
    var body: some View {
        Text("Здесь будет страница Вашего профиля")
    }
}


#Preview {
    MainTabView()
}
