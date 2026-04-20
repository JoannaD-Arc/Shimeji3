//
//  estado_reposo.swift
//  Shimeji3
//
//  Created by alumno on 4/20/26.
//

class ReposoAnimacion: Estado{
    
    var contexto: (any MaquinaEstadosGenerica)? = nil
    
    static let nombre: String = "salto"
    

    
    func inicializar(){
        
    }
    func actualizar(_ evento: String){
        print("\(#function) recibiendo información de tipo evento con datos \(evento)")
        
        if evento == "da_un_salto"{
            contexto?.enviar_peticion(Comando(tipo: .activar_animacion, carga_util: "da_un_salto"))
            contexto?.realizar_cambio_estado(nombre_del_estado_nuevo: SaltoAnimacion.nombre)
        }
    }
    
    func finalizar(){
        
    }
    
    func reaccion(estimulo: String){
        
    }
}
