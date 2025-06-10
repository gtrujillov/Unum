//
//  Font+.swift
//  Unum
//
//  Created by Gonzalo Trujillo Vallejo on 10/6/25.
//

import Foundation
import SwiftUI

extension Font {
    static func heading(_ size: CGFloat = 24) -> Font {
        .system(size: size, weight: .bold, design: .rounded)
    }

    static func body(_ size: CGFloat = 16) -> Font {
        .system(size: size, weight: .regular, design: .rounded)
    }

    static func caption(_ size: CGFloat = 12) -> Font {
        .system(size: size, weight: .medium, design: .rounded)
    }
}
