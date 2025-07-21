
//
import SwiftUI
import UserNotifications

struct ContentView: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Notificaciones Locales")
                .font(.title)

            Button("Lanzar Notificación") {
                scheduleLocalNotification()
            }
            .padding()
            .background(.blue)
            .foregroundColor(.white)
            .clipShape(Capsule())
        }
    }

    func scheduleLocalNotification() {
        let content = UNMutableNotificationContent()
        content.title = "Hola desde ComicsApp"
        content.body = "Esta es una notificación local de prueba 🚀"
        content.sound = .default

        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 5, repeats: false)

        let request = UNNotificationRequest(identifier: UUID().uuidString, content: content, trigger: trigger)

        UNUserNotificationCenter.current().add(request) { error in
            if let error = error {
                print("❌ Error al añadir la notificación: \(error.localizedDescription)")
            } else {
                print("✅ Notificación programada")
            }
        }
    }
}
