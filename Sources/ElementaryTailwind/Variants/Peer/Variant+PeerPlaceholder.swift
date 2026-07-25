import Elementary

// MARK: - PeerPlaceholder Variant

/// Wraps a TWToken in the `peer-placeholder:` variant prefix.
public struct PeerPlaceholder<Base: TWToken>: TWToken, Sendable {
    public let base: Base
    public var rawValue: String { "peer-placeholder:\(base.rawValue)" }
    public init(base: Base) { self.base = base }
}
