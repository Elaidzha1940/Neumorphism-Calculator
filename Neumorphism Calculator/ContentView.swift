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
            
            VStack(alignment: .center, spacing: 20) {
                
                //MARK: Large Calculator Bytton
                ZStack {
                    RoundedRectangle(cornerRadius: 40)
                        .frame(width: UIScreen.main.bounds.width - 40, height: 200, alignment: .center)
                        .foregroundColor(.blue)
                        .modifier(BrightShadow(radius: 10, topShadowX: -10, topShadowY: -10, bottomShadowX: 10, bottomShadowY: 10))
                    
                    HStack {
                        
                        Spacer()
                        
                        Text("400")
                            .bold()
                            .font(.title)
                            //.font(.custom("", size: 30))
                            .multilineTextAlignment(.trailing)
                        
                        Spacer()
                            .frame(width: 40, height: nil, alignment: .center)
                    }
                }
                
                //MARK: Row 1
                HStack(alignment: .center, spacing: 20) {
                    
                    CalculatorButton(text: "AC", shadowRadius: 5, textColor: .black, width: UIScreen.main.bounds.width / 6, height: UIScreen.main.bounds.width / 6, fontSize: 15)
                    CalculatorButton(text: "+/-", shadowRadius: 5, textColor: .black, width: UIScreen.main.bounds.width / 6, height: UIScreen.main.bounds.width / 6, fontSize: 15)
                    CalculatorButton(text: "%", shadowRadius: 5, textColor: .black, width: UIScreen.main.bounds.width / 6, height: UIScreen.main.bounds.width / 6, fontSize: 15)
                    CalculatorButton(text: "/", shadowRadius: 5, textColor: .black, width: UIScreen.main.bounds.width / 6, height: UIScreen.main.bounds.width / 6, fontSize: 15)
                }
                
                //MARK: Row 2
                HStack(alignment: .center, spacing: 20) {
                    
                    CalculatorButton(text: "7", shadowRadius: 5, textColor: .black, width: UIScreen.main.bounds.width / 6, height: UIScreen.main.bounds.width / 6, fontSize: 15)
                    CalculatorButton(text: "8", shadowRadius: 5, textColor: .black, width: UIScreen.main.bounds.width / 6, height: UIScreen.main.bounds.width / 6, fontSize: 15)
                    CalculatorButton(text: "9", shadowRadius: 5, textColor: .black, width: UIScreen.main.bounds.width / 6, height: UIScreen.main.bounds.width / 6, fontSize: 15)
                    CalculatorButton(text: "x", shadowRadius: 5, textColor: .black, width: UIScreen.main.bounds.width / 6, height: UIScreen.main.bounds.width / 6, fontSize: 15)
                }
                
                //MARK: Row 3
                HStack(alignment: .center, spacing: 20) {
                    
                    CalculatorButton(text: "4", shadowRadius: 5, textColor: .black, width: UIScreen.main.bounds.width / 6, height: UIScreen.main.bounds.width / 6, fontSize: 15)
                    CalculatorButton(text: "5", shadowRadius: 5, textColor: .black, width: UIScreen.main.bounds.width / 6, height: UIScreen.main.bounds.width / 6, fontSize: 15)
                    CalculatorButton(text: "6", shadowRadius: 5, textColor: .black, width: UIScreen.main.bounds.width / 6, height: UIScreen.main.bounds.width / 6, fontSize: 15)
                    CalculatorButton(text: "-", shadowRadius: 5, textColor: .black, width: UIScreen.main.bounds.width / 6, height: UIScreen.main.bounds.width / 6, fontSize: 15)
                }
                
                //MARK: Row 4
                HStack(alignment: .center, spacing: 20) {
                    
                    CalculatorButton(text: "1", shadowRadius: 5, textColor: .black, width: UIScreen.main.bounds.width / 6, height: UIScreen.main.bounds.width / 6, fontSize: 15)
                    CalculatorButton(text: "2", shadowRadius: 5, textColor: .black, width: UIScreen.main.bounds.width / 6, height: UIScreen.main.bounds.width / 6, fontSize: 15)
                    CalculatorButton(text: "3", shadowRadius: 5, textColor: .black, width: UIScreen.main.bounds.width / 6, height: UIScreen.main.bounds.width / 6, fontSize: 15)
                    CalculatorButton(text: "+", shadowRadius: 5, textColor: .black, width: UIScreen.main.bounds.width / 6, height: UIScreen.main.bounds.width / 6, fontSize: 15)
                }
                
                //MARK: Row 5
                HStack(alignment: .center, spacing: 20) {
                    
                    CalculatorButton(text: ".", shadowRadius: 5, textColor: .black, width: 170, height: UIScreen.main.bounds.width / 6, fontSize: 15)
                    CalculatorButton(text: "+", shadowRadius: 5, textColor: .black, width: UIScreen.main.bounds.width / 6, height: UIScreen.main.bounds.width / 6, fontSize: 15)
                    CalculatorButton(text: "=", shadowRadius: 5, textColor: .black, width: UIScreen.main.bounds.width / 6, height: UIScreen.main.bounds.width / 6, fontSize: 15)
                  
                }
            }
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
    
    init(radius : CGFloat, topShadowX: CGFloat, topShadowY: CGFloat, bottomShadowX: CGFloat, bottomShadowY: CGFloat) {
        
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
        _textColor = textColor
    
    }
    
    var body: some View {
        
        ZStack {
            RoundedRectangle(cornerRadius: _height / 2)
                .frame(width: _width, height: _height, alignment: .center)
                .foregroundColor(.blue)
                .modifier(BrightShadow(radius: _shadowRadius, topShadowX: _shadowRadius, topShadowY: _shadowRadius, bottomShadowX: _shadowRadius, bottomShadowY: _shadowRadius))
            
            Text(_text)
                .foregroundColor(_textColor )
                .font(.title3)
                //.font(.custom("", size: _fontSize))
        }
    }
}
