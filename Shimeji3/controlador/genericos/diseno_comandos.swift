//
//  diseno_comandos.swift
//  Shimeji3
//
//  Created by alumno on 4/20/26.
//

protocol ProcesarComandos{
    func realizar_comando(tipo: Comandos, carga_util: String) -> Bool
}

enum Comandos{
    case activar_animacion
    case activar_pantalla
}

public struct comando: Identifiable{
    public let id = UUID()
    
    let tipo: Comandos
    let carga_util:String
}
