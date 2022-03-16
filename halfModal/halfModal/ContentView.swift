//
//  ContentView.swift
//  halfModal
//
//  Created by Gabriele Cusimano on 16/03/22.
//

import SwiftUI

struct ContentView: View {
    @State var visibile: Bool = false
    var body: some View {
        VStack {
            
            Button(action: {visibile.toggle()}) {
                Text("show")
            }
            .padding()
            
            Spacer()
        }.halfModal(content: ModalView(visible: $visibile).view , onDismiss: $visibile)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


