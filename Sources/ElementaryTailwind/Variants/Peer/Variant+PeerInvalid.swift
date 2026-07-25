import Elementary

// MARK: - PeerInvalid Variant

/// Wraps a TWToken in the `peer-invalid:` variant prefix.
public struct PeerInvalid<Base: TWToken>: TWToken, Sendable {
    public let base: Base
    public var rawValue: String { "peer-invalid:\(base.rawValue)" }
    public init(base: Base) { self.base = base }
}
