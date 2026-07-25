import Elementary

// MARK: - GroupInvalid Variant

/// Wraps a TWToken in the `group-invalid:` variant prefix.
public struct GroupInvalid<Base: TWToken>: TWToken, Sendable {
    public let base: Base
    public var rawValue: String { "group-invalid:\(base.rawValue)" }
    public init(base: Base) { self.base = base }
}
