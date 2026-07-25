import Elementary

// MARK: - Breakpoint

/// Tailwind CSS responsive breakpoints.
public enum Breakpoint: String, Sendable, CaseIterable {
    case sm
    case md
    case lg
    case xl
    case xxl = "2xl"
}

// MARK: - Responsive Variant

/// Wraps a TWToken in a responsive variant prefix (e.g. `md:`).
public struct Responsive<Base: TWToken>: TWToken, Sendable {
    public let base: Base
    public let breakpoint: Breakpoint
    public var rawValue: String { "\(breakpoint.rawValue):\(base.rawValue)" }
    public init(breakpoint: Breakpoint, base: Base) {
        self.breakpoint = breakpoint
        self.base = base
    }
}

// MARK: - MaxResponsive Variant

/// Wraps a TWToken in a max-width responsive variant prefix (e.g. `max-md:`).
public struct MaxResponsive<Base: TWToken>: TWToken, Sendable {
    public let base: Base
    public let breakpoint: Breakpoint
    public var rawValue: String { "max-\(breakpoint.rawValue):\(base.rawValue)" }
    public init(breakpoint: Breakpoint, base: Base) {
        self.breakpoint = breakpoint
        self.base = base
    }
}
