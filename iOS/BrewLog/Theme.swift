import SwiftUI

/// Brew Log's unique visual identity - a palette and mood distinct from every
/// sibling app in this portfolio, tuned to the beer domain.
enum AppTheme {
    static let background = Color(red: 0.090, green: 0.075, blue: 0.063)
    static let card = Color(red: 0.133, green: 0.110, blue: 0.086)
    static let accent = Color(red: 0.851, green: 0.643, blue: 0.255)
    static let secondary = Color(red: 0.541, green: 0.353, blue: 0.231)
    static let primaryText = Color(red: 0.953, green: 0.925, blue: 0.867)
    static let mutedText = Color(red: 0.953, green: 0.925, blue: 0.867).opacity(0.6)

    static let titleFont: Font = .system(.title2, design: .serif).weight(.bold)
    static let headlineFont: Font = .system(.headline, design: .rounded)
    static let bodyFont: Font = .system(.body, design: .rounded)
    static let captionFont: Font = .system(.caption, design: .monospaced)

    static let cornerRadius: CGFloat = 16
}

struct CardBackground: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding()
            .background(AppTheme.card)
            .cornerRadius(AppTheme.cornerRadius)
    }
}

extension View {
    func cardStyle() -> some View { modifier(CardBackground()) }
}
