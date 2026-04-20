//
//  control_aplicacion.swift
//  Shimeji3
//
//  Created by alumno on 4/15/26.
//

import SwiftUI
import RealityKit
import mundo_virtual

@Observable
@MainActor
public class ControladorAplicacion{
    
    public var escenario: Entity? = nil
    public var raiz_escena: Entity = Entity()
    public var gramofonos_cargados: [Entity] = []
    public var estado: EstadosAplicacion = .iniciando
    
    private var historial_comandos: [Comando] = []
    
    var estados_animacion: MaquinaEstadosGenerica = MaquinaEstadosAnimacion()
    
    init(){
        estados_animacion.controlador_general = self as ProcesarComandos
        
        Task.detached(priority: .high){
            await self.cargar_gramofonos()
        }
    }
    
    func cargar_gramofonos() async {
        defer{
            estado = .carga_completada
        }
        var controlador_de_bucle_for = 0
        
        for gramofono in gramofonos{
            guard let gramofono_cargado = try? await Entity(named: gramofono, in: MundoVirtual) else {
                fatalError("Ha ocurrido un error en \(#function)")
            }
            
            gramofono_cargado.position.y = Float(controlador_de_bucle_for % 3) * 0.2
            gramofono_cargado.position.x = Float(controlador_de_bucle_for / 3) * 0.2
            
            raiz_escena.addChild(gramofono_cargado)
            gramofonos_cargados.append(gramofono_cargado)
            
            controlador_de_bucle_for += 1
            
            print(controlador_de_bucle_for)
        }
    }
    
    func alejar_gramofonos(lejitud: Float){
        for gramofono_cargado in gramofonos_cargados{
            gramofono_cargado.position.z = -lejitud
        }
    }
}
