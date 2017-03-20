
import ReSwift
import ReSwiftRouter
//struct AppReducer: Reducer {
struct AppReducer : Reducer {

    func handleAction(action: Action, state: AppState?) -> AppState {
        return AppState(appointments:storeReducer(state: state?.appointments,action: action)

        )

//            navigationState: NavigationReducer.handleAction(action, state: state?.navigationState),
//            authenticationState: authenticationReducer(state: state?.authenticationState, action: action),
//            repositories: repositoriesReducer(state: state?.repositories, action: action),
//            bookmarks: bookmarksReducer(state: state?.bookmarks, action: action)
    }
}


//struct UpdateStoreAppointmentsAction : Action { }
struct SetStoreAppointments: Action {
    let appointments : Appointments
}

func updateStoreAppointments(state: AppState, store: Store<AppState>) -> Action? {
//    guard case let .loggedIn(configuration) = state.authenticationState.loggedInState  else { return nil }

//    Octokit(configuration).repositories { response in
//        DispatchQueue.main.async {
//            store.dispatch(SetRepositories(repositories: response))
//        }
//    }
        // TODO call api
    mainStore.dispatch(SetStoreAppointments(appointments:Appointments(pendingAppointments: 5)))
    return nil
}

func storeReducer(state: Appointments? , action: Action) -> Appointments? {
    switch action {
    case let action as SetStoreAppointments:
        return action.appointments
    default:
        return nil
    }
}
