import Elementary

// MARK: - GroupTarget Variant

/// Wraps a TWToken in the `group-target:` variant prefix.
public struct GroupTarget<Base: TWToken>: TWToken, Sendable {
    public let base: Base
    public var rawValue: String { "group-target:\(base.rawValue)" }
    public init(base: Base) { self.base = base }
}
