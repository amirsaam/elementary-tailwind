import Elementary

// MARK: - Odd Variant

/// Wraps a TWToken in the `odd:` variant prefix.
public struct Odd<Base: TWToken>: TWToken, Sendable {
    public let base: Base
    public var rawValue: String { "odd:\(base.rawValue)" }
    public init(base: Base) { self.base = base }
}
