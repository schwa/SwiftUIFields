import SwiftUI
import SwiftUIFields
import simd

struct ContentView: View {

    @State
    var rotation = simd_quatf.identity


    var body: some View {
        VStack {
            List {
                Form {
                    LabeledContent("Rotation") {
                        QuaternionField(quaternion: $rotation)
                    }
                }
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
