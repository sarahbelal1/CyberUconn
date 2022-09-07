
import SwiftUI

struct Row: View {
    var cyber: Cyber

    var body: some View {
        HStack {
            cyber.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(cyber.name)

            Spacer()

            if cyber.isFavorite {
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
            }
        }
    }
}

struct Row_Previews: PreviewProvider {
    static var cybersecurity = ModelData().cybersecurity

    static var previews: some View {
        Group {
            Row(cyber: cybersecurity[0])
            Row(cyber: cybersecurity[1])
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
