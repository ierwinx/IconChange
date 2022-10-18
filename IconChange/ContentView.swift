import SwiftUI

struct ContentView: View {
    
    @StateObject var contentViewMocel = ContentViewModel()
        
    var body: some View {
        VStack(spacing: 20) {
            
            Text("Escoge un icono de app")
                .font(.title)
            
            Spacer()
                .frame(height: 30)
            
            ForEach(contentViewMocel.arrImages) { img in
                Button {
                    contentViewMocel.cambiaIcono(icon: img.id)
                } label: {
                    Label {
                        Text(img.nombre)
                    } icon: {
                        Image(img.nombre)
                            .resizable()
                            .frame(width: 70, height: 70)
                    }

                }
            }
            
            Spacer()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
