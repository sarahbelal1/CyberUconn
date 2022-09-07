

import SwiftUI

struct CategoryRow: View {
    var categoryName: String
    var items: [Cyber]

    var body: some View {
        VStack(alignment: .leading) {
            Text(categoryName)
                .font(.headline)
                .padding(.leading, 15)
                .padding(.top, 5)

            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top, spacing: 0) {
                    ForEach(items) { cyber in
                        NavigationLink {
                            description(cyber: cyber)
                        } label: {
                            CategoryItem(cyber: cyber)
                        }
                    }
                }
            }
            .frame(height: 185)
        }
    }
}

struct CategoryRow_Previews: PreviewProvider {
    static var cybersecurity = ModelData().cybersecurity

    static var previews: some View {
        CategoryRow(
            categoryName: cybersecurity[1].category.rawValue,
            items: Array(cybersecurity.prefix(4))
        )
    }
}
