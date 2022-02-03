//
//  NumberRow.swift
//  HW_3.5
//
//  Created by Егор Кромин on 03.02.2022.
//

import SwiftUI

struct NumberRow: View {
    
    let person: Person

    
    var body: some View {
        
        VStack {
            List {
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

                
            }.listStyle(InsetGroupedListStyle())
            .navigationTitle(person.fullName)
        }
    }
}

struct NumberRow_Previews: PreviewProvider {
    static var previews: some View {
        NumberRow(person: Person.getContact())
    }
}
