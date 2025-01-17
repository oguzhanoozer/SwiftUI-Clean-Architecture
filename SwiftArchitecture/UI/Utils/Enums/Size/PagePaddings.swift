//
//  PagePaddings.swift
//  UpToDo
//
//  Created by oguzhan on 27.10.2024.
//

import Foundation

struct PagePaddings{
    enum All: Double{
        case lowest = 4
        case low = 8
        case mediumLow = 10
        case medium = 12
        case normal = 15
        case high = 20
    }

    enum Horizontal: Double{
        case lowest = 5
        case low = 10
        case normal = 20
        case high = 30
    }

    enum Vertical: Double{
        case lowest = 5
        case low = 10
        case normal = 20
        case high = 30
    }

    
    enum Component: Double{
        case low = 2
    }
}
