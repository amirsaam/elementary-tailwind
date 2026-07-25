import Elementary

// MARK: - FocusWithin Variant

/// Wraps a TWToken in the `focus-within:` variant prefix.
public struct FocusWithin<Base: TWToken>: TWToken, Sendable {
    public let base: Base
    public var rawValue: String { "focus-within:\(base.rawValue)" }
    public init(base: Base) { self.base = base }
}
