import UIKit
import SwiftUI
import Foundation

class ContentViewModel: ObservableObject {
    
    @Published var arrImages = [
        ContentModel(id: 1, nombre: "Musica1"),
        ContentModel(id: 2, nombre: "Musica2"),
        ContentModel(id: 3, nombre: "Musica3"),
        ContentModel(id: 4, nombre: "Musica4")
    ]
    
    /*
     Se deben declarar en el target IconChange -> Info una nueva entrada llamada Icon files (iOS 5)
     ya cuando se cree el nuevo archivo Info.plist debemos editarlo con las imagaenes que agregamos y estas deben estar en formato png en una carpeta
     */
    func cambiaIcono(icon: Int) {
        print("Music\(icon)")
        UIApplication.shared.setAlternateIconName("Musica\(icon)") { error in
            if let error = error {
                print(error)
                return
            }
        }
    }
    
}

