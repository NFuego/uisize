
import Foundation
import ReSwift

let mainStore = Store<AppState>(
    reducer: AppReducer(),
    state: nil
)

struct Appointments {
    var pendingAppointments = 0
}


struct AppState : StateType {
    var appointments : Appointments?
}
