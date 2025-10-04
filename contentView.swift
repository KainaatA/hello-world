import SwiftUI

struct ContentView: View {
    // Example prices
    let prices: [Decimal] = [4.99, 9.49, 14.25]
    
    var body: some View {
        VStack(spacing: 20) {
            // Localized welcome messages
            Text(NSLocalizedString("welcome_message", comment: "Welcome text"))
                .font(.title2)
                .multilineTextAlignment(.center)
            
            Text(NSLocalizedString("happy_message", comment: "Secondary welcome message"))
                .font(.subheadline)
                .multilineTextAlignment(.center)
            
            Divider().padding(.vertical, 20)
            
            // Menu section
            Text(NSLocalizedString("menu_title", comment: "Menu section title"))
                .font(.headline)
            
            ForEach(Array(prices.enumerated()), id: \.offset) { index, price in
                HStack {
                    Text("\(NSLocalizedString("item", comment: "Menu item")) \(index + 1)")
                    Spacer()
                    Text(price.formatted(.currency(code: "EUR"))) // Localized Euro format
                }
                .padding(.horizontal)
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
