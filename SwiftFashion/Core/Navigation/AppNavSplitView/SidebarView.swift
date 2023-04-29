//
//  SidebarView.swift
//  SwiftFashion
//
//  Created by Larry Nguyen on 4/26/23.
//

import SwiftUI

struct SidebarView: View {
    @Binding var selectedCategory: ProductCategory?

    var body: some View {
        VStack {
            List(selection: $selectedCategory) {
                Section(L10n.Sidebar.categories) {
                    ForEach(ProductCategory.allCases, id: \.self) { category in
                        Text(category.rawValue)
                            .foregroundColor(category == selectedCategory ? Color(uiColor: .systemBackground) : .primary)
                    }
                }
            }
            .padding(.top)
            .scrollContentBackground(.hidden)
        }
    }
}

struct SidebarView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationSplitView {
            SidebarView(selectedCategory: .constant(.all))
        } detail: {
            Text("Hello world")
        }
    }
}
