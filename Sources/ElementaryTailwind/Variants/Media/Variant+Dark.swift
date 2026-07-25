import Elementary

// MARK: - Dark Variant

/// Wraps a TWToken in the `dark:` variant prefix.
public struct Dark<Base: TWToken>: TWToken, Sendable {
    public let base: Base
    public var rawValue: String { "dark:\(base.rawValue)" }
    public init(base: Base) { self.base = base }
}
