//
//  Extensions.swift
//  extensionsPractice
//
//  Created by Javier Porras jr on 10/22/19.
//  Copyright © 2019 Javier Porras jr. All rights reserved.
//

import UIKit

extension Bool {
    mutating func toggle() {
        self = !self
    }
}//myBool.toggle()


extension Optional where Wrapped == Bool {
    var unwrappedOrFalse: Bool {
        switch self {
        case .some(let unwrapped):
            return unwrapped
        case .none:
            return false
        }
    }
}

extension Optional where Wrapped == Int {
    var unwrappedOrZero: Int {
        switch self {
        case .some(let unwrapped):
            return unwrapped
        case .none:
            return 0
        }
    }
}

/*                 -Example of using on a custom object-              */
/*
struct MyObject {
    var myProperty: String?
}

extension Optional where Wrapped == MyObject {
    var unwrappedOrInit: MyObject {
        
        switch self {
        case .some(let unwrapped):
            return unwrapped
            
        case .none:
            return MyObject()
        }
    }
} */
/*
enum Animal: String {
    case unknown
    case dog
    case cat
}

extension Optional where Wrapped == Animal {
    var unwrappedOrUnknown: Animal {
        
        switch self {
        case .some(let unwrapped):
            return unwrapped
            
        case .none:
            return .unknown
        }
    }
}

var kindOfAnimal = Animal(rawValue: "dinosaur").unwrappedOrUnknown
*/


/*          -Not quite sure, but has to do with protocols-      */
/* Just make your UITableViewCell subclass conform to this protocol and this changes to this *//*
protocol CellRegistrable {
    static var identifier: String { get }
    static var nib: UINib { get }
}

extension CellRegistrable {
    /// Defaults value to the name of the class
    static var identifier: String {
        return String(describing: Self.self)
    }
    
    static var nib: UINib {
        return UINib(nibName: identifier, bundle: nil)
    }
}

 /////then it gets used like this
 tableView.register(MyCell.nib, forCellReuseIdentifier: MyCell. identifier)
 */




