import Elementary

/// Controls the CSS `animation` property.
/// Accepts a custom value via `.arbitrary(...)` (e.g. `animate-[wiggle_1s_ease-in-out_infinite]`).
public enum TWTAnimation: TWToken, Sendable, Equatable {
    case none
    case spin
    case ping
    case pulse
    case bounce
    case arbitrary(String)

    public var rawValue: String {
        switch self {
        case .none: "animate-none"
        case .spin: "animate-spin"
        case .ping: "animate-ping"
        case .pulse: "animate-pulse"
        case .bounce: "animate-bounce"
        case .arbitrary(let v): "animate-[\(v)]"
        }
    }
}
