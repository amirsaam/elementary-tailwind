import Elementary

// MARK: - FocusVisible Variant

/// Wraps a TWToken in the `focus-visible:` variant prefix.
public struct FocusVisible<Base: TWToken>: TWToken, Sendable {
    public let base: Base
    public var rawValue: String { "focus-visible:\(base.rawValue)" }
    public init(base: Base) { self.base = base }
}
