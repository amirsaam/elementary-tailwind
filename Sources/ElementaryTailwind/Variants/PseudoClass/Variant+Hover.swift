import Elementary

// MARK: - Hover Variant

/// Wraps a TWToken in the `hover:` variant prefix.
public struct Hover<Base: TWToken>: TWToken, Sendable {
    public let base: Base
    public var rawValue: String { "hover:\(base.rawValue)" }
    public init(base: Base) { self.base = base }
}
