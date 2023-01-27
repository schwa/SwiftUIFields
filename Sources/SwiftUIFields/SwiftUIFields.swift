import simd
import SwiftUI
import SIMDSupport

public struct QuaternionField: View {

    @Binding
    var quaternion: simd_quatd

    public init(quaternion: Binding<simd_quatd>) {
        self._quaternion = quaternion
    }

    public var body: some View {
        TextField("real", value: $quaternion.real, format: .number)
        TextField("x", value: $quaternion.vector.x, format: .number)
        TextField("y", value: $quaternion.vector.y, format: .number)
        TextField("z", value: $quaternion.vector.z, format: .number)
    }
}

public extension QuaternionField {
    init(quaternion: Binding<simd_quatf>) {
        self = .init(quaternion: Binding(get: {
            return simd_quatd(quaternion.wrappedValue)
        }, set: { newValue in
            quaternion.wrappedValue = simd_quatf(newValue)
        }))
    }
}
