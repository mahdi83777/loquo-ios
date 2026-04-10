import Foundation
import FirebaseFirestore

class ProductViewModel: ObservableObject {
    @Published var products: [Product] = []
    @Published var searchText: String = ""
    @Published var selectedProduct: Product?
    @Published var cartItems: [CartItem] = []
    @Published var showCart: Bool = false

    private let db = Firestore.firestore()

    var filteredProducts: [Product] {
        if searchText.isEmpty {
            return products
        } else {
            return products.filter {
                $0.name.localizedCaseInsensitiveContains(searchText) ||
                $0.category.localizedCaseInsensitiveContains(searchText)
            }
        }
    }

    var cartTotal: Double {
        cartItems.reduce(0) { $0 + ($1.product.price * Double($1.quantity)) }
    }

    func fetchProducts() {
        db.collection("products").getDocuments { snapshot, error in
            if let error = error {
                print("Error loading products: \(error.localizedDescription)")
                return
            }

            guard let documents = snapshot?.documents else { return }

            DispatchQueue.main.async {
                self.products = documents.map { document in
                    let data = document.data()
                    return Product(
                        id: document.documentID,
                        name: data["name"] as? String ?? "",
                        price: data["price"] as? Double ?? 0.0,
                        category: data["category"] as? String ?? "",
                        description: data["description"] as? String ?? ""
                    )
                }
            }
        }
    }

    func addToCart(product: Product) {
        if let index = cartItems.firstIndex(where: { $0.product.id == product.id }) {
            cartItems[index].quantity += 1
        } else {
            cartItems.append(CartItem(product: product, quantity: 1))
        }
    }
}
