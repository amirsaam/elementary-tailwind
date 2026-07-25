import Elementary

// MARK: - Disabled Variant

/// Wraps a TWToken in the `disabled:` variant prefix.
public struct Disabled<Base: TWToken>: TWToken, Sendable {
    public let base: Base
    public var rawValue: String { "disabled:\(base.rawValue)" }
    public init(base: Base) { self.base = base }
}
