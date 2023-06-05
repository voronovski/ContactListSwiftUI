//
//  ContactDetailView.swift
//  ContactListSwiftUI
//
//  Created by Aleksei Voronovskii on 6/4/23.
//

import SwiftUI

struct ContactDetailView: View {
    let person: Person
    
    var body: some View {
        List {
            HStack {
                Spacer()
                Image(systemName: "person.fill")
                    .resizable()
                    .frame(width: 100, height: 100)
                Spacer()
            }
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
        }
        .navigationTitle(person.name)
    }
}

struct ContactDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ContactDetailView(person: Person.getPersons()[0])
    }
}
