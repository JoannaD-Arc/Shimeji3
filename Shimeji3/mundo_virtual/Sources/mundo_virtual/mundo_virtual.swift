import Foundation

/// Bundle for the mundo_virtual project
public let MundoVirtual = Bundle.module

public let escenario_gramofono = "Scene"
public let gramofonos = [
    
    "Scene",
    "Scene",
    "Scene",
    "Scene",
    "Scene",
    "Scene"
    
]

enum Notificaciones{
    case da_un_salto
}

let Notificacion: [Notificaciones: String] = [
    Notificaciones.da_un_salto: "da_un_salto"
]
