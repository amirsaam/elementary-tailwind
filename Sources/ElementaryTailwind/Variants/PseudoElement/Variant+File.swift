import Elementary

// MARK: - File Variant

/// Wraps a TWToken in the `file:` variant prefix.
public struct File<Base: TWToken>: TWToken, Sendable {
    public let base: Base
    public var rawValue: String { "file:\(base.rawValue)" }
    public init(base: Base) { self.base = base }
}
