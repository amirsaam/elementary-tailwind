import Elementary

// MARK: - Required Variant

/// Wraps a TWToken in the `required:` variant prefix.
public struct Required<Base: TWToken>: TWToken, Sendable {
    public let base: Base
    public var rawValue: String { "required:\(base.rawValue)" }
    public init(base: Base) { self.base = base }
}
