import Elementary

// MARK: - PeerValid Variant

/// Wraps a TWToken in the `peer-valid:` variant prefix.
public struct PeerValid<Base: TWToken>: TWToken, Sendable {
    public let base: Base
    public var rawValue: String { "peer-valid:\(base.rawValue)" }
    public init(base: Base) { self.base = base }
}
