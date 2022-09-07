

import SwiftUI

struct CyberList: View {
    @EnvironmentObject var modelData: ModelData
    @State private var showFavoritesOnly = false

    var filteredCyber: [Cyber] {
        modelData.cybersecurity.filter { cyber in
            (!showFavoritesOnly || cyber.isFavorite)
        }
    }

    var body: some View {
        NavigationView {
            List {
                Toggle(isOn: $showFavoritesOnly) {
                    Text("Favorites only")
                }

                ForEach(filteredCyber) { cyber in
                    NavigationLink {
                    description  (cyber: cyber)
                    } label: {
                        Row(cyber: cyber)
                    }
                }
            }
            .navigationTitle("Cybersecurity")
        }
    }
}

struct CyberList_Previews: PreviewProvider {
    static var previews: some View {
       CyberList()
            .environmentObject(ModelData())
    }
}
