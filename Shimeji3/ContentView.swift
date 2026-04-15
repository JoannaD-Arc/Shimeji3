//
//  ContentView.swift
//  Shimeji3
//
//  Created by alumno on 4/13/26.
//

import SwiftUI
import RealityKit
import mundo_virtual

struct ContentView: View {
    @State var lejitud: Float = 0
    @Environment(ControladorAplicacion.self) var controlador
    
    var body: some View {
        
        ZStack{
            Rectangle()
            
            VStack{
                switch controlador.estado{
                case .iniciando:
                    Text("Latigeando trabajadores...")
                        .foregroundStyle(Color.red)
                case .carga_completada:
                    RealityView{
                        raiz_de_escena in raiz_de_escena.add(controlador.raiz_escena)
                    }
                }
            }
        }
        
        Slider(value: $lejitud)
            .onChange(of: lejitud){
                controlador.alejar_gramofonos(lejitud: lejitud)
            }
        Button{
            controlador.alejar_gramofonos(lejitud: lejitud)
        }label: {
            Text("Alejar Gramofonos")
                .foregroundStyle(Color.red)
        }
    }
}
#Preview {
    ContentView()
        .environment(ControladorAplicacion())
}
