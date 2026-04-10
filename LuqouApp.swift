import SwiftUI
import FirebaseCore

@main
struct LuqouApp: App {
    init() {
        FirebaseApp.configure()
    }

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
