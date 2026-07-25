import Elementary

// MARK: - PeerOpen Variant

/// Wraps a TWToken in the `peer-open:` variant prefix.
public struct PeerOpen<Base: TWToken>: TWToken, Sendable {
    public let base: Base
    public var rawValue: String { "peer-open:\(base.rawValue)" }
    public init(base: Base) { self.base = base }
}
