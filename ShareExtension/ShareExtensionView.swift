import SwiftUI

struct ShareExtensionView: View {

    var body: some View {
        NavigationStack {
            VStack(spacing: 20) {
                Spacer()

                Link("View Our Terms of Service",
                     destination: URL(string: "https://www.example.com/TOS.html")!)

                Spacer()
            }
            .padding()
            .navigationTitle("Share Extension")
            .toolbar {
                Button("Cancel") {
                    close()
                }
            }
        }
    }

    func close() {
        NotificationCenter.default.post(name: NSNotification.Name("close"), object: nil)
    }
}
