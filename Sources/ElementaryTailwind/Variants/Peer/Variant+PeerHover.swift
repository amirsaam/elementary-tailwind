import Elementary

// MARK: - PeerHover Variant

/// Wraps a TWToken in the `peer-hover:` variant prefix.
public struct PeerHover<Base: TWToken>: TWToken, Sendable {
    public let base: Base
    public var rawValue: String { "peer-hover:\(base.rawValue)" }
    public init(base: Base) { self.base = base }
}
