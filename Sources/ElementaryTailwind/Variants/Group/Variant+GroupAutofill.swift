import Elementary

// MARK: - GroupAutofill Variant

/// Wraps a TWToken in the `group-autofill:` variant prefix.
public struct GroupAutofill<Base: TWToken>: TWToken, Sendable {
    public let base: Base
    public var rawValue: String { "group-autofill:\(base.rawValue)" }
    public init(base: Base) { self.base = base }
}
