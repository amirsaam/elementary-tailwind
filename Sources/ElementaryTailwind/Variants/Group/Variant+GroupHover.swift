import Elementary

// MARK: - GroupHover Variant

/// Wraps a TWToken in the `group-hover:` variant prefix.
public struct GroupHover<Base: TWToken>: TWToken, Sendable {
    public let base: Base
    public var rawValue: String { "group-hover:\(base.rawValue)" }
    public init(base: Base) { self.base = base }
}
