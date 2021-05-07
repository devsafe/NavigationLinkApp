//
//  ContentView.swift
//  NavigationLinkApp
//
//  Created by Сахар Кубический on 07.05.2021.
//

import SwiftUI



struct DetailView: View {
    var body: some View {
        Text("This is the detail view")
    }
}


struct Dog: Identifiable {
    var id = UUID()
    var name: String
}


struct DogRow: View {
    var dog: Dog
    var body: some View {
        Text(dog.name)
    }
}

struct DogView: View {
    var dog: Dog
    var body: some View {
        Text("Come and choose a \(dog.name)")
            .font(.largeTitle)
    }
}


struct ContentView: View {
    var body: some View {
        let first = Dog(name: "Sobaka")
        let dogs = [first]
        
        return NavigationView {
            List(dogs) { dog in
                NavigationLink(destination: DogView(dog: dog))
                    { DogRow(dog: dog) }
            }.navigationBarTitle("Choose a dog")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
