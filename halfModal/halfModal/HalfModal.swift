//
//  HalfModal.swift
//  halfModal
//
//  Created by Gabriele Cusimano on 16/03/22.
//
import SwiftUI

struct HalfModal: View {
    @Binding var visible: Bool
    @State var contentView: AnyView
    var view: some View {
        VStack {
            Spacer()
            Group {
                contentView
            }.frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height/2, alignment: .bottom)
                .background(Color.yellow)
        }.background(BackgroundCleanerView())
        
    }
    var body: some View {
        if visible {
            Color.black.opacity(0.3)
                .edgesIgnoringSafeArea(.all)
            
            VStack (alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 0, content: {
                
            }).fullScreenCover(isPresented: $visible, onDismiss: {}, content: {
                view
            })
                .frame(width: UIScreen.main.bounds.width, alignment: .center)
                .background(
                    Color.white
                )
        }
    }
}

struct sheetView_Previews: PreviewProvider {
    static var previews: some View {
        HalfModal(visible: .constant(true), contentView: EmptyView().view)
    }
}


