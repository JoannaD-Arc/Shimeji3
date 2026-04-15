//
//  Shimeji3App.swift
//  Shimeji3
//
//  Created by alumno on 4/13/26.
//

import SwiftUI

@main
struct Shimeji3App: App {

    @State var controlador_general = ControladorAplicacion()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(controlador_general)
        }
    }
}
