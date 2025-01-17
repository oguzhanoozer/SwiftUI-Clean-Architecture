//
//  DynamicSize+GeometryProxy.swift
//  UpToDo
//
//  Created by oguzhan on 27.10.2024.
//

import SwiftUI

extension GeometryProxy{
        /// Dynamic Height for device
        /// - Parameter height: Percent value
        /// - Returns: Calculated value for device width
    func dh(height: Double) -> Double{
        return size.height * height
    }

        /// Dynamic Width for device
        /// - Parameter height: Percent value
        /// - Returns: Calculated value for device width
    func dw(width: Double) -> Double{
        return size.width * width
    }
}
