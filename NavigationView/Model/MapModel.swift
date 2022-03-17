//
//  MapModel.swift
//  NavigationView
//
//  Created by calmkeen on 2022/03/17.
//

import Foundation
import SwiftUI

struct ColorDetail: View {
    var color: Color

    var body: some View {
        color
            .frame(width: 200, height: 200)
            .navigationTitle(color.description.capitalized)
    }
}
