//
//  DetailedContactView.swift
//  HW_3.5
//
//  Created by Егор Кромин on 03.02.2022.
//

import SwiftUI

struct DetailedContactView: View {
    
    let person: Person
    
    var body: some View {
        
        VStack {
            List {
                HStack {
                    Spacer()
                    Image(systemName: "person.fill")
                        .resizable()
                        .frame(width: 150, height: 150)
                    Spacer()
                }
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
            }.listStyle(InsetGroupedListStyle())
            .navigationTitle(person.fullName)
        }
    }
}

struct DetailedContactView_Previews: PreviewProvider {
    static var previews: some View {
        DetailedContactView(person: Person.getContact())
    }
}
