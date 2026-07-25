import Elementary

// MARK: - GroupRequired Variant

/// Wraps a TWToken in the `group-required:` variant prefix.
public struct GroupRequired<Base: TWToken>: TWToken, Sendable {
    public let base: Base
    public var rawValue: String { "group-required:\(base.rawValue)" }
    public init(base: Base) { self.base = base }
}
