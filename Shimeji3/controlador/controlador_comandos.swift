//
//  controlador_comandos.swift
//  Shimeji3
//
//  Created by alumno on 4/17/26.
//

enum Comandos{
    case activar_animacion
    
}

public struct Comando: Identifiable{
    
}

extension ControladorAplicacion: ProcesarComandos{
    func realizar_comando(tipo: Comandos, carga_util: String) -> Bool{
        switch tipo{
            case .activar_animacion:
                activar_comportamiento(carga_util)
                historial_comandos.append(
                Comando(tipo: tipo, carga_util: carga_util)
            )
                return true
            
            default:
                fatalError("[\(#file): \(#function)] No has implementado esto. \(tipo)"])
                return false
            }
        return false
    }
    
    func realizar_comando(_ comanda: Comando) -> Bool{
        switch comanda.tipo{
            case .activar_animacion:
            activar_comportamiento(comanda.carga_util)
                historial_comandos.append(
               comanda
            )
                return true
            
            default:
            fatalError("[\(#file): \(#function)] No has implementado esto. \(comanda.tipo)"])
                return false
            }
        return false
    }
}
