//
//  CardView.swift
//  Scrumdinger
//
//  Created by Christian drewes on 4/3/25.
//

import SwiftUI

struct CardView: View {
    let scrum: DailyScrum
    var body: some View {
        VStack(alignment:.leading){
            Text(scrum.title)
                .font(.headline)
                .accessibilityAddTraits(.isHeader)
            Spacer()
            HStack{
                Label("\(scrum.attendees.count)", systemImage: "person.3")
                    .accessibilityLabel("\(scrum.attendees.count) attendees")
                Spacer()
                Label("\(scrum.lengthInMinutes)", systemImage: "clock")
                    .labelStyle(.trailingIcon)
                    .accessibilityLabel("\(scrum.attendees.count) minute meeting")
            }
            .font(.caption)
        }
        .padding()
        .foregroundStyle(scrum.theme.accentColor)
    }
}

#Preview(traits: .fixedLayout(width: 400, height: 60)) {
    let scrum = DailyScrum.sampleData[0]
    return CardView(scrum: scrum)
        .background(scrum.theme.mainColor)
}
