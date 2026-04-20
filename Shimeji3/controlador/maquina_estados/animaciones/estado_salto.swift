//
//  estado_salto.swift
//  Shimeji3
//
//  Created by alumno on 4/20/26.
//

class SaltoAnimacion: Estado{
    
    var contexto: (any MaquinaEstadosGenerica)? = nil
    
    static let nombre: String = "salto"
    
    func inicializar(){
        
    }
    func actualizar(_ evento: String){
        switch evento{
            default:
                print("Estado salto.")
        }
    }
    
    func finalizar(){
        
    }
    
    func reaccion(estimulo: String){
        
    }
}
