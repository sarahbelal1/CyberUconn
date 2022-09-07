//
//  ChoiceTextView.swift
//
//  Created by Sarah Belal on 14/08/2022.
//  Copyright © 2022 Apple. All rights reserved.
//

import Foundation
import SwiftUI

struct ChoiceTextView: View {
    let choiceText: String

    var body: some View {
        VStack {
            Text(choiceText)
                .font(.body)
                .bold()
                .multilineTextAlignment(.center)
                .padding()
                .border(GameColor.accent, width: 4)
        } }
}

struct ChoiceTextView_Previews: PreviewProvider {
    static var previews: some View {
        ChoiceTextView(choiceText: "Choice text!")
    }
}
