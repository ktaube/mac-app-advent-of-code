import SwiftUI

struct ChallengeDayOneView: View {
    @State private var input: String = ""
    @State private var part1Solution: String = ""
    @State private var part2Solution: String = ""
    @State private var isLoading: Bool = false

    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text("Day one")
                .font(.largeTitle)

            GroupBox("Problem Input") {
                TextEditor(text: $input)
                    .font(.system(.body, design: .monospaced))
                    .frame(height: 200)
            }

            HStack {
                Button("Solve Part 1") {
                    solvePart1()
                }
                Button("Solve Part 2") {
                    solvePart2()
                }
            }

            GroupBox("Solutions") {
                VStack(alignment: .leading) {
                    Text("Part 1: \(part1Solution)")
                    Text("Part 2: \(part2Solution)")
                }
                .padding()
            }

            Spacer()
        }
        .padding()
        .frame(minWidth: 500)
        .onAppear {
            loadInput()
        }
    }

    private func solvePart1() {
        // Implement solution for part 1
        part1Solution = "Not implemented yet"
    }

    private func solvePart2() {
        // Implement solution for part 2
        part2Solution = "Not implemented yet"
    }

    private func loadInput() {
        isLoading = true
        if let path = Bundle.main.path(forResource: "day-1", ofType: "txt"),
            let contents = try? String(contentsOfFile: path, encoding: .utf8)
        {
            input = contents
        } else {
            input = "Failed to load input file. Make sure day1.txt exists in the project."
        }
        isLoading = false
    }
}
