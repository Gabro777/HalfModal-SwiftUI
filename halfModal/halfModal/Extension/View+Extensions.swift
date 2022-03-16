//
//  View+Extensions.swift
//  halfModal
//
//  Created by Gabriele Cusimano on 16/03/22.
//

import Foundation
import SwiftUI

extension View {
    
    @ViewBuilder func halfModal(content: AnyView, onDismiss: Binding<Bool>) -> some View {
        overlay(HalfModal(visible: onDismiss, contentView: content))
    }
    
    var view : AnyView {
        return AnyView(self)
    }
}
