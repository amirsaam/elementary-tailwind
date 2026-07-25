import Elementary

/// Controls the CSS `animation` property.
public enum TWTAnimation: String, TWToken, Sendable, Equatable, CaseIterable {
    case none = "animate-none"
    case spin = "animate-spin"
    case ping = "animate-ping"
    case pulse = "animate-pulse"
    case bounce = "animate-bounce"
}
