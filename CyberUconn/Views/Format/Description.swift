

import SwiftUI


struct description: View {
    @EnvironmentObject var modelData: ModelData
    var cyber: Cyber
    
    var Index: Int {
        modelData.cybersecurity.firstIndex(where: { $0.id == cyber.id })!
        
    }
    let urlString = "www.google.com"

    
    
    var body: some View {
        ScrollView {
            CircleImage(image:cyber.image)
                .scaledToFill()
                .offset(y: 25)
                .padding(.bottom, 10)

                VStack {
                    HStack {
                        Text(cyber.name)
                            .font(.title)
                            .fontWeight(.medium)
                        .multilineTextAlignment(.center) }
                    .padding(10)
                    Text(cyber.statement)
                        .font(.subheadline)
                        .italic()
                    Spacer()
                
                Divider()

                .font(.subheadline)
                .foregroundColor(.secondary)
                    Text(cyber.intro)
                        .fontWeight(.semibold)
                        .multilineTextAlignment(.center)
                        .padding(.trailing, 21.0)
                    Text(cyber.description.markdownToAttributed())
                        .padding(.top, 15.0)
                        .padding(.bottom, -10)
                            
                    }
            Text(" ");Link(cyber.uconnlink, destination: URL(string: cyber.uconnlink)!)
                    
                    
                    
                }
                .padding()
            }
            
    }

extension String {
    func markdownToAttributed() -> AttributedString {
        do {
            return try AttributedString(markdown: self) /// convert to AttributedString
        } catch {
            return AttributedString("Error parsing markdown: \(error)")
        }
    }
}
    
    struct description_Previews: PreviewProvider {
        static let modelData = ModelData()
        
        static var previews: some View {
            description(cyber: modelData.cybersecurity[1])
                .environmentObject(modelData)
        }
    }
    
