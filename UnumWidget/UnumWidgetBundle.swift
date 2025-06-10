//
//  UnumWidgetBundle.swift
//  UnumWidget
//
//  Created by Gonzalo Trujillo Vallejo on 10/6/25.
//

import WidgetKit
import SwiftUI

@main
struct UnumWidgetBundle: WidgetBundle {
    var body: some Widget {
        UnumWidget()
        UnumWidgetControl()
        UnumWidgetLiveActivity()
    }
}
