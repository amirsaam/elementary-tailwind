import Elementary

// MARK: - ContainerQuery Variant

/// Wraps a TWToken in the `container:` variant prefix.
public struct ContainerQuery<Base: TWToken>: TWToken, Sendable {
    public let base: Base
    public var rawValue: String { "container:\(base.rawValue)" }
    public init(base: Base) { self.base = base }
}
