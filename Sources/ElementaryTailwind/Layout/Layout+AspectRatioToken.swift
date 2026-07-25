import Elementary

/// Controls the CSS `aspect-ratio` property.
public enum TWTAspectRatio: String, TWToken, Sendable, Equatable, CaseIterable {
    case auto = "aspect-auto"
    case square = "aspect-square"
    case video = "aspect-video"
}
