import Elementary

// MARK: - PeerRequired Variant

/// Wraps a TWToken in the `peer-required:` variant prefix.
public struct PeerRequired<Base: TWToken>: TWToken, Sendable {
    public let base: Base
    public var rawValue: String { "peer-required:\(base.rawValue)" }
    public init(base: Base) { self.base = base }
}
