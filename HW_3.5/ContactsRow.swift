//
//  ContactsRow.swift
//  HW_3.5
//
//  Created by Егор Кромин on 03.02.2022.
//

import SwiftUI

struct ContactsRow: View {
    
    let person: Person
    
    var body: some View {
        HStack {
            Text(person.fullName).frame(alignment: .leading)
            Spacer()
        }
    }
}

struct ContactsRow_Previews: PreviewProvider {
    static var previews: some View {
        ContactsRow(person: Person.getContact())
    }
}
