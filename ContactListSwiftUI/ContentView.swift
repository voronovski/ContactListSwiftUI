//
//  ContentView.swift
//  ContactListSwiftUI
//
//  Created by Aleksei Voronovskii on 6/4/23.
//

import SwiftUI

struct ContentView: View {
    private var persons = Person.getPersons()
    
    var body: some View {
        TabView {
            ContactListView(persons: persons)
                .tabItem {
                    Image(systemName: "person.2.fill")
                    Text("Contacts")
                }

            DetailListView(persons: persons)
                .tabItem {
                    Image(systemName: "phone")
                    Text("Numbers")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
