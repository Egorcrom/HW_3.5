//
//  ContactsListView.swift
//  HW_3.5
//
//  Created by Егор Кромин on 03.02.2022.
//

import SwiftUI

struct ContactsListView: View {
    
    let persons: [Person]
    
    var body: some View {
        List(persons) { person in
            ZStack {
                NavigationLink(" ", destination: DetailedContactView(person: person))
                    ContactsRow(person: person)
            }
        }.listStyle(.plain)
    }
}
 

struct ContactsListView_Previews: PreviewProvider {
    static var previews: some View {
        ContactsListView(persons: Person.getContactList())
    }
}
