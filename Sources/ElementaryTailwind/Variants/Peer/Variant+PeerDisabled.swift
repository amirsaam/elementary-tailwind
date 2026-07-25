import Elementary

// MARK: - PeerDisabled Variant

/// Wraps a TWToken in the `peer-disabled:` variant prefix.
public struct PeerDisabled<Base: TWToken>: TWToken, Sendable {
    public let base: Base
    public var rawValue: String { "peer-disabled:\(base.rawValue)" }
    public init(base: Base) { self.base = base }
}
