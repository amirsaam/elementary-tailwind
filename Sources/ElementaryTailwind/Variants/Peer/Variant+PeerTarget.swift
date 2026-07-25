import Elementary

// MARK: - PeerTarget Variant

/// Wraps a TWToken in the `peer-target:` variant prefix.
public struct PeerTarget<Base: TWToken>: TWToken, Sendable {
    public let base: Base
    public var rawValue: String { "peer-target:\(base.rawValue)" }
    public init(base: Base) { self.base = base }
}
