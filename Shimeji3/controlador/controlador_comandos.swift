//
//  controlador_comandos.swift
//  Shimeji3
//
//  Created by alumno on 4/17/26.
//

enum Comandos{
    case activar_animacion
    
}

extension ControladorAplicacion{
    func realizar_comando(tipo: Comandos, carga_util: String) -> Bool{
        switch tipo{
            case .activar_animacion:
                activar_comportamiento(carga_util)
                return true
            }
        return false
    }
}
