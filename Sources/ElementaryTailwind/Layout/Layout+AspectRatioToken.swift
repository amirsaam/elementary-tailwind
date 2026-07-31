import Elementary

/// Controls the CSS `aspect-ratio` property.
/// Accepts a custom value via `.arbitrary(...)` (e.g. `aspect-[4/3]`).
public enum TWTAspectRatio: TWToken, Sendable, Equatable {
    case auto
    case square
    case video
    case arbitrary(String)

    public var rawValue: String {
        switch self {
        case .auto: "aspect-auto"
        case .square: "aspect-square"
        case .video: "aspect-video"
        case .arbitrary(let v): "aspect-[\(v)]"
        }
    }
}
