import Foundation

struct Product: Identifiable, Codable, Hashable {
    var id: String
    var name: String
    var price: Double
    var category: String
    var description: String

    init(
        id: String = UUID().uuidString,
        name: String = "",
        price: Double = 0.0,
        category: String = "",
        description: String = ""
    ) {
        self.id = id
        self.name = name
        self.price = price
        self.category = category
        self.description = description
    }
}
