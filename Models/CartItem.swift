import Foundation

struct CartItem: Identifiable, Hashable {
    let id = UUID()
    var product: Product
    var quantity: Int = 1
}
