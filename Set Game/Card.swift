//
//  Card.swift
//  Set Game
//
//  Created by Jelly Slather on 2/16/18.
//  Copyright © 2018 Rudinski. All rights reserved.
//

import Foundation

enum ShapeType: String {
    case Triangle = "\u{25B2}"
    case Circle = "\u{25CF}"
    case Square = "\u{25A0}"
    
    func simpleDescription(){
        switch self {
        case .Triangle:
            print("\u{25B2}")
        case .Circle:
            print("\u{25CF}")
        case .Square:
            print("\u{25A0}")
            
        }
    }
}

enum ShapeColor: String {
    case redShape = "\u{25B2}"
    case greenShape = "\u{25CF}"
    case purpleShape = "\u{25A0}"
}

enum ShapeShade: String {
    case Triangle = "\u{25B2}"
    case Circle = "\u{25CF}"
    case Square = "\u{25A0}"
}

struct Card {
    var shapeType: ShapeType
    var shapeColor: ShapeColor
    var shapeShade: ShapeShade
    func simpleDescription() -> String {
        return "The \(ShapeType.simpleDescription()) is \(ShapeColor.simpleDescription()) and \(ShapeShade.simpleDescription())"
    }
    var identifier: Int
    
    static var identifierFactory = 0
    
    static func getUniqueIdentifier() -> Int {
        identifierFactory += 1
        return identifierFactory
    }
    
    init(){
        self.identifier = Card.getUniqueIdentifier()
    }
    
    func createDeck() -> [Card] {
        let shapeType = [_, _, _]
        let shapeColor = [_, _, _]
        let shapeShade = [_, _, _]
        //fill in the array with shapeType.Triangle etc
        var deck = [Card]()
        for shapeType in shapeType {
            for shapeColor in shapeColor {
                for shapeShade in shapeShade {
                    deck.append(Card(shapeType: shapeType, shapeColor: shapeColor, shapeShade: shapeShade))
                }
            }
        }
    }
}
 */
