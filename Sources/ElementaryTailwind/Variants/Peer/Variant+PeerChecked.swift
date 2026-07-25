import Elementary

// MARK: - PeerChecked Variant

/// Wraps a TWToken in the `peer-checked:` variant prefix.
public struct PeerChecked<Base: TWToken>: TWToken, Sendable {
    public let base: Base
    public var rawValue: String { "peer-checked:\(base.rawValue)" }
    public init(base: Base) { self.base = base }
}
