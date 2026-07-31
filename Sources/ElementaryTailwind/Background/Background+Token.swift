import Elementary

// MARK: - Color

/// Controls the CSS `background-color` property.
public struct TWTBackgroundColor: TWToken, Sendable, Equatable {
    public let rawValue: String
    public init(_ color: TWColor, opacity: Int? = nil) {
        if let opacity {
            rawValue = "bg-\(color.rawValue)/\(opacity)"
        } else {
            rawValue = "bg-\(color.rawValue)"
        }
    }
}

// MARK: - Attachment

/// Controls the CSS `background-attachment` property.
public enum TWTBackgroundAttachment: String, TWToken, Sendable, Equatable, CaseIterable {
    case local = "bg-local"
    case fixed = "bg-fixed"
    case scroll = "bg-scroll"
}

// MARK: - Clip

/// Controls the CSS `background-clip` property.
public enum TWTBackgroundClip: String, TWToken, Sendable, Equatable, CaseIterable {
    case borderBox = "bg-clip-border"
    case paddingBox = "bg-clip-padding"
    case contentBox = "bg-clip-content"
    case text = "bg-clip-text"
}

// MARK: - Origin

/// Controls the CSS `background-origin` property.
public enum TWTBackgroundOrigin: String, TWToken, Sendable, Equatable, CaseIterable {
    case borderBox = "bg-origin-border"
    case paddingBox = "bg-origin-padding"
    case contentBox = "bg-origin-content"
}

// MARK: - Repeat

/// Controls the CSS `background-repeat` property.
public enum TWTBackgroundRepeat: String, TWToken, Sendable, Equatable, CaseIterable {
    case `repeat` = "bg-repeat"
    case noRepeat = "bg-no-repeat"
    case repeatX = "bg-repeat-x"
    case repeatY = "bg-repeat-y"
    case space = "bg-repeat-space"
    case round = "bg-repeat-round"
}

// MARK: - Size

/// Controls the CSS `background-size` property.
/// Accepts a custom value via `.arbitrary(...)` (e.g. `bg-size-[auto_100px]`).
public enum TWTBackgroundSize: TWToken, Sendable, Equatable {
    case auto
    case cover
    case contain
    case arbitrary(String)

    public var rawValue: String {
        switch self {
        case .auto: "bg-auto"
        case .cover: "bg-cover"
        case .contain: "bg-contain"
        case .arbitrary(let v): "bg-size-[\(v)]"
        }
    }
}

// MARK: - Image

/// Controls the CSS `background-image` property.
/// Accepts a custom value via `.arbitrary(...)` (e.g. `bg-[url('/img/hero-pattern.svg')]`).
public enum TWTBackgroundImage: TWToken, Sendable, Equatable {
    case none
    case arbitrary(String)

    public var rawValue: String {
        switch self {
        case .none: "bg-none"
        case .arbitrary(let v): "bg-[\(v)]"
        }
    }
}

// MARK: - Position

/// Controls the CSS `background-position` property.
public enum TWTBackgroundPosition: TWToken, Sendable, Equatable {
    case top
    case center
    case bottom
    case left
    case right
    case topLeft
    case topRight
    case bottomLeft
    case bottomRight
    case centerLeft
    case centerRight
    case custom(String)
    case arbitrary(String)

    public var rawValue: String {
        switch self {
        case .top: "bg-top"
        case .center: "bg-center"
        case .bottom: "bg-bottom"
        case .left: "bg-left"
        case .right: "bg-right"
        case .topLeft: "bg-top-left"
        case .topRight: "bg-top-right"
        case .bottomLeft: "bg-bottom-left"
        case .bottomRight: "bg-bottom-right"
        case .centerLeft: "bg-center-left"
        case .centerRight: "bg-center-right"
        case .custom(let v): "bg-\(v)"
        case .arbitrary(let v): "bg-position-[\(v)]"
        }
    }
}
