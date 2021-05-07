//
//  ContentView.swift
//  NavigationLinkApp
//
//  Created by Сахар Кубический on 07.05.2021.
//

import SwiftUI



struct DetailView: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        
        VStack {
            Text("This is the detail view")
            Button("Back") {
                self.presentationMode.wrappedValue.dismiss()
            }
        }

            
            
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

struct DetailView2: View {
    var body: some View {
        Text("Detail")
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
    @State private var showingDetail = false
    var body: some View {
        Button(action: {
            self.showingDetail.toggle()
        }) {
            Text("Show detail")
        } .sheet(isPresented: $showingDetail) {
            DetailView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
