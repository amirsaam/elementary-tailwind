import Elementary

/// Controls the CSS `touch-action` property.
public enum TWTTouchAction: String, TWToken, Sendable, Equatable, CaseIterable {
    case auto = "touch-auto"
    case none = "touch-none"
    case panX = "touch-pan-x"
    case panY = "touch-pan-y"
    case manipulation = "touch-manipulation"
}
