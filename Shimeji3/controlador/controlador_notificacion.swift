//
//  controlador_notificacion.swift
//  Shimeji3
//
//  Created by alumno on 4/17/26.
//

import SwiftUI
import RealityKit

extension ControladorAplicacion{
    func activar_comportamiento(_ nombre: String){
        guard let escenario: RealityKit.Scene = raiz_escena.scene else { fatalError("La escena raíz ha fallado en cargarse. Lo siento.")}
        
        raiz_escena.scene?.enviar_notificacion(nombre)
        estados_animacion.actualizar(nombre)
        
    }
    
    func escuchar_comportamiento(_ nombre: String){
        //print("nombre de finalizacion comportamiento: \(nombre)")
        estados_animacion.actualizar(nombre)
    }
}

