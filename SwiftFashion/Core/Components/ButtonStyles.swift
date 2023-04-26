//
//  ButtonStyles.swift
//  SwiftFashion
//
//  Created by Larry Nguyen on 4/13/23.
//

import SwiftUI

struct SizeButtonStyle: ButtonStyle {
    @Binding var selectedSize: String
    var clothingSize: String = ""

    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .font(.headline)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .foregroundColor(clothingSize == selectedSize ? Color(uiColor: .systemBackground) : .primary)
            .background(background)
            .contentShape(Rectangle())
    }

    private var background: some View {
        let rectangle = RoundedRectangle(cornerRadius: 12)

        return rectangle
            .stroke(Color.primary, lineWidth: 2)
            .background(rectangle.fill(clothingSize == selectedSize ? Color.primary : .clear))
    }
}

struct PrimaryButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .frame(maxWidth: .infinity)
            .foregroundColor(Color(uiColor: .systemBackground))
            .padding()
            .background(RoundedRectangle(cornerRadius: 12))
            .opacity(configuration.isPressed ? 0.8 : 1)
    }
}

struct SecondaryButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .frame(maxWidth: .infinity)
            .padding()
            .background(
                RoundedRectangle(cornerRadius: 12)
                    .fill(configuration.isPressed ? Color.primary.opacity(0.1) : Color.clear)
                    .overlay(
                        RoundedRectangle(cornerRadius: 12)
                            .strokeBorder()))
    }
}

struct ButtonStyles_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            VStack {
                Button("Primary button") { }
                    .buttonStyle(PrimaryButtonStyle())

                Button("Secondary button") { }
                    .buttonStyle(SecondaryButtonStyle())
            }

            VStack(alignment: .leading) {
                HStack {
                    ForEach(["S", "M", "L"], id: \.self) { size in
                        Button(size) { }
                            .buttonStyle(SizeButtonStyle(selectedSize: .constant(size), clothingSize: "S"))
                            .frame(width: 40, height: 40)
                    }
                }

                HStack {
                    ForEach(["9", "10", "11", "12"], id: \.self) { size in
                        Button(size) { }
                            .buttonStyle(SizeButtonStyle(selectedSize: .constant(size), clothingSize: "9"))
                            .frame(width: 40, height: 40)
                    }
                }
            }
            .previewDisplayName("SizeButtonStyle")
        }
        .padding()
        .previewLayout(.sizeThatFits)
    }
}
