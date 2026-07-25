import Elementary

// MARK: - GroupDisabled Variant

/// Wraps a TWToken in the `group-disabled:` variant prefix.
public struct GroupDisabled<Base: TWToken>: TWToken, Sendable {
    public let base: Base
    public var rawValue: String { "group-disabled:\(base.rawValue)" }
    public init(base: Base) { self.base = base }
}
