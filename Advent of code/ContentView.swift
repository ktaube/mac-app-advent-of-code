import SwiftUI

struct ContentView: View {
    @State private var selectedDay: Int? = nil
    @State private var challenges = (1...25).map { Challenge(id: $0, title: "Day \($0)") }

    var body: some View {
        NavigationSplitView {
            // Sidebar with list of days
            List(challenges, selection: $selectedDay) { challenge in
                NavigationLink(value: challenge.id) {
                    HStack {
                        Text(challenge.title)
                        if challenge.solved {
                            Image(systemName: "star.fill")
                                .foregroundColor(.yellow)
                        }
                    }
                }
            }
            .navigationTitle("Advent of Code 2024")
        } detail: {
            if selectedDay == 1 {
                ChallengeDayOneView()
            } else if let selectedDay {
                ChallengeView(day: selectedDay)
            } else {
                Text("Select a day to begin solving")
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
            }
        }
    }
}
