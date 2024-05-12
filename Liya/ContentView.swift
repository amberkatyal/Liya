//
//  ContentView.swift
//  Liya
//
//  Created by Amber Katyal on 12/05/24.
//

import SwiftUI
import SwiftData


// Make view for taking input on schedules for reminding this thing?
// How can we make it interactive input.
// Aim was to help in building a routine, and telling you what needs to be done based on you prioritizing the tasks.
// A questionnaire on inputs that they can reflect on.
// Additiction tackler
// Procrastination Tackler
// Mood tackler


// Morning Routine Builder -- You define your routine of actions. You get notified when those routines begins. Add analytics on those when did you perform missed etc.

struct ContentView: View {
    @Environment(\.modelContext) private var modelContext
    @Query private var items: [Item]

    var body: some View {
        NavigationSplitView {
            VStack {
                Spacer(minLength: 72)
                Text("Lets start building you a habit routine 😊")
                NavigationLink {
                    RoutineBuilderView()
                } label: {
                    Text("New Routine 🍎")
                }
                List {
                    ForEach(items) { item in
                        NavigationLink {
                            Text(item.title)
                        } label: {
                            Text(item.title)
                        }
                    }
                    .onDelete(perform: deleteItems)
                }
            }

            .navigationTitle("Hello, Good Day!")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    EditButton()
                }
                ToolbarItem {
                    NavigationLink {
                        AddItemView()
                    } label: {
                        Label("Add Item", systemImage: "plus")
                    }
                }
            }
        } detail: {
            Text("Select an item")
        }
    }

    private func deleteItems(offsets: IndexSet) {
        withAnimation {
            for index in offsets {
                modelContext.delete(items[index])
            }
        }
    }
}

#Preview {
    ContentView()
        .modelContainer(for: Item.self, inMemory: true)
}
