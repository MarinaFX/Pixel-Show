//
//  FlowLayout.swift
//  PixelShow
//
//  Created by Marina De Pazzi on 31/03/21.
//

import SwiftUI

struct FlowLayout<T: Hashable, V: View>: View {
    let mode: Mode
    let items: [T]
    let viewMapping: (T) -> V
    
    @State private var totalHeight: CGFloat
    
    init(mode: Mode, items: [T], viewMapping: @escaping (T) -> V) {
        self.mode = mode
        self.items = items
        self.viewMapping = viewMapping
        _totalHeight = State(initialValue: (mode == .scrollable) ? .zero : .infinity)
    }
    
    var body: some View {
        let stack = VStack {
            GeometryReader { geometry in
                self.content(in: geometry)
            }
        }
        return Group {
            if mode == .scrollable {
                stack.frame(height: totalHeight)
            } else {
                stack.frame(maxHeight: totalHeight)
            }
        }
    }
    
    private func content(in g: GeometryProxy) -> some View {
        var width = CGFloat.zero
        var height = CGFloat.zero
        return ZStack(alignment: .topLeading) {
            ForEach(self.items, id: \.self) { item in
                self.viewMapping(item)
                    .padding([.horizontal, .vertical], 4)
                    .alignmentGuide(.leading, computeValue: { d in
                        if (abs(width - d.width) > g.size.width) {
                            width = 0
                            height -= d.height
                        }
                        let result = width
                        if item == self.items.last {
                            width = 0
                        } else {
                            width -= d.width
                        }
                        return result
                    })
                    .alignmentGuide(.top, computeValue: { d in
                        let result = height
                        if item == self.items.last {
                            height = 0
                        }
                        return result
                    })
            }
        }
        .background(viewHeightReader($totalHeight))
    }
    
    private func viewHeightReader(_ binding: Binding<CGFloat>) -> some View {
        return GeometryReader { geo -> Color in
            DispatchQueue.main.async {
                binding.wrappedValue = geo.frame(in: .local).size.height
            }
            return .clear
        }
    }
    
    enum Mode {
        case scrollable, vstack
    }
}

struct FlowLayout_Previews: PreviewProvider {
    static var previews: some View {
        FlowLayout(mode: .scrollable,
                       items: ["Some long item here", "And then some longer one",
                               "Short", "Items", "Here", "And", "A", "Few", "More",
                               "And then a very very very long one"]) {
            Text($0)
                .font(.system(size: 12))
                .foregroundColor(.yellow)
                .padding()
                .background(ZStack{
                    RoundedRectangle(cornerRadius: 8, style: .continuous)
                        .foregroundColor(Color.green)
                    
                    RoundedRectangle(cornerRadius: 8, style: .continuous)
                        .stroke(Color.black, lineWidth: 1)
                })
        }.padding()
    }
}

