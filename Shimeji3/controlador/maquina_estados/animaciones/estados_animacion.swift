//
//  estados_animacion.swift
//  Shimeji3
//
//  Created by alumno on 4/20/26.
//

class MaquinaEstadosAnimacion: MaquinaEstadosGenerica {
    var estados_disponibles: [String, Estado] = [ReposoAnimacion.nombre: ReposoAnimacion(), SaltoAnimacion.nombre: SaltoAnimacion(), PlanetasDesaparecidos.nombre: PlanetasDesaparecidos()]
    
    var estado_actual: Estado? = nil
    
    init(){
        estado_Actual = estados_disponibles[ReposoAnimacion.nombre]
        //estado_Actual?.contexto = self
    }
    
    func realizar_cambio_estado(nombre_del_estado: String){
        guard var estado_nuevo = estados_disponibles[nombre_del_estado_nuevo] else {
            fatalError("Parece que el estado \(nombre_del_estado_nuevo) no está registrado.")
        }
        
        estado_actual?.finalizar()
        
        estado_nuevo.contexto = self as MaquinaEstadosGenerica
        estado_nuevo.inicializar()
        
        estado_Actual = estado_nuevo
        
        return
    }
    
    func actualizar(_ evento: String){
        estado_actual?.actualizar(evento)
    }
    
    func enviar_peticion(_ comando: Comando) -> Bool{
        guard let respueta = controlador_general?.realizar_comando(comando) else{
            return false
        }
        return respuesta
    }
}
