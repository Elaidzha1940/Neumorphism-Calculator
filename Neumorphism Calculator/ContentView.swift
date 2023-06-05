//  /*
//
//  Project: Neumorphism Calculator
//  File: ContentView.swift
//  Created by: Elaidzha Shchukin
//  Date: 04.06.2023
//
//  */

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack {
            
            Rectangle()
                .foregroundColor(.gray.opacity(0.9))
        }
        .ignoresSafeArea()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct BrightShadow: ViewModifier {
    
    var _radius: CGFloat
    var _topShadowX: CGFloat
    var _topShadowY: CGFloat
    var _bottomShadowX: CGFloat
    var _bottomShadowY: CGFloat
    
    init(radius : CGFloat, _topShadowX: CGFloat, _topShadowY: CGFloat, _bottomShadowX: CGFloat, _bottomShadowY: CGFloat) {
        
        _radius = radius
        _topShadowX = topShadowX
        _topShadowY = topShadowY
        _bottomShadowX = bottomShadowX
        _bottomShadowY = bottomShadowY
        
    }
    
    func body(content: Content) -> some View {
        return content.shadow(color: .white.opacity(0.75),
                              radius: _radius, x: _topShadowX, y: _topShadowY)
        .shadow(color: .blue, radius: _radius, x: _bottomShadowX, y: _bottomShadowY)
        
    }
}

struct CalculatorButton: View {
    
    var _text: String
    var _shadowRadius: CGFloat
    var _textColor: Color
    var _fontSize: CGFloat
    var _width: CGFloat
    var _height: CGFloat
    
    init(text: String, shadowRadius: CGFloat, textColor: Color, width: CGFloat, height: CGFloat, fontSize: CGFloat) {
        
        _text = text
        _shadowRadius = shadowRadius
        _width = width
        _height = height
        _fontSize = fontSize
    
    }
    
    var body: some View {
        
        ZStack {
            RoundedRectangle(cornerRadius: _height / 2)
                .frame(width: _width, height: _height, alignment: .center)
                .foregroundColor(.blue)
                .modifier(BrightShadow(radius: _shadowRadius, _topShadowX: _shadowRadius, _topShadowY: _shadowRadius, _bottomShadowX: _shadowRadius, _bottomShadowY: _shadowRadius))
        }
    }
}
