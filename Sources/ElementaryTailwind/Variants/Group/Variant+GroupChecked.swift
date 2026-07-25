import Elementary

// MARK: - GroupChecked Variant

/// Wraps a TWToken in the `group-checked:` variant prefix.
public struct GroupChecked<Base: TWToken>: TWToken, Sendable {
    public let base: Base
    public var rawValue: String { "group-checked:\(base.rawValue)" }
    public init(base: Base) { self.base = base }
}
