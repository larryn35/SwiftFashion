//
//  ContentView.swift
//  SwiftFashion
//
//  Created by Larry Nguyen on 4/7/23.
//

import SwiftUI

struct ContentView: View {
#if os(iOS)
    @Environment(\.horizontalSizeClass) private var horizontalSizeClass
#endif

    var body: some View {
#if os(iOS)
        if horizontalSizeClass == .compact {
            AppTabView()
        } else {
            AppNavSplitView()
        }
#else
        AppNavSplitView()
#endif
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
