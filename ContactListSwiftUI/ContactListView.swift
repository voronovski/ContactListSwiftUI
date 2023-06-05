//
//  ContactListView.swift
//  ContactListSwiftUI
//
//  Created by Aleksei Voronovskii on 6/4/23.
//

import SwiftUI

struct ContactListView: View {
    let persons: [Person]
    
    var body: some View {
        List(persons, id: \.self) { person in
            Text(person.name)
        }
        .navigationTitle("Contact List")
        .listStyle(.plain)
    }
}

struct ContactList_Previews: PreviewProvider {
    static var previews: some View {
        ContactListView(persons: Person.getPersons())
    }
}
