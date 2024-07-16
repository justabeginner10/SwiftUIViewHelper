//
//  SwiftUIView.swift
//  
//
//  Created by Personal on 16/07/24.
//

import SwiftUI

public struct ButtonViewHelper: View {
    var name: String
    var action: (() -> ())?
    var width: CGFloat
    var height: CGFloat
    public var body: some View {
        Button {
            action?()
        } label: {
            Text(name)
                .font(.title)
                .padding()
                .frame(width: width, height: height)
                .foregroundColor(.white)
                .background(
                    RoundedRectangle(cornerRadius: 5)
                        .fill()
                )
        }
    }
}

#Preview {
    ButtonViewHelper(name: "Button", width: 200, height: 100)
}
