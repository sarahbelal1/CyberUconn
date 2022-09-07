/*
See LICENSE folder for this sample’s licensing information.

Abstract:
A view showing a single category item.
*/

import SwiftUI

struct CategoryItem: View {
    var cyber: Cyber

    var body: some View {
        VStack(alignment: .leading) {
            cyber.image
                .renderingMode(.original)
                .resizable()
                .frame(width: 155, height: 155)
                .cornerRadius(5)
            Text(cyber.name)
                .foregroundColor(.primary)
                .font(.caption)
        }
        .padding(.leading, 15)
    }
}

struct CategoryItem_Previews: PreviewProvider {
    static var previews: some View {
        CategoryItem(cyber: ModelData().cybersecurity[1])
    }
}
