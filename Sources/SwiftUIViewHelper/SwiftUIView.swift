//
//  SwiftUIView.swift
//  
//
//  Created by Personal on 16/07/24.
//

import SwiftUI

public struct ButtonViewHelper: View {
    public var name: String
    public var action: (() -> ())?
    public var width: CGFloat
    public var height: CGFloat
    public init(name: String, action: (() -> ())? = nil, width: CGFloat, height: CGFloat) {
        self.name = name
        self.action = action
        self.width = width
        self.height = height
    }
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
