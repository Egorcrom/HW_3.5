//
//  NumbersListView.swift
//  HW_3.5
//
//  Created by Егор Кромин on 03.02.2022.
//

import SwiftUI

struct NumbersListView: View {
    let persons: [Person]
    
//    var body: some View {
//
//        List(persons) { person in
//            NumberRow(person: person)
//                .frame(height: 170)
//        }.listStyle(.sidebar)
//            .navigationTitle("Contact List")
//    }
//}
    
    
    var body: some View {
        
        List(persons) { person in
            Section {
                HStack {
                    Image(systemName: Contacts.phone.rawValue)
                        .foregroundColor(.blue)
                    Text(person.phoneNumber)
                }
                HStack {
                    Image(systemName: Contacts.email.rawValue)
                        .foregroundColor(.blue)
                    Text(person.email)
                }
            
            } header: {
                Text("\(person.fullName)")
            }
        }.listStyle(InsetGroupedListStyle())//.listStyle(.sidebar)
            .navigationTitle("Contact List")
    }
}


struct NumbersListView_Previews: PreviewProvider {
    static var previews: some View {
        NumbersListView(persons: Person.getContactList())
    }
}
