//
//  Images.swift
//  UpTodo
//
//  Created by oguzhan on 19.11.2024.
//

import SwiftUI

struct ImageItems{

    enum Onboard: String{
        case onboard1 = "img_onboard1"
        case onboard2 = "img_onboard2"
        case onboard3 = "img_onboard3"
    }
    
    enum App: String{
        case noTask = "img_no_task"
        case uptodo = "img_uptodo"
    }

}

extension String{
        /// String path to image
        /// - Returns: related image from image asset
    func image() -> Image{
        return Image(self)
    }
}
