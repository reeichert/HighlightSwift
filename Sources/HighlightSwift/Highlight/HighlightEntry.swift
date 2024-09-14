import SwiftUI

#if os(macOS)
struct HighlightKey: EnvironmentKey {
    static let defaultValue: Highlight = Highlight()
}

extension EnvironmentValues {
    var highlight: Highlight {
        get { self[HighlightKey.self] }
        set { self[HighlightKey.self] = newValue }
    }
}
#elseif os(iOS)
extension EnvironmentValues {
    @Entry var highlight: Highlight = Highlight()
}
#endif
