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
                    HStack {
                        Image(systemName: "phone")
                            .foregroundColor(Color.blue)
                        Text(person.phone)
                    }
                    HStack {
                        Image(systemName: "at")
                            .foregroundColor(Color.blue)
                        Text(person.email)
                    } 
                } header: {
                    Text(person.name)
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
