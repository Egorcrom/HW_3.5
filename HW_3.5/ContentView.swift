//
//  ContentView.swift
//  HW_3.5
//
//  Created by Егор Кромин on 03.02.2022.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        NavigationView {
            TabView {
                ContactsListView(persons: Person.getContactList())
                    .tabItem {
                        Image(systemName: "person.3.fill")
                        Text("Contacts")
                    }
                NumbersListView(persons: Person.getContactList())
                    .tabItem {
                        Image(systemName: "phone.fill")
                        Text("Numbers")
                    }
            }.navigationTitle("Contact List")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
