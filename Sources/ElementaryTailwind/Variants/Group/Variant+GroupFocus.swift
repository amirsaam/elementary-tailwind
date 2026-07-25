import Elementary

// MARK: - GroupFocus Variant

/// Wraps a TWToken in the `group-focus:` variant prefix.
public struct GroupFocus<Base: TWToken>: TWToken, Sendable {
    public let base: Base
    public var rawValue: String { "group-focus:\(base.rawValue)" }
    public init(base: Base) { self.base = base }
}
