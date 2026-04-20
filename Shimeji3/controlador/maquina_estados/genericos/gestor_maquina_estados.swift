//
//  gestor_maquina_estados.swift
//  Shimeji3
//
//  Created by alumno on 4/20/26.
//
protocol MaquinaEstadosGenerica{
    var controlador_general: ProcesarComandos? {get set}
    
    func realizar_cambio_estado(nombre_del_estado:String) -> Void
    
    func actualizar(_ evento:String) -> Void
    
    func enviar_peticion(_ comando: Comando) -> Bool
}
