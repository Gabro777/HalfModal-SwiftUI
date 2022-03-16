//
//  ModalView.swift
//  halfModal
//
//  Created by Gabriele Cusimano on 16/03/22.
//

import SwiftUI

struct ModalView: View {
    @Binding var visible: Bool
    var body: some View {
        
        VStack {
            Text("hello world")
                .padding()
            Spacer()
            Button(action: {visible.toggle()}) {
                Text("dismiss")
            }
            .padding()
        }
    }
    
}

struct ModalView_Previews: PreviewProvider {
    static var previews: some View {
        ModalView(visible: .constant(false))
    }
}
