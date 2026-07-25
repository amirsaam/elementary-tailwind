import Elementary

// MARK: - PeerFocus Variant

/// Wraps a TWToken in the `peer-focus:` variant prefix.
public struct PeerFocus<Base: TWToken>: TWToken, Sendable {
    public let base: Base
    public var rawValue: String { "peer-focus:\(base.rawValue)" }
    public init(base: Base) { self.base = base }
}
