import Elementary

// MARK: - GroupValid Variant

/// Wraps a TWToken in the `group-valid:` variant prefix.
public struct GroupValid<Base: TWToken>: TWToken, Sendable {
    public let base: Base
    public var rawValue: String { "group-valid:\(base.rawValue)" }
    public init(base: Base) { self.base = base }
}
