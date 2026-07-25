import Elementary

// MARK: - Focus Variant

/// Wraps a TWToken in the `focus:` variant prefix.
public struct Focus<Base: TWToken>: TWToken, Sendable {
    public let base: Base
    public var rawValue: String { "focus:\(base.rawValue)" }
    public init(base: Base) { self.base = base }
}
