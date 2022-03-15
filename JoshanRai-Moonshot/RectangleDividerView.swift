//
//  RectangleDivider.swift
//  JoshanRai-Moonshot
//
//  Created by Joshan Rai on 3/14/22.
//

import SwiftUI

struct RectangleDividerView: View {
    var body: some View {
        Rectangle()
            .frame(height: 2)
            .foregroundColor(.lightBackground)
            .padding(.vertical)
    }
}

struct RectangleDividerView_Previews: PreviewProvider {
    static var previews: some View {
        RectangleDividerView()
    }
}
