//
//  DetailListView.swift
//  ContactListSwiftUI
//
//  Created by Aleksei Voronovskii on 6/4/23.
//

import SwiftUI

struct DetailListView: View {
    var persons: [Person]
    
    var body: some View {
        NavigationStack {
            List(persons, id: \.self) { person in
                Section {
                    Label(person.phone, systemImage: "phone")
                    Label(person.email, systemImage: "at")
                } header: {
                    Text(person.name).font(.headline)
                }
                
            }
            .navigationTitle("Contact List")
            .listStyle(.plain)
        }
    }
}


struct ContactDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailListView(persons: Person.getPersons())
    }
}
