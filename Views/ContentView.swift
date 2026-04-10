import SwiftUI

struct ContentView: View {
    @StateObject private var viewModel = ProductViewModel()

    var body: some View {
        NavigationStack {
            VStack {
                TextField("Search products", text: $viewModel.searchText)
                    .textFieldStyle(.roundedBorder)
                    .padding()

                List(viewModel.filteredProducts, id: \.id) { product in
                    VStack(alignment: .leading) {
                        Text(product.name).font(.headline)
                        Text("$\(product.price)")
                        Button("Add to Cart") {
                            viewModel.addToCart(product: product)
                        }
                    }
                }
            }
            .onAppear {
                viewModel.fetchProducts()
            }
        }
    }
}
