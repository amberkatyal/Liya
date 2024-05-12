//
//  RoutineBuilderView.swift
//  Liya
//
//  Created by Amber Katyal on 12/05/24.
//

import SwiftUI

enum Day: String {
    case Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday
}

struct RoutineBuilderView: View {

    @State private var day: String = "Monday"

    var body: some View {
        VStack {
            Text("Which all days you want this Routine?")
            TextField("Day", text: $day)
            Spacer()
            Text("Which part of the day you want to follow this Routine?")
            TextField("Part of the Day", text: $day)
            Spacer()
            Text("What time do you want to begin this Routine?")
            TextField("Starting time", text: $day)
        }
    }
}
