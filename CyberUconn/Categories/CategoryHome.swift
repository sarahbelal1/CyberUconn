

import SwiftUI

struct CategoryHome: View {
    @EnvironmentObject var modelData: ModelData
    
    var body: some View {
        NavigationView {
            
            List {
                Image("cybee")
                    .resizable()
                    .scaledToFill()
                    .frame(height: 200)
                    .clipped()
                    .listRowInsets(EdgeInsets())
                
                ForEach(modelData.categories.keys.sorted(), id: \.self) { key in
                    CategoryRow(categoryName: key, items: modelData.categories[key]!)
                }
                .listRowInsets(EdgeInsets())
            }
            .listStyle(.inset)
            .navigationTitle("CyberUconn")
            .navigationBarTitleDisplayMode(.large)
          
            
            }
    
            
        }
    }
    
    struct CategoryHome_Previews: PreviewProvider {
        static var previews: some View {
            CategoryHome()
                .environmentObject(ModelData())
        }
    }

