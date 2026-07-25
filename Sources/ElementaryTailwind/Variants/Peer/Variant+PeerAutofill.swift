import Elementary

// MARK: - PeerAutofill Variant

/// Wraps a TWToken in the `peer-autofill:` variant prefix.
public struct PeerAutofill<Base: TWToken>: TWToken, Sendable {
    public let base: Base
    public var rawValue: String { "peer-autofill:\(base.rawValue)" }
    public init(base: Base) { self.base = base }
}
