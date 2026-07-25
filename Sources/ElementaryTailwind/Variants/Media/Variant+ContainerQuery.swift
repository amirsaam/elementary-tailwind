import Elementary

// MARK: - ContainerQuery Variant

/// Wraps a TWToken in the `@container:` variant prefix.
public struct ContainerQuery<Base: TWToken>: TWToken, Sendable {
    public let base: Base
    public var rawValue: String { "@container:\(base.rawValue)" }
    public init(base: Base) { self.base = base }
}

// MARK: - NamedContainerQuery Variant

/// Wraps a TWToken in the `@container/name:` variant prefix for named containers.
public struct NamedContainerQuery<Base: TWToken>: TWToken, Sendable {
    public let base: Base
    public let name: String
    public var rawValue: String { "@container/\(name):\(base.rawValue)" }
    public init(name: String, base: Base) {
        self.name = name
        self.base = base
    }
}
