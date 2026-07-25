import Elementary

// MARK: - Placeholder Variant

/// Wraps a TWToken in the `placeholder:` variant prefix.
public struct Placeholder<Base: TWToken>: TWToken, Sendable {
    public let base: Base
    public var rawValue: String { "placeholder:\(base.rawValue)" }
    public init(base: Base) { self.base = base }
}
