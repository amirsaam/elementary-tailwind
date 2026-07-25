import Elementary

// MARK: - Checked Variant

/// Wraps a TWToken in the `checked:` variant prefix.
public struct Checked<Base: TWToken>: TWToken, Sendable {
    public let base: Base
    public var rawValue: String { "checked:\(base.rawValue)" }
    public init(base: Base) { self.base = base }
}
